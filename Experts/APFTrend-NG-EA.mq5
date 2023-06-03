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

enum e_tmode
  {
     manual = 0, // Manual mode
     auto = 1,   // Auto mode
     semi = 2    // Semi-automatic mode
  };

//--- input parameters
input group "===> Default"
input bool     allowPanel=true;      // Enable panel
input bool     show_indicator=true;  // Show Indicator
input ulong    m_magic=0025052023;   // magic number
input e_tmode  eamode=manual;        // EA mode
input group "===> SCALP"
input bool     scalpmode=true;       // Enable manual scalp
input double   spdistance=200;       // Scalp hypothetical distance
input group "===> Money management"
input int      Lots=2;
input double   takeprofit=500;     // Take profit
input double   stoploss=250;       // Stop loss
input double   fullmoney=10000;    // Monthly money (fixed / month)
input double   margin=0;           // Daily margin (0, autodetect)
input group "===> Loss Limits %"
input double   loss_op=4;          // By Operation (%)
input double   loss_day=6;         // Daily loss (%)
input double   loss_monthy=12;     // Monthly loss (%)
input group "===> INDICATOR options"
input double   stdDev1=200;        // First stdDev limit (warn)
input double   stdDev2=350;        // Second stdDev limit (critical)

#include <APFTrend-NG-Input.mqh>

#include <Controls\Dialog.mqh>
#include <Controls\Button.mqh>
#include <Controls\Label.mqh>

#define EXPERT_NAME MQL5InfoString(MQL5_PROGRAM_NAME)

// Variáveis para autotrade
CPositionInfo m_position;                   // trade position object
CTrade        m_trade;                      // trading object
CSymbolInfo   m_symbol;                     // symbol info object

// Variáveis globais
CAppDialog dlg;
CButton bbuy, bsell, bclose;

CLabel lblCurrentPrice, lblProfitOperation, lblTotalProfit;
CLabel lblLots, lblLossOp, lblLossDay, lblLossMonthy;
CLabel lblstdDev, lblMFI, lblRSI, lblslots;

bool   isWIN=true;

int    scalplots=1;
double my_margin=0;
double lossOp=0, aux_lossOp=0, lossDay=0, aux_lossDay=0, lossMonthy=0, aux_lossMonthy=0;

int hAPF=0;
double buf_APF[], buf_VWAP[], buf_MFI[], buf_RSI[], buf_stdDev[];
static int firstcalc=1;

double tp=takeprofit, sl=stoploss;
     
bool isDragging = false;
int dragOffsetX, dragOffsetY;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
    int chart_id=0;
    if (StringFind(Symbol(), "WIN", 0)<0) isWIN=false;
    else isWIN=true;

//--- Main Expert Advisor settings
    if (margin>0) my_margin=margin;
    else my_margin=AccountInfoDouble(ACCOUNT_MARGIN_FREE);

    if (AccountInfoInteger(ACCOUNT_TRADE_EXPERT)==false)
       Alert(MQL5InfoString(MQL5_PROGRAM_NAME),": auto trading disabled by server!");

    if(!TerminalInfoInteger(TERMINAL_TRADE_ALLOWED))
       Alert(MQL5InfoString(MQL5_PROGRAM_NAME),": your auto trading TERMINAL are disabled!");

    firstcalc=1;
    m_trade.SetExpertMagicNumber(m_magic);
    m_trade.SetMarginMode();
    m_trade.SetTypeFillingBySymbol(m_symbol.Name());
    //m_trade.SetDeviationInPoints(m_slippage);

//--- Define buf_APF and buf_VWAP with timeseries
    ArraySetAsSeries(buf_APF, true);
    ArraySetAsSeries(buf_VWAP, true);
    ArraySetAsSeries(buf_MFI, true);
    ArraySetAsSeries(buf_RSI, true);
    ArraySetAsSeries(buf_stdDev, true);

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

    if (scalpmode) {
       if (isWIN) scalplots=(int) (lossDay/(spdistance*0.20));
       else scalplots=(int) (lossDay/(spdistance*10));;

       sl=spdistance;
       tp=2*spdistance;
    }
    else scalplots=Lots;

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

      lblMFI.Create(chart_id, "MFI", 0, 10, 100, 380, 20);
      dlg.Add(lblMFI);
      lblRSI.Create(chart_id, "RSI", 0, 90, 100, 380, 20);
      dlg.Add(lblRSI);
      lblstdDev.Create(chart_id, "STDDEV", 0, 170, 100, 380, 20);
      dlg.Add(lblstdDev);
      lblslots.Create(chart_id, "SLOTS", 0, 10, 123, 380, 20);
      dlg.Add(lblslots);

      lblMFI.Text("MFI: 0");
      lblRSI.Text("RSI: 0");
      lblstdDev.Text("stdDev: 0");
      lblslots.Text("Scalp lots: "+Lots);
      lblMFI.Color(clrTeal);
      lblRSI.Color(clrTeal);
      lblstdDev.Color(clrTeal);

      lblslots.Text("Scalp lots: "+scalplots);
    
      lblCurrentPrice.Text("Preço atual: 0");
      lblProfitOperation.Text("Lucro na operação: 0");
      lblTotalProfit.Text("Lucro diário: 0");

      lblLots.Text("Lotes: 0");
      lblLossOp.Text("Loss Operação: "+DoubleToString(lossOp,2));
      lblLossDay.Text("Loss Diário: "+DoubleToString(lossDay,2));
      lblLossMonthy.Text("Loss Mensal: "+DoubleToString(lossMonthy,2));
      lblLossOp.Color(clrSeaGreen);
      lblLossDay.Color(clrSeaGreen);;
      lblLossMonthy.Color(clrSeaGreen);

      bbuy.Color(clrWhite);
      bbuy.ColorBackground(clrRoyalBlue);
      bbuy.FontSize(10);
      bbuy.Create(0,"Buy", 0, 10, 150, 115, 180);
      bbuy.Text("Buy");
      bbuy.Show();
      dlg.Add(bbuy);

      bclose.FontSize(10);
      bclose.ColorBackground(clrBisque);
      //bclose.Create(0,"Close", 0, 325, 150, 245, 180);
      bclose.Create(0,"Close", 0, 210, 150, 120, 180);
      bclose.Text("Close");
      bclose.Show();
      dlg.Add(bclose);

      bsell.Color(clrWhite);
      bsell.ColorBackground(clrOrangeRed);
      bsell.FontSize(10);
      //bsell.Create(0,"Sell", 0, 210, 150, 120, 180);
      bsell.Create(0,"Sell", 0, 310, 150, 215, 180);
      bsell.Text("Sell");
      bsell.Show();
      dlg.Add(bsell);

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
    //--- load buf_stdDev
    if (CopyBuffer(hAPF,11,0,2,buf_stdDev) < 0){
       Print("CopyBuffer stdDev error =",GetLastError());
    }
    //--- load buf_MFI
    if (CopyBuffer(hAPF,29,0,2,buf_RSI) < 0){
       Print("CopyBuffer MFI error =",GetLastError());
    }
    //--- load buf_RSI
    if (CopyBuffer(hAPF,30,0,2,buf_MFI) < 0){
       Print("CopyBuffer RSI error =",GetLastError());
    }

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
     if (allowPanel) {
        dlg.ChartEvent(id,lparam,dparam,sparam);

        if(id==CHARTEVENT_OBJECT_CLICK) {
           if(sparam=="Buy") {
              printf("test buy");
           }
           else if(sparam=="Close") {
              printf("test close");
           }
           else if(sparam=="Sell") {
              printf("test sell");
           }
        }
     }
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
     //double totalProfit = AccountInfoDouble(ACCOUNT_PROFIT);
     double totalProfit = 0;

     string hoje;
     HistorySelect(StringToTime(hoje+" 00:00"),TimeCurrent());

     ulong ticket=0;
     double perdaLucro=0;
     uint total=HistoryDealsTotal();

     lblCurrentPrice.Text("Preço atual: " + DoubleToString(currentPrice,2));
     lblMFI.Text("MFI: "+DoubleToString(buf_MFI[0],2));
     lblRSI.Text("RSI: "+DoubleToString(buf_RSI[0],2));
     lblstdDev.Text("stdDev: "+DoubleToString(buf_stdDev[0],2));
     if (stdDev2>0 && buf_stdDev[0]>stdDev2) lblstdDev.Color(clrRed);
     else if (stdDev1>0 && buf_stdDev[0]>stdDev1) lblstdDev.Color(clrOrange);
     else if (stdDev1>0 && buf_stdDev[0]<stdDev1/3) lblstdDev.Color(clrGray);
     else lblstdDev.Color(clrTeal);
     if (buf_MFI[0]<5 || buf_MFI[0]>95 || ((lblstdDev.Color()==clrRed || lblstdDev.Color()==clrGray) && (buf_MFI[0]<18 || buf_MFI[0]>90))) lblMFI.Color(clrRed);
     else lblMFI.Color(clrTeal);
     if (buf_RSI[0]>78) lblRSI.Color(clrRed);
     else lblRSI.Color(clrTeal);

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
       lblLots.Text("Lotes: "+DoubleToString(lotsPosition,2));
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