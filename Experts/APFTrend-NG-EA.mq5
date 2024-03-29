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
     manual,   // Manual mode
     auto,     // Auto mode
     semi      // Semi-automatic mode
  };

// Input Trailing Stop options
enum ENUM_TSTOP
  {
    ts_total,
    ts_parcial,
    ts_disabled
  };

enum ENUM_RISK
  {
    manual_risk,
    conservative_risk,
    moderate_risk,
    aggressive_risk
  };

//--- input parameters
input group "===> Default"
input bool     allowPanel=true;        // Enable panel
input bool     show_indicator=true;    // Show Indicator
input bool     show_askbid=false;      // Show ASK or BID
input ulong    m_magic=0025052023;     // Magic number
input e_tmode  eamode=manual;          // EA mode
input bool     scalpmode=true;         // Enable scalp mode
input bool     use_rlp=true;           // Use RLP
input int      maxtrades=15;           // Max trades
input int      Wait=0;                 // New position wait
input group "===> Price alarm"
input bool     alarm=true;             // Price alarm (BR)
input string   alarmlocal="10:00";     // Alarm Local
input string   alarmusa="10:30";       // Alarm USA
input group "===> Loss Limits %"
input ENUM_RISK loss_risk=manual_risk; // Risk level
input bool     risk_byalarm=false;     // Use alarm to set risk level
input double   loss_op=4;              // By Operation (%)
input double   loss_day=6;             // Daily loss (%)
input double   loss_monthy=12;         // Monthly loss (%)
input group "===> Money management"
input int      Lots=2;             // Default lots
input int      MinLots=0;          // Minimum lots
input double   takeprofit=500;     // Take profit
input double   stoploss=200;       // Stop loss
input double   fullmoney=10000;    // Monthly money (fixed / month)
input double   margin=0;           // Daily margin (0, autodetect)
input bool     faggression=true;   // Filter aggression
input double   aggresslot=0;       // Trigger aggression lot
input group "===> Trailing Stop"
input ENUM_TSTOP ts_mode=ts_disabled; // Mode
input int      ts_wait=0;             // Wait to start
input int      ts_step=75;            // Step (gain)
input int      ts_update=45;          // Update (open position)
input group "===> INDICATOR options"
input double   stdDev1=200;           // First stdDev limit (warn)
input double   stdDev2=350;           // Second stdDev limit (critical)

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
CButton    bbuy, bsell, bclose;

CLabel lblVolAggression;
CLabel lblCurrentPrice, lblProfitOperation, lblTotalProfit;
CLabel lblLots, lblLossOp, lblLossDay, lblLossMonthy;
CLabel lblstdDev, lblMFI, lblRSI, lblslots;

bool   isWIN=true;

int    totallots=1;
int    check_risk=-1;
double my_margin=0;
double lossOp=0, aux_lossOp=0, lossDay=0, aux_lossDay=0, lossMonthy=0, aux_lossMonthy=0;

int hAPF=0;
ulong sl_ticket=0;
double buf_APF[], buf_VWAP[], buf_MFI[], buf_RSI[], buf_stdDev[];
static int firstcalc=1;

bool isDragging = false;
int dragOffsetX, dragOffsetY;


// Trade controls
int ctl_parc=0, tryopen=0, openwait=0, allowtrade=0;
uint count_buy=0, count_sell=0, bars_trade=0, bars_day=0, last_candletrade=0;
int ea_lots=Lots, with_rlp=1, max_trades=maxtrades;
int dweek_now=0, dweek_last=0;
double pricewait=0;
double lotsPosition=0;
long curbook_vol=0;

double ea_tp=takeprofit, ea_sl=stoploss;
double riskOp=loss_op, riskDay=loss_day, riskMonthy=loss_monthy;
double trade_open=0, aux_trade_open=0;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
    int chart_id=0;
    if (StringFind(Symbol(), "WIN", 0)<0) isWIN=false;
    else isWIN=true;

    if(!m_symbol.Name(Symbol())) return(INIT_FAILED);

//--- Main Expert Advisor settings
    if (margin>0) my_margin=margin;
    else my_margin=AccountInfoDouble(ACCOUNT_MARGIN_FREE);

    if (AccountInfoInteger(ACCOUNT_TRADE_EXPERT)==false)
       Alert(MQL5InfoString(MQL5_PROGRAM_NAME),": auto trading disabled by server!");

    if(!TerminalInfoInteger(TERMINAL_TRADE_ALLOWED))
       Alert(MQL5InfoString(MQL5_PROGRAM_NAME),": your auto trading TERMINAL are disabled!");

    firstcalc=1;
    if (use_rlp==false) with_rlp=0;

    RefreshRates();
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
    hAPF=iCustom(_Symbol,PERIOD_CURRENT,"APFTrend-NG/APFTrend-NG.ex5",Color_Bar_Indef,Color_Bar_Up,Color_Bar_Down,applied_price,trade_mode,end_time,fail_trades,max_daytrades,max_tradeloss,max_wintradeloss,Default_Period,Period_BANDS,Period_MAFAST,true,trend_Period,trigger_Up,trigger_Down,true,pts_size,pts_maxsize,true,Debug_Sum);
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
       ChartSetInteger(0,CHART_SHOW_GRID,0,false);
       if (show_askbid) {
          ChartSetInteger(0,CHART_SHOW_ASK_LINE,0,true);
          ChartSetInteger(0,CHART_SHOW_BID_LINE,0,true);
       }
       else {
          ChartSetInteger(0,CHART_SHOW_ASK_LINE,0,false);
          ChartSetInteger(0,CHART_SHOW_BID_LINE,0,false);
       }
    }
    setRiskVol(risk_byalarm, 0);

    if (allowPanel==true) {
      // Criação do diálogo
      dlg.Create(chart_id, "Painel de Negociação", 0, 0, 20, 430, 250);

      // Criação dos rótulos de texto
      lblCurrentPrice.Create(chart_id, "Preço", 0, 10, 10, 380, 20);
      dlg.Add(lblCurrentPrice);
      lblProfitOperation.Create(chart_id, "Lucro", 0, 10, 40, 380, 20);
      dlg.Add(lblProfitOperation);
      lblTotalProfit.Create(chart_id, "Total", 0, 10, 60, 380, 20);
      dlg.Add(lblTotalProfit);
      lblVolAggression.Create(chart_id, "Agressão", 0, 10, 95, 380,20);
      dlg.Add(lblVolAggression);

      lblLots.Create(chart_id,"Lots",0,220,10,380,20);
      dlg.Add(lblLots);
      lblLossOp.Create(chart_id, "Operação", 0, 220, 30, 380, 20);
      dlg.Add(lblLossOp);
      lblLossDay.Create(chart_id, "Diário", 0, 220, 50, 380, 20);
      dlg.Add(lblLossDay);
      lblLossMonthy.Create(chart_id, "Mensal", 0, 220, 70, 380, 20);
      dlg.Add(lblLossMonthy);

      lblMFI.Create(chart_id, "MFI", 0, 10, 115, 380, 20);
      dlg.Add(lblMFI);
      lblRSI.Create(chart_id, "RSI", 0, 90, 115, 380, 20);
      dlg.Add(lblRSI);
      lblstdDev.Create(chart_id, "STDDEV", 0, 170, 115, 380, 20);
      dlg.Add(lblstdDev);
      lblslots.Create(chart_id, "SLOTS", 0, 10, 140, 380, 20);
      dlg.Add(lblslots);

      lblVolAggression.Text("Agressao/Volume: 0 => 0 / 0");
      lblMFI.Text("MFI: 0");
      lblRSI.Text("RSI: 0");
      lblstdDev.Text("stdDev: 0");
      lblVolAggression.Color(clrTeal);
      lblMFI.Color(clrTeal);
      lblRSI.Color(clrTeal);
      lblstdDev.Color(clrTeal);
    
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
      bbuy.Create(0,"Buy", 0, 10, 160, 115, 190);
      bbuy.Text("Buy");
      bbuy.Show();
      dlg.Add(bbuy);

      bclose.FontSize(10);
      bclose.ColorBackground(clrBisque);
      //bclose.Create(0,"Close", 0, 325, 150, 245, 180);
      bclose.Create(0,"Close", 0, 210, 160, 120, 190);
      bclose.Text("Close");
      bclose.Show();
      dlg.Add(bclose);

      bsell.Color(clrWhite);
      bsell.ColorBackground(clrOrangeRed);
      bsell.FontSize(10);
      //bsell.Create(0,"Sell", 0, 210, 150, 120, 180);
      bsell.Create(0,"Sell", 0, 310, 160, 215, 190);
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
    ArrayFree(buf_APF);
    ArrayFree(buf_MFI);
    ArrayFree(buf_RSI);
    ArrayFree(buf_VWAP);
    ArrayFree(buf_stdDev);
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
    int elapsed_time=0;
    static int fix_pts=1, t_lock=1;
    //uint find_week=1;

    if (StringFind(Symbol(), "WDO", 0)<0) {
       //isDolar=false;
       fix_pts=10;
    }
    else fix_pts=1;

    bool IsNewBar=false;
    static datetime Old_Time;
    datetime New_Time[1];
    MqlDateTime date_candle;
    TimeToStruct(TimeCurrent(),date_candle);

    CalculateAllPositions();
    allowtrade=-1;

    // copying the last bar time to the element New_Time[0]
    if (CopyTime(Symbol(),PERIOD_CURRENT,0,1,New_Time)>0) {
       TimeToStruct(New_Time[0],date_candle);
       dweek_now=date_candle.day;
       elapsed_time=(int) (TimeCurrent()-New_Time[0]);
       if (dweek_now != dweek_last) {
          bars_day=0;
          bars_trade=0;
          max_trades=0;

          pricewait=0;
          trade_open=0;
          dweek_last=dweek_now;
       }
       if (Old_Time!=New_Time[0]) {
          tryopen=0;
          if (count_buy>0 || count_sell>0) bars_trade++;
       
          bars_day++;
          last_candletrade=0;
          Old_Time=New_Time[0];
       }
    }

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
    if (max_trades<1) { 
//       Print(MQL5InfoString(MQL5_PROGRAM_NAME),": internal max_trades exceeded! (", maxtrades,")");
//       return;
     }


    // Get or close trade positions
    int signal=GetSignal();

    int refresh_signal=0;
    MqlRates rates[];
    ArraySetAsSeries(rates, true);
    if (RefreshRates() && CopyRates(m_symbol.Name(),PERIOD_CURRENT,0,2,rates)>-1) {
       refresh_signal=1;
       if (!pricewait) pricewait=rates[0].close;
    }

    if (signal<1 && eamode!=manual && (count_buy>0 || count_sell>0)) {
       t_lock=1;
       close_positions();
       CalculateAllPositions();
       signal=GetSignal();
       t_lock=0;
    }

    allowtrade=-1;
    if (signal>0) {
       if (eamode==auto) {
          if (count_buy==0 && count_sell==0) {
             allowtrade=0;
             if (signal==1 && curbook_vol>1) allowtrade=1;
             else if (signal==2 && curbook_vol<-1) allowtrade=2;
          }
       }
       //else allowtrade=signal;

       if (Wait>0 && openwait==1 && elapsed_time>Wait && count_buy<1 && count_sell<1) {
          if (signal==1 && rates[0].close>pricewait && rates[0].close-rates[0].open>0.5*fix_pts) openwait=2;
          else if (signal==2 && rates[0].close<pricewait && rates[0].open-rates[0].close>0.5*fix_pts) openwait=2;
       }
    }

    if (allowtrade>0 && (eamode==auto || (eamode==semi && lotsPosition<1))) {
       if (count_buy==0 && signal==1 && allowtrade==1) {
          // Buy - LONG position
          t_lock=LongPos(signal, t_lock, 0);
          allowtrade=-1;
          return;
       }
       else if (count_sell==0 && signal==2 && allowtrade==2) {
          // Sell - SHORT position
          t_lock=ShortPos(signal, t_lock, 0);
          allowtrade=-1;
          return;
       }
    }
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

        if (id==CHARTEVENT_OBJECT_CLICK) {
           int signal=GetSignal();

           RefreshRates();
           if(sparam=="Buy") {
              printf("Trying buy position (LONG)...");
              if (lotsPosition==0 || lotsPosition+ea_lots<=totallots) {
                 allowtrade=1;
                 if (eamode==semi && count_buy<1) {
                    if (signal==1 && allowtrade==1) LongPos(1, 1, 1);
                    else printf("SEMI MODE WARNING: No valid signal for LONG position...");
                 }
                 else if (allowtrade==1) OpenBuy(m_symbol.Ask()-ea_sl,m_symbol.Ask()+ea_tp,ea_lots,lotsPosition);
                 else printf("INFO: Trade ignored by aggression filter!");
              }
              else printf("ERROR: Total number of lots reached");
           }
           else if(sparam=="Close") {
              printf("Close position");
              close_positions();
              allowtrade=-1;
           }
           else if(sparam=="Sell") {
              printf("Trying a sell position (SHORT)...");
              if (lotsPosition==0 || lotsPosition+ea_lots<=totallots) {
                 allowtrade=2;
                 if (eamode==semi && count_sell<1) {
                    if (signal==2 && allowtrade==2) ShortPos(2, 1, 1); 
                    else printf("SEMI MODE WARNING: No valid signal for SHORT position...");
                 }
                 else if (allowtrade==2) OpenSell(m_symbol.Bid()+ea_sl,m_symbol.Bid()-ea_tp,ea_lots,lotsPosition);
                 else printf("INFO: Trade ignored by aggression filter!");
              }
              else printf("ERROR: Total number of lots reached");
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

     MqlDateTime date_candle;
     TimeToStruct(TimeCurrent(),date_candle);

     // Obtenção das informações de mercado
     double currentPrice = SymbolInfoDouble(_Symbol, SYMBOL_BID);
     double profitOperation = PositionGetDouble(POSITION_PROFIT);
     lotsPosition = PositionGetDouble(POSITION_VOLUME);
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
     if (alarm) {
        datetime tm=TimeCurrent();
        string tm_curr=TimeToString(tm,TIME_MINUTES);
        datetime al_curr=StringToTime(tm_curr), al_local=StringToTime(alarmlocal), al_usa=StringToTime(alarmusa);

        if (al_curr<al_local) {
           if (al_curr-StringToTime("0:0")>=al_local-StringToTime("0:10") && al_curr+StringToTime("0:0")<=al_local+StringToTime("0:10")) {
             if (risk_byalarm && check_risk!=1) setRiskVol(risk_byalarm, 1);
             lblCurrentPrice.Color(clrRed);
           }
           else {
             if (risk_byalarm && check_risk!=0) setRiskVol(risk_byalarm, 0);
             lblCurrentPrice.Color(clrOrange);
           }
        }
        else if (al_curr+StringToTime("0:0")<=al_usa+StringToTime("0:10")) {
           if (al_curr-StringToTime("0:0")>=al_usa-StringToTime("0:10") && al_curr+StringToTime("0:0")<=al_usa+StringToTime("0:10")) {
              if (risk_byalarm && check_risk!=1) setRiskVol(risk_byalarm, 1);
              lblCurrentPrice.Color(clrRed);
           }
           else if (al_curr-StringToTime("0:0")>=al_local-StringToTime("0:10") && al_curr+StringToTime("0:0")<=al_local+StringToTime("0:10")) {
              if (risk_byalarm && check_risk!=1) setRiskVol(risk_byalarm, 1);
              lblCurrentPrice.Color(clrRed);
           }
           else {
              if (risk_byalarm && check_risk!=0) setRiskVol(risk_byalarm, 0);
              lblCurrentPrice.Color(clrBlack);
           }
        }
        else {
           if (risk_byalarm && check_risk!=0) setRiskVol(risk_byalarm, 0);
           lblCurrentPrice.Color(clrBlack);
        }
     }
     else {
        if (risk_byalarm && check_risk!=0) setRiskVol(risk_byalarm, 0);
        lblCurrentPrice.Color(clrBlack);
     }

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

//+------------------------------------------------------------------+
//| Calculate all positions Buy and Sell                             |
//+------------------------------------------------------------------+
void CalculateAllPositions()
  {
   uint auxcount_buy=0;
   uint auxcount_sell=0;

   for(int i=PositionsTotal()-1;i>=0;i--)
      if(m_position.SelectByIndex(i)) // selects the position by index for further access to its properties
         if(m_position.Symbol()==m_symbol.Name() && m_position.Magic()==m_magic) {
            if(m_position.PositionType()==POSITION_TYPE_BUY) auxcount_buy++;
            if(m_position.PositionType()==POSITION_TYPE_SELL) auxcount_sell++;
         }

   count_buy=auxcount_buy;
   count_sell=auxcount_sell;
   return;
  }

/*
//+------------------------------------------------------------------+
//| Check the correctness of the position volume                     |
//+------------------------------------------------------------------+
bool CheckVolumeValue(double volume,string &error_description) {
//--- minimal allowed volume for trade operations
   double min_volume=m_symbol.LotsMin();
   if(volume<min_volume) {
      error_description=StringFormat("Volume is less than the minimal allowed SYMBOL_VOLUME_MIN=%.2f",min_volume);
      return(false);
   }
//--- maximal allowed volume of trade operations
   double max_volume=m_symbol.LotsMax();
   if(volume>max_volume) {
      error_description=StringFormat("Volume is greater than the maximal allowed SYMBOL_VOLUME_MAX=%.2f",max_volume);
      return(false);
   }
//--- get minimal step of volume changing
   double volume_step=m_symbol.LotsStep();
   int ratio=(int)MathRound(volume/volume_step);
   if(MathAbs(ratio*volume_step-volume)>0.0000001) {
      error_description=StringFormat("Volume is not a multiple of the minimal step SYMBOL_VOLUME_STEP=%.2f, the closest correct volume is %.2f",
                                     volume_step,ratio*volume_step);
      return(false);
   }
   error_description="Correct volume value";
   return(true);
  }
*/

//+------------------------------------------------------------------+
//| GetSignal                                                        |
//+------------------------------------------------------------------+
int GetSignal()
  {      
      //--- load buf_color_line
      if (CopyBuffer(hAPF,4,0,3,buf_APF) < 0){
         Print("CopyBuffer APF error =",GetLastError());
         return(0);
      }
      else if (Wait>0 && !buf_APF[0]) openwait=1;

      int vSignal=0;
      if (buf_APF[0]>0) {
         if ((buf_APF[0]==1 && buf_APF[1]==0) || ((count_buy>0 || (Wait>0 && openwait==1)) && buf_APF[0]==1 && buf_APF[1]==1)) {
            vSignal=1;
         }
         else if ((buf_APF[0]==2 && buf_APF[1]==0) || ((count_sell>0 || (Wait>0 && openwait==1)) && buf_APF[0]==2 && buf_APF[1]==2)) {
               vSignal=2;
         }
      }
      if (buf_APF[1]==0 && buf_APF[2]==1 && count_buy>0) vSignal=0;
      else if (buf_APF[1]==0 && buf_APF[2]==2 && count_sell>0) vSignal=0;

      return (vSignal);
  }

// * Code for Trade Control: https://www.mql5.com/pt/code/21499 *
//+------------------------------------------------------------------+
//| Refreshes the symbol quotes data                                 |
//+------------------------------------------------------------------+
bool RefreshRates(void)
  {
//--- refresh rates
   if(!m_symbol.RefreshRates()) {
      Print("RefreshRates error");
      return(false);
   }
//--- protection against the return value of "zero"
   if(m_symbol.Ask()==0 || m_symbol.Bid()==0) return(false);
//---
   return(true);
  }

//+------------------------------------------------------------------+
//| Update partial Trailing-Stop                                     |
//+------------------------------------------------------------------+
ulong slUpdate(int trade_dir, ulong cur_ticket, double sl, double MaxLots)
  {
     if (ts_mode==ts_parcial && sl>0 && MaxLots>0 && (cur_ticket==0 || (cur_ticket>0 && m_trade.OrderDelete(cur_ticket)))) {
        double updLots=1;
        if (MaxLots>1 && MaxLots-MinLots>0) updLots=MaxLots-MinLots;
        if (trade_dir==1) {
           if (cur_ticket==0) m_trade.OrderOpen(m_symbol.Name(),ORDER_TYPE_SELL_STOP,updLots,sl-5,sl-50,0,0,ORDER_TIME_DAY,0,NULL);
           else m_trade.OrderOpen(m_symbol.Name(),ORDER_TYPE_SELL_STOP,updLots,sl-50,sl-5,0,0,ORDER_TIME_DAY,0,NULL);
           cur_ticket=m_trade.ResultOrder();
        }
        else if (trade_dir==2) {
           if (cur_ticket==0) m_trade.OrderOpen(m_symbol.Name(),ORDER_TYPE_BUY_STOP,updLots,sl+5,sl+50,0,0,ORDER_TIME_DAY,0,NULL);
           else m_trade.OrderOpen(m_symbol.Name(),ORDER_TYPE_BUY_STOP,updLots,sl+50,sl+5,0,0,ORDER_TIME_DAY,0,NULL);
           cur_ticket=m_trade.ResultOrder();
        }
     }
     return cur_ticket;
  }

//+------------------------------------------------------------------+
//| This is a Olympic trade permission check                         |
//+------------------------------------------------------------------+
bool chk_perm(void)
  {
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      ulong ticket = OrderGetTicket(i);
      if(!OrderSelect(ticket))
         continue;

      if((ulong)OrderGetInteger(ORDER_MAGIC) != m_magic)
         continue;

      if(OrderGetString(ORDER_SYMBOL) != _Symbol)
         continue;

      ENUM_ORDER_TYPE type = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);
      if(type == ORDER_TYPE_BUY || type == ORDER_TYPE_SELL || type == SYMBOL_ORDER_CLOSEBY)
         return false;
     }

   return true;
  }

//+------------------------------------------------------------------+
//| Open Buy position                                                |
//+------------------------------------------------------------------+
int OpenBuy(double sl,double tp,int aux_Lots, double pos_Lots)
  {
   sl=m_symbol.NormalizePrice(sl);
   tp=m_symbol.NormalizePrice(tp);

   if (!scalpmode && Lots<2) {
      aux_Lots=MinLots;
      if (aux_Lots<2) ctl_parc=0;
   }
   if (aux_Lots<1) {
      Print("Cant PositionOpen() BUY method - Lots < 1");
      return(0);
   }

//--- check volume before OrderSend to avoid "not enough money" error (CTrade)
   double check_volume_lot=m_trade.CheckVolume(m_symbol.Name(),aux_Lots,m_symbol.Ask(),ORDER_TYPE_BUY);

   if (eamode==auto) {
      if (count_buy>0 || count_sell>0) return(0);
   }
   else {
      if (count_buy>0) {
         if (aux_Lots<2 || MinLots<=0) aux_Lots=2;
         else aux_Lots=MinLots;
      }
      else if (count_sell>0) {
         aux_Lots=(int) pos_Lots/2;
         if (pos_Lots>0 && pos_Lots<2) aux_Lots=1;
      }
   }
   
   if(check_volume_lot!=0.0 || with_rlp) {
      count_buy++;
      if(m_trade.PositionOpen(m_symbol.Name(),ORDER_TYPE_BUY,aux_Lots,m_symbol.Ask(),sl,tp,"LONG")) {
         max_trades--;
         Print("PositionOpen() BUY method executed SUCCESSFULLY. Return code=",m_trade.ResultRetcode(),
               " (",m_trade.ResultRetcodeDescription(),")");
         PrintResultTrade(m_trade,m_symbol);

         trade_open=m_trade.ResultPrice();
         allowtrade=-1;

//         if (ts_mode==ts_parcial && Lots>MinLots) sl_ticket=slUpdate(1, 0, sl, Lots);
         return(1);
      }
      else {
         Print("PositionOpen() BUY method FAILED. Return code=",m_trade.ResultRetcode(),
               ". Descrição do código: ",m_trade.ResultRetcodeDescription());
         PrintResultTrade(m_trade,m_symbol);
      }
   }
   else {
      Print(__FUNCTION__,", ERROR: method CheckVolume returned the value of \"0.0\"");
   }
   CalculateAllPositions();
   return(0);
//---
  }

//+------------------------------------------------------------------+
//| Open Long position                                               |
//+------------------------------------------------------------------+
int LongPos(int signal, int t_lock, int stype)
  {
    if (count_buy==0 && signal==1 && (stype==1 || (last_candletrade<bars_day && (Wait<1 || (Wait>0 && openwait==2))))) {
       // Buy - LONG position
       tryopen=0;
       bars_trade=0;
       trade_open=0;

       m_symbol.RefreshRates();
       double sl=(stoploss==0)?0.0:m_symbol.Ask()-stoploss;
       if (sl>=m_symbol.Bid() && sl>0) return 0;

       if (!t_lock) {
          t_lock=1;
          double m_open=m_symbol.Ask();
          double tp=(takeprofit==0)?0.0:m_open+takeprofit;

          if (chk_perm())
             if (OpenBuy(sl,tp,ea_lots,lotsPosition)) {
                openwait=0;
                bars_trade=1;
                last_candletrade=bars_day;
                if (trade_open==0.0)
                   if (PositionSelect(_Symbol)) trade_open=PositionGetDouble(POSITION_PRICE_OPEN);
             }
       }
       t_lock=0;
       return t_lock;
    }
    return t_lock;
  }

//+------------------------------------------------------------------+
//| Open Sell position                                               |
//+------------------------------------------------------------------+
int OpenSell(double sl,double tp,int aux_Lots, double pos_Lots)
  {
   sl=m_symbol.NormalizePrice(sl);
   tp=m_symbol.NormalizePrice(tp);

   if (!scalpmode && Lots<2) {
      aux_Lots=MinLots;
      if (aux_Lots<2) ctl_parc=0;
   }
   if (aux_Lots<1) {
      Print("Cant PositionOpen() SELL method - Lots < 1");
      return(0);
   }

//--- check volume before OrderSend to avoid "not enough money" error (CTrade)
   double check_volume_lot=m_trade.CheckVolume(m_symbol.Name(),aux_Lots,m_symbol.Bid(),ORDER_TYPE_SELL);

   if (eamode==auto) {
      if (count_buy>0 || count_sell>0) return(0);
   }
   else {
      if (count_sell>0) {
         if (aux_Lots<2 || MinLots<=0) aux_Lots=2;
         else aux_Lots=MinLots;
      }
      else if (count_buy>0) {
         aux_Lots=(int) pos_Lots/2;
         if (pos_Lots>0 && pos_Lots<2) aux_Lots=1;
      }
   }

   if(check_volume_lot!=0.0 || with_rlp) {
      count_sell++;
      if(m_trade.PositionOpen(m_symbol.Name(),ORDER_TYPE_SELL,aux_Lots,m_symbol.Bid(),sl,tp,"SHORT")) {
         max_trades--;
         Print("PositionOpen() SELL method executed SUCCESSFULLY. Return code=",m_trade.ResultRetcode(),
               " (",m_trade.ResultRetcodeDescription(),")");
         PrintResultTrade(m_trade,m_symbol);

         trade_open=m_trade.ResultPrice();
         allowtrade=-1;

//         if (ts_mode==ts_parcial && Lots>MinLots) sl_ticket=slUpdate(2, 0, sl, Lots);
         return(1);
      }
      else {
         Print("PositionOpen() SELL method FAILED. Return code=",m_trade.ResultRetcode(),
               ". Descrição do código: ",m_trade.ResultRetcodeDescription());
         PrintResultTrade(m_trade,m_symbol);
      }
   }
   else {
      Print(__FUNCTION__,", ERROR: method CheckVolume returned the value of \"0.0\"");
   }
   CalculateAllPositions();
   return(0);
//---
  }

//+------------------------------------------------------------------+
//| Open Short position                                              |
//+------------------------------------------------------------------+
int ShortPos(int signal, int t_lock, int stype)
  {
    if (count_sell==0 && signal==2 && (stype==1 || (last_candletrade<bars_day && (Wait<1 || (Wait>0 && openwait==2))))) {
       // Sell - SHORT position
       tryopen=0;
       bars_trade=0;
       trade_open=0;

       m_symbol.RefreshRates();
       double sl=(stoploss==0)?0.0:m_symbol.Bid()+stoploss;
       if (sl<=m_symbol.Ask() && sl>0) return 0;

       if (!t_lock) {
          t_lock=1;
          double m_open=m_symbol.Bid();
          double tp=(takeprofit==0)?0.0:m_open-takeprofit;

          if (chk_perm())
             if (OpenSell(sl,tp,ea_lots,lotsPosition)) {
                openwait=0;
                bars_trade=1;
                last_candletrade=bars_day;

                if (trade_open==0.0)
                   if (PositionSelect(_Symbol)) trade_open=PositionGetDouble(POSITION_PRICE_OPEN);
             }
       }
       t_lock=0;
       return t_lock;
    }
    return t_lock;
  }

//+------------------------------------------------------------------+
//| Close Partial positions                                          |
//+------------------------------------------------------------------+
void ClosePartial(string symbol, double lots, const ulong ticket)
  {
      MqlTradeRequest request={};
      MqlTradeResult  result={};
      request.action   =TRADE_ACTION_DEAL;
      request.position =ticket;
      request.symbol   =symbol;
      request.volume   =lots;
      request.deviation=10;
      double price=0;
      if (count_buy>0) {
         request.type=ORDER_TYPE_SELL;
         request.price=SymbolInfoDouble(symbol,SYMBOL_BID);
      }
      else if (count_sell>0) {
         request.type=ORDER_TYPE_BUY;
         request.price=SymbolInfoDouble(symbol,SYMBOL_ASK);
      }
      request.magic=m_magic;
      if(!OrderSend(request,result))
         Alert("OrderSend error "+(string)GetLastError());
      else
         Alert("Success");
  }

//+------------------------------------------------------------------+
//| Close EA positions                                               |
//+------------------------------------------------------------------+
void close_positions()
  {
   for(int i=PositionsTotal()-1; i>=0; i--)
     {
//       ulong ticket = PositionGetTicket(i);
//       if(!PositionSelectByTicket(ticket))
//          continue;

       if(m_position.SelectByIndex(i))
          if(m_position.Symbol()==Symbol() && m_position.Magic()==m_magic)
             m_trade.PositionClose(m_position.Ticket());
     }
     CalculateAllPositions();
  }
//---

void setRiskVol(bool risk_alarm, int setalarm)
  {
    check_risk=setalarm;
    if ((loss_risk==conservative_risk && risk_alarm==false) || (setalarm && risk_alarm)) {
       riskOp=1.4;
       if (risk_alarm) {
          riskDay=6;
          riskMonthy=12;
       }
       else {
          riskDay=2.8;
          riskMonthy=6;
       }
    }
    else if ((loss_risk==moderate_risk && risk_alarm==false) || (!setalarm && risk_alarm)) {
       riskOp=3.2;
       riskDay=6;
       riskMonthy=12;
    }
    else if (loss_risk==aggressive_risk) {
       riskOp=8;
       riskDay=14;
       riskMonthy=25;
    }
    else {
       riskOp=loss_op;
       riskDay=loss_day;
       riskMonthy=loss_monthy;
    }

    if (margin>0) {
       lossOp=margin*(riskOp/100);
       lossDay=margin*(riskDay/100);
    }
    else {
       lossOp=my_margin*(riskOp/100);
       lossDay=my_margin*(riskDay/100);
    }
    lossMonthy=fullmoney*(riskMonthy/100);

    aux_lossOp=lossOp;
    aux_lossDay=lossDay;
    aux_lossMonthy=lossMonthy;

    if (isWIN) totallots=(int) (lossOp/(stoploss*0.20));
    else totallots=(int) (lossOp/(stoploss*10));

    ea_sl=stoploss;
    if (totallots<1) totallots=1;

    if (scalpmode) {
       ea_tp=1.5*stoploss;
       ea_lots=totallots;
    }
    else ea_lots=Lots;

    if (ea_lots<MinLots) ea_lots=MinLots;

    lblslots.Text("Scalp lots: "+(string)ea_lots+" / "+(string)totallots);
    if (totallots<ea_lots) lblslots.Color(clrRed);
    else lblslots.Color(clrBlack);
  }
//---

//+------------------------------------------------------------------+
//| Print CTrade result                                              |
//+------------------------------------------------------------------+
void PrintResultTrade(CTrade &trade,CSymbolInfo &symbol)
  {
    Print("File: ",__FILE__,", symbol: ",m_symbol.Name());
    Print("Code of request result: "+IntegerToString(trade.ResultRetcode()));
    Print("code of request result as a string: "+trade.ResultRetcodeDescription());
    Print("Deal ticket: "+IntegerToString(trade.ResultDeal()));
    Print("Order ticket: "+IntegerToString(trade.ResultOrder()));
    Print("Volume of deal or order: "+DoubleToString(trade.ResultVolume(),2));
    Print("Price, confirmed by broker: "+DoubleToString(trade.ResultPrice(),symbol.Digits()));
    //Print("Price, confirmed by broker: "+DoubleToString(PositionGetDouble(POSITION_PRICE_OPEN),symbol.Digits()));
    Print("Current bid price: "+DoubleToString(symbol.Bid(),symbol.Digits())+" (the requote): "+DoubleToString(trade.ResultBid(),symbol.Digits()));
    Print("Current ask price: "+DoubleToString(symbol.Ask(),symbol.Digits())+" (the requote): "+DoubleToString(trade.ResultAsk(),symbol.Digits()));
    Print("Broker comment: "+trade.ResultComment());
  }
//---