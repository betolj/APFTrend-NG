//+------------------------------------------------------------------+
//|                                               APFTrend-NG-EA.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

#include <Trade\PositionInfo.mqh>
#include <Trade\Trade.mqh>
#include <Trade\SymbolInfo.mqh>

//--- input parameters
input group "Default"
input bool     allowPanel=true;      // Enable panel
input bool     show_indicator=true;  // Show Indicator
input ulong    m_magic=0025052023;   // magic number
input group "Money management"
input int      Lots;
input double   fullmoney=10000;    // Dinheiro para o mês (fixar p/ 1 mês)
input double   margin=0;           // Defina a margem diária (0, detecta)
input group "Loss Limits"
input double   loss_op=4;          // Perda por Operação (%)
input double   loss_day=6;         // Perda Diária (%)
input double   loss_monthy=12;     // Perda mensal (%)
input group "Indicator options"

#include <APFTrend-NG-Input.mqh>

#include <Controls\Dialog.mqh>
#include <Controls\Label.mqh>

#define EXPERT_NAME MQL5InfoString(MQL5_PROGRAM_NAME)

// Variáveis para autotrade
CPositionInfo m_position;                   // trade position object
CTrade        m_trade;                      // trading object
CSymbolInfo   m_symbol;                     // symbol info object

// Variáveis globais
CAppDialog dlg;
CLabel lblCurrentPrice;
CLabel lblProfitOperation;
CLabel lblTotalProfit;

CLabel lblLots;
CLabel lblLossOp;
CLabel lblLossDay;
CLabel lblLossMonthy;

double lossOp=0, aux_lossOp=0, lossDay=0, aux_lossDay=0, lossMonthy=0, aux_lossMonthy=0;
double my_margin=0;

int hAPF=0;
double buf_APF[], buf_VWAP[];
static int firstcalc=1;
     
bool isDragging = false;
int dragOffsetX, dragOffsetY;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
    int chart_id=0;
//--- Main Expert Advisor settings
    if (margin>0) my_margin=margin;
    else my_margin=AccountInfoDouble(ACCOUNT_MARGIN_FREE);

    if (AccountInfoInteger(ACCOUNT_TRADE_EXPERT)==false)
       Alert(MQL5InfoString(MQL5_PROGRAM_NAME),": auto trading disabled by server!");

    firstcalc=1;
    m_trade.SetExpertMagicNumber(m_magic);
    m_trade.SetMarginMode();
    m_trade.SetTypeFillingBySymbol(m_symbol.Name());
    //m_trade.SetDeviationInPoints(m_slippage);

//--- Define buf_APF and buf_VWAP with timeseries
    ArraySetAsSeries(buf_APF, true);
    ArraySetAsSeries(buf_VWAP, true);

//--- Handle for APFTrend-Plus
    hAPF=iCustom(_Symbol,PERIOD_CURRENT,"APFTrend-NG/APFTrend-NG.ex5",Color_Bar_Indef,Color_Bar_Up,Color_Bar_Down,applied_price,continue_trade,trade_mode,end_time,fail_trades,max_daytrades,max_tradeloss,max_wintradeloss,Default_Period,Period_BANDS,Period_MAFAST,true,trend_Period,trigger_Up,trigger_Down,true,pts_size,pts_maxsize,true,Debug_Sum);
    if (hAPF==INVALID_HANDLE) {
        PrintFormat("Failed to create handle of the APFTend-NG indicator for the symbol %s, error code %d",
                    "APFTrend-NG", GetLastError());
        //return(INIT_FAILED);
    }
    else {
       if (show_indicator) {
          ChartIndicatorDelete(ChartID(),0,"APFTrend-NG1.0");
          ChartIndicatorAdd(ChartID(),0,hAPF);
       }
    }

    if (allowPanel==true) {
      // Criação do diálogo
      dlg.Create(chart_id, "Painel de Negociação", 0, 0, 30, 430, 250);

      // Criação dos rótulos de texto
      lblCurrentPrice.Create(chart_id, "Preço", 0, 10, 10, 380, 20);
      dlg.Add(lblCurrentPrice);
      lblProfitOperation.Create(chart_id, "Lucro", 0, 10, 40, 380, 20);
      dlg.Add(lblProfitOperation);
      lblTotalProfit.Create(chart_id, "Total", 0, 10, 60, 380, 20);
      dlg.Add(lblTotalProfit);

      lblLots.Create(chart_id,"Lots",0,220,10,380,20);
      dlg.Add(lblLots);
      lblLossOp.Create(chart_id, "Operação", 0, 220, 30, 380, 20);
      dlg.Add(lblLossOp);
      lblLossDay.Create(chart_id, "Diário", 0, 220, 50, 380, 20);
      dlg.Add(lblLossDay);
      lblLossMonthy.Create(chart_id, "Mensal", 0, 220, 70, 380, 20);
      dlg.Add(lblLossMonthy);

      lblCurrentPrice.Text("Preço atual: 0");
      lblProfitOperation.Text("Lucro na operação: 0");
      lblTotalProfit.Text("Lucro diário: 0");

      if (margin>0) {
         lossOp=margin*(loss_op/100);
         lossDay=margin*(loss_day/100);
      }
      else {
         lossOp=my_margin*(loss_op/100);
         lossDay=my_margin*(loss_day/100);
      }
      lossMonthy=fullmoney*(loss_monthy/100);
      aux_lossOp=lossOp;
      aux_lossDay=lossDay;
      aux_lossMonthy=lossMonthy;
      lblLossOp.Text("Loss Operação: "+DoubleToString(lossOp,2));
      lblLossDay.Text("Loss Diário: "+DoubleToString(lossDay,2));
      lblLossMonthy.Text("Loss Mensal: "+DoubleToString(lossMonthy,2));
      lblLossOp.Color(clrSeaGreen);
      lblLossDay.Color(clrSeaGreen);;
      lblLossMonthy.Color(clrSeaGreen);

      dlg.Run();
    }
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
    // Remove panel
    dlg.Destroy(1);

    //Release the APFTrend indicator
    IndicatorRelease(hAPF);
    ChartIndicatorDelete(ChartID(),0,"APFTrend-NG1.0");
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
    if (allowPanel) ShowPanel();
//---
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
     if (allowPanel) dlg.ChartEvent(id,lparam,dparam,sparam);
  }
  
//+------------------------------------------------------------------+
//| Show trade panel                                                |
//+------------------------------------------------------------------+
void ShowPanel()
  {
     bool pos_open=PositionSelect(_Symbol);

     // Obtenção das informações de mercado
     double currentPrice = SymbolInfoDouble(_Symbol, SYMBOL_BID);
     double profitOperation = PositionGetDouble(POSITION_PROFIT);
     double lotsPosition = PositionGetDouble(POSITION_VOLUME);
     double totalProfit = AccountInfoDouble(ACCOUNT_PROFIT);

     string hoje;
     HistorySelect(StringToTime(hoje+" 00:00"),TimeCurrent());

     ulong ticket=0;
     double perdaLucro=0;
     uint total=HistoryDealsTotal();

     lblCurrentPrice.Text("Preço atual: " + DoubleToString(currentPrice, 2));
     if (pos_open || firstcalc || (pos_open==false && lblProfitOperation.Color()==clrRed)) {
        firstcalc=0;
        for(uint i=0;i<total;i++) {
          if((ticket=HistoryDealGetTicket(i))>0) {
             totalProfit=HistoryDealGetDouble(ticket,DEAL_PROFIT);
             perdaLucro=perdaLucro+totalProfit;
          }
       }
       totalProfit=perdaLucro;

       lblProfitOperation.Text("Lucro na operação: " + DoubleToString(profitOperation, 2));
       if (profitOperation==0) lblProfitOperation.Color(clrGray);
       else if (profitOperation>0) lblProfitOperation.Color(clrGreen);
       else lblProfitOperation.Color(clrRed);

       totalProfit+=profitOperation;
       lblTotalProfit.Text("Lucro diário: " + DoubleToString(totalProfit, 2));
       if (totalProfit==0) lblTotalProfit.Color(clrGray);
       else if (totalProfit>0) lblTotalProfit.Color(clrGreen);
       else lblTotalProfit.Color(clrRed);


       lossOp=aux_lossOp+profitOperation;
       lossDay=aux_lossDay+totalProfit;
       lossMonthy=aux_lossMonthy+totalProfit;
       lblLots.Text("Lots: "+DoubleToString(lotsPosition,2));
       lblLossOp.Text("Loss Operação: "+DoubleToString(lossOp,2));
       lblLossDay.Text("Loss Diário: "+DoubleToString(lossDay,2));
       lblLossMonthy.Text("Loss Mensal: "+DoubleToString(lossMonthy,2));

       if (lossOp>aux_lossOp/2) {
          if (lossOp<aux_lossOp) lblLossOp.Color(clrOrange);
          else lblLossOp.Color(clrSeaGreen);
       }
       else lblLossOp.Color(clrBrown);
       if (lossDay>aux_lossDay/2) {
          if (lossDay<aux_lossDay) lblLossDay.Color(clrOrange);
          else lblLossDay.Color(clrSeaGreen);
       }
       else {
         lblLossDay.Color(clrBrown);
         lblLossOp.Color(clrBrown);
       }
       if (lossMonthy>aux_lossMonthy/2) {
          if (lossMonthy<aux_lossMonthy) lblLossMonthy.Color(clrOrange);
          else lblLossMonthy.Color(clrSeaGreen);
       }
       else {
          lblLossMonthy.Color(clrBrown);
          lblLossDay.Color(clrBrown);
          lblLossOp.Color(clrBrown);
       }
    }
  }