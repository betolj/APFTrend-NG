//+---------------------------------------------------------------------+
//|                                                     APFTrend-NG.mq5 |
//|                                Copyright 2023, Aprendiz Financeiro. |
//|                                   https://aprendizfinanceiro.com.br |
//+---------------------------------------------------------------------+
#property copyright "Copyright 2023, Aprendiz Financeiro"
#property link      "http://aprendizfinanceiro.com.br"
#property version   "1.0"
#property description "Trata-se de um projeto *pessoal e experimental*, desenvolvido para"
#property description "auxiliar na leitura do fluxo do mercado (mais especificamente WDO e"
#property description "WIN). Não há garantias de lucro. Portanto, todo risco envolvido é"
#property description "de inteira e total responsabilidade do investidor."
#property description "                                                                 "
#property description "Este software é de uso pessoal, sendo estritamente proibida sua"
#property description "comecialização ou distribuição a terceiros sem a devida autorização."

#property indicator_buffers 34

#property indicator_label1 "Open;High;Low;Close"

#property indicator_plots 4                     //Number of graphic plots
#property indicator_type1 DRAW_COLOR_CANDLES    //Drawing style color candles
#property indicator_width1 3                    //Width of the graphic plot

#property indicator_type2  DRAW_LINE
#property indicator_color2 clrRoyalBlue
#property indicator_style2 STYLE_SOLID
#property indicator_width2 2

#include <APFTrend-NG-Input.mqh>
#include <APFTrend-NG-Base.mqh>

#import "APFTrend-NG-autotrade.ex5"
   int getSignal(const int type, const int idx, const int i, const datetime &time[],
          const long &tick_volume[], const double &high[], const double &open[], const double &close[], const double &low[],
          const double &VWAP[], const double &HILO[], const double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[], const double &CCI[], const double &LR[], const double &Force[],
          const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[], const double &miBand2[], const double &upBand2[], const double &loBand2[], const double &ADX[], const double &upADX[], const double &loADX[],
          const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats);
#import

#import "APFTrend-NG-usertrade.ex5"
   int getUserSignal(const int type, const int idx, const int i, const datetime &time[],
          const long &tick_volume[], const double &high[], const double &open[], const double &close[], const double &low[],
          const double &VWAP[], const double &HILO[], const double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[], const double &CCI[], const double &LR[], const double &Force[],
          const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[], const double &ADX[], const double &upADX[], const double &loADX[],
          const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats);
#import

#include <APFTrend-NG-VWAP.mqh>
#include <APFTrend-NG-TDF.mqh>

//#define HILO 1
//#ifdef HILO
//#resource "gann_hi_lo_activator_ssl.ex5"
//#endif

bool isWIN=true;

// Declaration of buffers and gloval variables
static datetime mylast_time;
static int dweek_now=0, dweek_last=0, timematch=0;

int trade_dir=0, trade_possible_dir=0, trade_weight;
static int hHILO=0, hMFI=0, hstdDev=0, hForce=0, hBands=0, hBands2=0, hADX=0, hLR=0;
static int hSAR=0, hRSI=0, hATR=0, hCCI=0, hMAFast=0, hMASlow=0, hMA25=0, hMA50=0, hMA100=0, hMA200=0;
#ifndef AUXBUF
#define AUXBUF
double buf_open[], buf_high[], buf_low[], buf_close[], buf_color_line[];
#endif 
#ifndef AUXBUF_VWAP
#define AUXBUF_VWAP
static double buf_VWAP[];
#endif
#ifndef AUX_TDF
#define AUX_TDF
static double workTrend[][3];
static double val[], levup[], levdn[];
#define _MMA   0
#define _SMMA  1
#define _TDF   2
#endif

double buf_HILO[], buf_HILO2[], buf_SAR[], buf_MFI[], buf_RSI[], buf_ATR[], buf_CCI[], buf_LR[], buf_Force[];
double buf_miBand[], buf_upBand[], buf_loBand[], buf_miBand2[], buf_upBand2[], buf_loBand2[], buf_ADX[], buf_upADX[], buf_loADX[];
double buf_MAFast[], buf_MASlow[], buf_MA25[], buf_MA50[], buf_MA100[], buf_MA200[], buf_TDF[], buf_stdDev[];

string last_alert_trade="", alert_trade="";

static stru_trade apf_trade;
static stru_filter f;
static stru_counters count;
static stru_stats price_stats;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
    reset_apf_trade(apf_trade);
    Destroy_myobjs();

    if (StringFind(Symbol(), "WIN", 0)<0) isWIN=false;

#include <APFTrend-NG-indicators.mqh>

//--- indicator buffers mapping
    SetIndexBuffer(0,buf_open,INDICATOR_DATA);
    SetIndexBuffer(1,buf_high,INDICATOR_DATA);
    SetIndexBuffer(2,buf_low,INDICATOR_DATA);
    SetIndexBuffer(3,buf_close,INDICATOR_DATA);
    SetIndexBuffer(4,buf_color_line,INDICATOR_COLOR_INDEX);

    SetIndexBuffer(5,buf_VWAP,INDICATOR_CALCULATIONS);
    SetIndexBuffer(6,buf_HILO,INDICATOR_CALCULATIONS);
    SetIndexBuffer(7,buf_HILO2,INDICATOR_CALCULATIONS);
    SetIndexBuffer(8,val,INDICATOR_CALCULATIONS);
    SetIndexBuffer(9,levup,INDICATOR_CALCULATIONS);
    SetIndexBuffer(10,levdn,INDICATOR_CALCULATIONS);
    SetIndexBuffer(11,buf_stdDev,INDICATOR_CALCULATIONS);
    SetIndexBuffer(12,buf_MAFast,INDICATOR_CALCULATIONS);
    SetIndexBuffer(13,buf_MASlow,INDICATOR_CALCULATIONS);
    SetIndexBuffer(14,buf_MA25,INDICATOR_CALCULATIONS);
    SetIndexBuffer(15,buf_MA50,INDICATOR_CALCULATIONS);
    SetIndexBuffer(16,buf_MA100,INDICATOR_CALCULATIONS);
    SetIndexBuffer(17,buf_MA200,INDICATOR_CALCULATIONS);
    SetIndexBuffer(18,buf_miBand,INDICATOR_CALCULATIONS);
    SetIndexBuffer(19,buf_upBand,INDICATOR_CALCULATIONS);
    SetIndexBuffer(20,buf_loBand,INDICATOR_CALCULATIONS);
    SetIndexBuffer(21,buf_miBand2,INDICATOR_CALCULATIONS);
    SetIndexBuffer(22,buf_upBand2,INDICATOR_CALCULATIONS);
    SetIndexBuffer(23,buf_loBand2,INDICATOR_CALCULATIONS);
    SetIndexBuffer(24,buf_ADX,INDICATOR_CALCULATIONS);
    SetIndexBuffer(25,buf_upADX,INDICATOR_CALCULATIONS);
    SetIndexBuffer(26,buf_loADX,INDICATOR_CALCULATIONS);
    SetIndexBuffer(27,buf_Force,INDICATOR_CALCULATIONS);
    SetIndexBuffer(28,buf_SAR,INDICATOR_CALCULATIONS);
    SetIndexBuffer(29,buf_RSI,INDICATOR_CALCULATIONS);
    SetIndexBuffer(30,buf_MFI,INDICATOR_CALCULATIONS);
    SetIndexBuffer(31,buf_ATR,INDICATOR_CALCULATIONS);
    SetIndexBuffer(32,buf_LR,INDICATOR_CALCULATIONS);
    SetIndexBuffer(33,buf_CCI,INDICATOR_CALCULATIONS);

//--- Set color for each index
    PlotIndexSetInteger(0,PLOT_COLOR_INDEXES,4);
    PlotIndexSetInteger(0,PLOT_LINE_COLOR,0,Color_Bar_Indef); // 0th index Color_Bar_Indef
    PlotIndexSetInteger(0,PLOT_LINE_COLOR,1,Color_Bar_Up);    // 1st index Color_Bar_Up
    PlotIndexSetInteger(0,PLOT_LINE_COLOR,2,Color_Bar_Down);  // 2nd index Color_Bar_Down
    PlotIndexSetInteger(0,PLOT_LINE_COLOR,-1,clrNONE);

//--- Initialize buffers with empty value
    ArrayInitialize(buf_open, EMPTY_VALUE);
    ArrayInitialize(buf_high, EMPTY_VALUE);
    ArrayInitialize(buf_low, EMPTY_VALUE);
    ArrayInitialize(buf_close, EMPTY_VALUE);
    ArrayInitialize(buf_VWAP, EMPTY_VALUE);
    ArrayInitialize(buf_HILO, EMPTY_VALUE);
    ArrayInitialize(buf_HILO2, EMPTY_VALUE);
    ArrayInitialize(buf_stdDev, EMPTY_VALUE);
    ArrayInitialize(buf_MAFast, EMPTY_VALUE);
    ArrayInitialize(buf_MASlow, EMPTY_VALUE);
    ArrayInitialize(buf_MA25, EMPTY_VALUE);
    ArrayInitialize(buf_MA50, EMPTY_VALUE);
    ArrayInitialize(buf_MA100, EMPTY_VALUE);
    ArrayInitialize(buf_MA200, EMPTY_VALUE);
    ArrayInitialize(buf_miBand, EMPTY_VALUE);
    ArrayInitialize(buf_upBand, EMPTY_VALUE);
    ArrayInitialize(buf_loBand, EMPTY_VALUE);
    ArrayInitialize(buf_miBand2, EMPTY_VALUE);
    ArrayInitialize(buf_upBand2, EMPTY_VALUE);
    ArrayInitialize(buf_loBand2, EMPTY_VALUE);
    ArrayInitialize(buf_ADX, EMPTY_VALUE);
    ArrayInitialize(buf_upADX, EMPTY_VALUE);
    ArrayInitialize(buf_loADX, EMPTY_VALUE);
    ArrayInitialize(buf_Force, EMPTY_VALUE);
    ArrayInitialize(buf_SAR, EMPTY_VALUE);
    ArrayInitialize(buf_RSI, EMPTY_VALUE);
    ArrayInitialize(buf_MFI, EMPTY_VALUE);
    ArrayInitialize(buf_ATR, EMPTY_VALUE);
    ArrayInitialize(buf_LR, EMPTY_VALUE);
    
//---
    IndicatorSetString(INDICATOR_SHORTNAME,"APFTrend-NG1.0");
    return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---

    MqlDateTime date_candle;
    int i=0, last=0, step=1, mode_error=0;

//---  Redefine o valor do último erro
    ResetLastError();
    
    if (tf()==0) {
       Print("ERROR: This "+(string)+PERIOD_CURRENT+" timeframe not supported");
       return(0);
    }

    // Trade control
    bool is_NewBar=false;
    bool is_mytrade=(trade_mode>0 && trade_mode<3);
    static int tdf_color=0, close_trade=0, next_tradedir=0;
    static double tgain=0, lost_gain=0, trade_gain=0, trade_maxgain=0;

    // Getting the candle records;
    static int bars_calculated=0;
    int values_to_copy=rates_total;
    int calculated=BarsCalculated(hstdDev);
    if(calculated<=0) {
       PrintFormat("BarsCalculated() retornando %d, código de erro %d",calculated,GetLastError());
       return(0);
    }
    if (prev_calculated==0 || calculated!=bars_calculated || rates_total>prev_calculated+1) {
       if(calculated>rates_total) values_to_copy=rates_total;
       else values_to_copy=calculated;
    }
    else values_to_copy=(rates_total-prev_calculated)+1;

    if (prev_calculated>0) last=rates_total-1;
    else last=0;

    ShowTime(mylast_time);

    if (is_mytrade) {
       if (!FillArrayFromBuffer(buf_HILO, 0, hHILO, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_HILO2, 0, hHILO, values_to_copy, 1)) mode_error=1;
       if (!FillArrayFromBuffer(buf_Force, 0, hForce, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_LR, 0, hLR, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_SAR, 0, hSAR, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MAFast, 0, hMAFast, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MASlow, 0, hMASlow, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MA25, 0, hMA25, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MA50, 0, hMA50, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MA100, 0, hMA100, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_MA200, 0, hMA200, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_ATR, 0, hATR, values_to_copy, 0)) mode_error=1;
       if (!FillArrayFromBuffer(buf_CCI, 0, hCCI, values_to_copy, 0)) mode_error=1;
       if (BarsCalculated(hADX)>20) {
          FillArrayFromBuffer(buf_ADX, 0, hADX, values_to_copy, 0);
          FillArrayFromBuffer(buf_upADX, 0, hADX, values_to_copy, 1);
          FillArrayFromBuffer(buf_loADX, 0, hADX, values_to_copy, 2);
       }
       else mode_error=1;
       if (BarsCalculated(hBands)>20 || (BarsCalculated(hBands)>Period_BANDS && Period_BANDS>0)) {
          FillArrayFromBuffer(buf_miBand, 0, hBands, values_to_copy, 0);
          FillArrayFromBuffer(buf_upBand, 0, hBands, values_to_copy, 1);
          FillArrayFromBuffer(buf_loBand, 0, hBands, values_to_copy, 2);
       }
       else mode_error=1;
       if (BarsCalculated(hBands2)>20 || (BarsCalculated(hBands2)>Period_BANDS && Period_BANDS>0)) {
          FillArrayFromBuffer(buf_miBand2, 0, hBands2, values_to_copy, 0);
          FillArrayFromBuffer(buf_upBand2, 0, hBands2, values_to_copy, 1);
          FillArrayFromBuffer(buf_loBand2, 0, hBands2, values_to_copy, 2);
       }
       else mode_error=1;
    }
    if (!FillArrayFromBuffer(buf_RSI, 0, hRSI, values_to_copy, 0)) mode_error=1;
    if (!FillArrayFromBuffer(buf_MFI, 0, hMFI, values_to_copy, 0)) mode_error=1;
    if (!FillArrayFromBuffer(buf_stdDev, 0, hstdDev, values_to_copy, 0)) mode_error=1;

//--- Indicator Calcs
    for (i=last; i<rates_total && !IsStopped(); i++)  {
       int k=i-1;

       // Set data for plotting
       buf_open[i]=open[i];
       buf_close[i]=close[i];
       buf_high[i]=high[i];
       buf_low[i]=low[i];

       if (i==0) {
          apf_trade.trade_sum=0;
          apf_trade.gain_total=0;
       }

       TimeToStruct(time[i],date_candle);
       dweek_now = date_candle.day;

       string time_cur=(string)date_candle.hour+":"+(string)date_candle.min;
       if (date_candle.hour>=18 || StringToTime(time_cur)>StringToTime(end_time)) close_trade=1;

       // Trade limits
       if (dweek_now != dweek_last) {
          step=0;
          close_trade=0;
          mylast_time=time[i];
          reset_apf_trade(apf_trade);

          price_stats.hilo_count=0;
          price_stats.max_lastdayprice=price_stats.max_dayprice;
          price_stats.min_lastdayprice=price_stats.min_dayprice;
          price_stats.max_dayprice=0;
          price_stats.min_dayprice=0;
          price_stats.ATR_min=buf_ATR[i];
          price_stats.ATR_max=buf_ATR[i];
          price_stats.ATR_per=0;

          price_stats.first_bar=i;
          dweek_last=dweek_now;
       }
       else {
          step=1;
          if (prev_calculated>0) {
             if (high[i]>price_stats.max_dayprice || price_stats.max_dayprice==0) price_stats.max_dayprice=high[i];
             if (low[i]<price_stats.min_dayprice || price_stats.min_dayprice==0) price_stats.min_dayprice=low[i];
          }
          else if (i>2) {
             if (high[i-1]>price_stats.max_dayprice || price_stats.max_dayprice==0) price_stats.max_dayprice=high[i-1];
             if (low[i-1]<price_stats.min_dayprice || price_stats.min_dayprice==0) price_stats.min_dayprice=low[i-1];
          }
          if (buf_ATR[i]>price_stats.ATR_max) price_stats.ATR_max=buf_ATR[i];
          if (buf_ATR[i]<price_stats.ATR_min) price_stats.ATR_min=buf_ATR[i];
          if (price_stats.bars_day<8 || date_candle.hour<10) price_stats.ATR_per=0;
          else if (price_stats.ATR_max-price_stats.ATR_min>0) price_stats.ATR_per=((100*(buf_ATR[i]-price_stats.ATR_min))/(price_stats.ATR_max-price_stats.ATR_min));
       }
       if (i==0) mylast_time=time[i];
       price_stats.bars_day=(i-price_stats.first_bar)+1;

       // VWAP and TDF calc
       if (i>0) {
          buildVWAP(i,step,prev_calculated,time[i],volume[i],volume[i-1]);
          buildTDF(i, rates_total, time[i]);
       }

       is_NewBar=IsNewBar(mylast_time, time[i], prev_calculated);
       if (trade_mode<1 || mode_error==1 || (i>2 && close_trade==1 && buf_color_line[i-1]<1)) {
          // Disabled trade
          if (i==0 && mode_error==1) Print("Setting the *Trade_DISABLED mode* due errors!");
          buf_color_line[i]=-1;
       }
       else if (i>2) {
          k=i-1;
          // TDF trade mode
          // 2. View TDF mode
          // 3. Trade TDF mode on close event
          tdf_color=0;
          if (i>1 && step>0 && trade_mode>0 && date_candle.hour<18) {
             if ((trade_mode==4 || trade_mode==1) && (apf_trade.trade_open>0 || is_NewBar)) {
                bool UPD_UP=(close[i]-open[i]>30 && high[i]>high[i-1] && high[i]>high[i-2]);
                bool UPD_DOWN=(open[i]-close[i]>30 && low[i]<low[i-1] && low[i]<low[i-2]);
                if (UPD_UP || UPD_DOWN) {
                    tdf_color = (val[i] > levup[i]) ? 1 : (val[i] < levdn[i]) ? 2 : 0;
                }
                else tdf_color = (val[i-1] > levup[i-1]) ? 1 : (val[i-1] < levdn[i-1]) ? 2 : 0;
             }
             else tdf_color = (val[i] > levup[i]) ? 1 : (val[i] < levdn[i]) ? 2 : 0;
          }
          f.tdf_color=tdf_color;

          if (trade_mode>2 && trade_mode<5) {
             if (tdf_color==0 || (apf_trade.trade_dir>0 && apf_trade.trade_dir!=tdf_color) || (tdf_color>0 && (buf_color_line[i-1]==0 || buf_color_line[i-1]==tdf_color))) {
                if (tdf_color>0 && apf_trade.trade_dir>0 && apf_trade.trade_dir!=tdf_color) apf_trade.trade_dir=0;
                else apf_trade.trade_dir=tdf_color;
             }
          }
          else {
             if (apf_trade.trade_dir==0 || apf_trade.trade_open<=0) apf_trade.trade_dir=0; // Auto TRADE
          }

          // Update counters apf_trade.bars_notrade, count.c_up, count.c_down, count.sarbuy and count.sarsell
          UpdCounters(k, price_stats.first_bar);

          // Trade bars
          if (!apf_trade.first_tradebar) apf_trade.bars_trade=0;
          else apf_trade.bars_trade=(i-apf_trade.first_tradebar)+1;

          if (is_mytrade) {
             UpdFilters(i-1, time, tick_volume, high, open, close, low,
               buf_color_line, buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_ATR, buf_Force, buf_stdDev,
               buf_MAFast, buf_MASlow, buf_MA200, buf_miBand, buf_upBand, buf_loBand, f, apf_trade);

             if (f.VWAP_CROSS) price_stats.vwap_idx=i-1;
          }

          // Show trade alerts
          int alert_type=0;
          if (prev_calculated>0 || i==bars_calculated-1) {
             if (close[i]-open[i]>0) {
                alert_trade="____UP  Candle";
                if (tdf_color==1 || ((buf_VWAP[i]>buf_VWAP[i-1] || buf_MAFast[i]>buf_MAFast[i-1]) && (close[i]>buf_HILO[i] || close[i-1]>buf_HILO[i-1]))) { alert_trade="__LONG  Trend"; alert_type=1; }
                if (buf_MFI[i]>95 || (close[i]>buf_VWAP[i] && buf_MAFast[i]>buf_HILO[i] && buf_MFI[i]>90 && buf_RSI[i]>70 && MathMin(close[i],open[i])>buf_upBand[i]))
                   { alert_trade="___LONG RISK"; alert_type=2; }
             }
             else if (open[i]-close[i]>0) {
                alert_trade="_DOWN Candle";
                if (tdf_color==2 || ((buf_VWAP[i]<buf_VWAP[i-1] || buf_MAFast[i]<buf_MAFast[i-1]) && (close[i]<buf_HILO[i] || close[i-1]<buf_HILO[i-1]))) { alert_trade="_SHORT  Trend"; alert_type=1; };
                if (buf_MFI[i]<12 || (close[i]<buf_VWAP[i] && buf_MAFast[i]<buf_HILO[i] && buf_MFI[i]<20 && buf_RSI[i]<30 && MathMax(close[i],open[i])<buf_loBand[i]))
                   { alert_trade="__SHORT RISK"; alert_type=2; }
             }
             if (alert_trade!=last_alert_trade) AlertTrade(alert_type, alert_trade);
          }
          last_alert_trade=alert_trade;


          if (apf_trade.trade_open>0) {
             k=i-1;
             next_tradedir=0;
             UpdCounters(k, price_stats.first_bar);
             initCandleMetrics(open[i-1], close[i-1], high[i-1], low[i-1]);

             if (is_NewBar) {
                if (prev_calculated>0) k=i-1;
                if (f.HILO_INVERTBUY || f.HILO_INVERTSELL) price_stats.hilo_count++;
                if (is_mytrade) {
                   if (apf_trade.trade_dir>0) {
                      if (trade_mode==1) {
                         apf_trade.trade_dir=getSignal(0, k, i, time, tick_volume, high, open, close, low,
                             buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_MFI, buf_ATR, buf_CCI, buf_LR, buf_Force,
                             buf_stdDev, buf_miBand, buf_upBand, buf_loBand, buf_miBand2, buf_upBand2, buf_loBand2, buf_ADX, buf_upADX, buf_loADX,
                             buf_MAFast, buf_MASlow, buf_MA25, buf_MA50, buf_MA100, buf_MA200, f, apf_trade, count, price_stats);

                         if (apf_trade.trade_dir==0) next_tradedir=getSignal(1, k, i, time, tick_volume, high, open, close, low,
                                buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_MFI, buf_ATR, buf_CCI, buf_LR, buf_Force,
                                buf_stdDev, buf_miBand, buf_upBand, buf_loBand, buf_miBand2, buf_upBand2, buf_loBand2, buf_ADX, buf_upADX, buf_loADX,
                                buf_MAFast, buf_MASlow, buf_MA25, buf_MA50, buf_MA100, buf_MA200, f, apf_trade, count, price_stats);
                      }
                      else if (trade_mode==2) {
                         apf_trade.trade_dir=getUserSignal(0, k, i, time, tick_volume, high, open, close, low,
                             buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_MFI, buf_ATR, buf_CCI, buf_LR, buf_Force,
                             buf_stdDev, buf_miBand, buf_upBand, buf_loBand, buf_miBand2, buf_upBand2, buf_loBand2, buf_ADX, buf_upADX, buf_loADX,
                             buf_MAFast, buf_MASlow, buf_MA25, buf_MA50, buf_MA100, buf_MA200, f, apf_trade, count, price_stats);
                      }
                   }
                }
             }
             if (apf_trade.trade_dir>0 && close_trade==1)
                CloseTrade(apf_trade);

             // Close trade when apf_trade.trade_dir == 0
             if (apf_trade.trade_dir==0) {
                buf_color_line[i]=0;
                buf_color_line[k]=0;

                if (trade_mode>2) {
                   if (trade_mode==3) apf_trade.algo_trade="STP: TDF Show";
                   else if (trade_mode==4) apf_trade.algo_trade="STP: TDF Close";
                }

                double last_tradesum = apf_trade.trade_sum;

                if (buf_color_line[k-1]==1) trade_gain=close[k]-apf_trade.trade_open;
                else if (buf_color_line[k-1]==2) trade_gain=apf_trade.trade_open-close[k];
                apf_trade.trade_lastgain=trade_maxgain;

                // Trades with gain per day
                if (trade_gain>0) apf_trade.gain_ct++;

                apf_trade.trade_sum+=trade_gain;
                apf_trade.gain_total+=trade_gain;
                if (Debug_Sum>0) {
                   if (Debug_Sum==1) printf("%s Trade %u sum (%u): %f", Symbol(), apf_trade.trade_ct, dweek_now, apf_trade.trade_sum);
                   else printf("%s Trade %u sum (%u): %f (Total %f)", Symbol(), apf_trade.trade_ct, dweek_now, apf_trade.trade_sum, apf_trade.gain_total);
                }

                trade_gain=0;
                trade_maxgain=0;
                apf_trade.algo_trade="NONE";
                apf_trade.trade_lastopen=apf_trade.trade_open;
                apf_trade.trade_open=0;
                apf_trade.bars_trade=0;
                apf_trade.bars_notrade=1;
                apf_trade.first_tradebar=0;

                if (next_tradedir>0) buf_color_line[i]=next_tradedir;
             }
             else if (apf_trade.trade_dir>0) {
                // Recover trade status
                buf_color_line[i]=apf_trade.trade_dir;
             }
          }
          else {
             k=i-1;
             initCandleMetrics(open[k], close[k], high[k], low[k]);

             if (apf_trade.trade_dir==0) buf_color_line[i]=0;
             
             apf_trade.first_tradebar=0;
             if (apf_trade.trade_ct<1) apf_trade.bars_notrade=price_stats.bars_day;

             if (trade_mode>2) {
                if (apf_trade.trade_dir>0 && apf_trade.trade_dir<3) {
                   buf_color_line[i]=apf_trade.trade_dir;
                   if (trade_mode==3) apf_trade.algo_trade="TDF Show";
                   else if (trade_mode==4) apf_trade.algo_trade="TDF Close";
                }
             }
             else {
                if (!next_tradedir) {
                if (is_NewBar) {
                   if (f.HILO_INVERTBUY || f.HILO_INVERTSELL) price_stats.hilo_count++;
                   if (trade_mode==1) {
                      apf_trade.trade_dir=getSignal(1, k, i, time, tick_volume, high, open, close, low,
                          buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_MFI, buf_ATR, buf_CCI, buf_LR, buf_Force,
                          buf_stdDev, buf_miBand, buf_upBand, buf_loBand, buf_miBand2, buf_upBand2, buf_loBand2, buf_ADX, buf_upADX, buf_loADX,
                          buf_MAFast, buf_MASlow, buf_MA25, buf_MA50, buf_MA100, buf_MA200, f, apf_trade, count, price_stats);
                   }
                   else if (trade_mode==2) {
                      apf_trade.trade_dir=getUserSignal(1, k, i, time, tick_volume, high, open, close, low,
                          buf_VWAP, buf_HILO, buf_HILO2, buf_SAR, buf_RSI, buf_MFI, buf_ATR, buf_CCI, buf_LR, buf_Force,
                          buf_stdDev, buf_miBand, buf_upBand, buf_loBand, buf_miBand2, buf_upBand2, buf_loBand2, buf_ADX, buf_upADX, buf_loADX,
                          buf_MAFast, buf_MASlow, buf_MA25, buf_MA50, buf_MA100, buf_MA200, f, apf_trade, count, price_stats);
                   }
                }
                }
                else {
                   apf_trade.trade_dir=next_tradedir;
                   next_tradedir=0;
                }
             }
   
             // Make a trade position (open trade)
             if (apf_trade.trade_dir>0 && step>0 && !close_trade) {
                apf_trade.trade_open=open[i];
                buf_color_line[i]=apf_trade.trade_dir;
                trade_gain=0;
                trade_maxgain=0;
                apf_trade.trade_ct++;
                apf_trade.trade_lastdir=apf_trade.trade_dir;
                apf_trade.bars_trade=1;
                apf_trade.bars_notrade=0;
                apf_trade.first_tradebar=i;
                apf_trade.last_candletrade=i;
             }
          }
       }
    }
//--- memorizar o número de valores no indicador
   bars_calculated=calculated;

//--- return value of prev_calculated for next call
   return(rates_total);
  }

void UpdFilters(const int idx, const datetime &time[], const long &tick_volume[], 
        const double &high[], const double &open[], const double &close[], const double &low[],
        const double &color_line[], const double &VWAP[], const double &HILO[], double &HILO2[], const double &SAR[], const double &RSI[], const double &ATR[],
        const double &Force[], const double &stdDev[], const double &MAFast[], const double &MASlow[], const double &MA200[], const double &miBand[], const double &upBand[], const double &loBand[],
        stru_filter &filter, stru_trade &apftrade)
  {
     filter.VWAP_CROSS = (high[idx]>VWAP[idx] && low[idx]<VWAP[idx]);
     filter.VWAP_LASTCROSS = (high[idx-1]>buf_VWAP[idx-1] && low[idx-1]<buf_VWAP[idx-1]);
     filter.VWAPCROSS = (filter.VWAP_CROSS && high[idx]-1>VWAP[idx-1] && low[idx-1]<VWAP[idx-1]);
     filter.VWAP_CK_CROSS = (filter.VWAP_CROSS && high[idx-1]>VWAP[idx-1] && low[idx-1]<VWAP[idx-1]);

     filter.NO_VWAPCROSS = !filter.VWAPCROSS;
     filter.NO_VWAP_CROSS = !filter.VWAP_CROSS;

     filter.SAR_BUY = (low[idx]>SAR[idx]);
     filter.SAR_SELL = (high[idx]<SAR[idx]);
     filter.HILO_BUY = (close[idx]>buf_HILO[idx]);
     filter.HILO_SELL = (close[idx]<buf_HILO[idx]);

     if (filter.VWAP_CROSS) {
        if (!filter.VWAP_LASTCROSS && price_stats.vwap_idx!=idx) {
           price_stats.vwap_lastidx=price_stats.vwap_idx;
           if (price_stats.bars_day>5) price_stats.vwap_count++;
        }
        price_stats.vwap_idx=idx;
        price_stats.vwap_lastcross = VWAP[idx];
     }

     if (idx>3) {
        filter.VWAP_UP = (VWAP[idx]>VWAP[idx-1] && VWAP[idx-1]>=VWAP[idx-2]);
        filter.VWAP_DOWN = (VWAP[idx]<VWAP[idx-1] && VWAP[idx-1]<=VWAP[idx-2]);
        filter.MIBAND_UP = (miBand[idx]>miBand[idx-1] && miBand[idx-1]>=miBand[idx-2]);
        filter.MIBAND_DOWN = (miBand[idx]<miBand[idx-1] && miBand[idx-1]<=miBand[idx-2]);
        filter.HILO_INVERTBUY = (close[idx]>HILO[idx] && close[idx-1]<HILO[idx-1]);
        filter.HILO_INVERTSELL = (close[idx]<HILO[idx] && close[idx-1]>HILO[idx-1]);
        filter.SAR_INVERTBUY = (close[idx]>SAR[idx] && close[idx-1]<SAR[idx-1]);
        filter.SAR_INVERTSELL = (close[idx]<SAR[idx] && close[idx-1]>SAR[idx-1]);
        filter.MED_UP = (idx>4 && (high[idx]+low[idx])/2 > (high[idx-1]+low[idx-1])/2 && (high[idx-1]+low[idx-1])/2 > (high[idx-2]+low[idx-2])/2);
        filter.MED_DOWN = (idx>4 && (high[idx]+low[idx])/2 < (high[idx-1]+low[idx-1])/2 && (high[idx-1]+low[idx-1])/2 < (high[idx-2]+low[idx-2])/2);
     }
  }

//+------------------------------------------------------------------+
//| Show trade alerts                                                |
//+------------------------------------------------------------------+
void AlertTrade(int level, string my_alert) {
    color alert_color = YellowGreen;
    long cid=ChartID();
    if (ObjectFind(cid, "APF_ALERTTRADE")<0) {
       if (!ObjectCreate(cid, "APF_ALERTTRADE", OBJ_LABEL, 0, 0, 0)) {
          Print("Error: ",GetLastError());
          return;
       }
    }
    string label_text="Trade alert: "+my_alert;
    if (level==0) alert_color=Gray;
    else if (level==1) alert_color=Green;
    else if (level==2) alert_color=Red;

    ObjectSetInteger(cid, "APF_ALERTTRADE",OBJPROP_XDISTANCE,(ChartGetInteger(0,CHART_WIDTH_IN_PIXELS)-250));
    ObjectSetInteger(cid, "APF_ALERTTRADE",OBJPROP_YDISTANCE,55);
    ObjectSetInteger(cid, "APF_ALERTTRADE",OBJPROP_COLOR,alert_color);
    ObjectSetInteger(cid, "APF_ALERTTRADE",OBJPROP_FONTSIZE,14);
    ObjectSetString(cid, "APF_ALERTTRADE",OBJPROP_TEXT,label_text);

    ObjectSetString(cid, "APF_ALERTTRADE", OBJPROP_TEXT, label_text);
};

//+------------------------------------------------------------------+
//| Show seconds to close                                            |
//+------------------------------------------------------------------+
void ShowTime(const datetime lastbar_time) {
    int time_match=0;
    int limit_time=tf();
    datetime init_auxtime=TimeCurrent();

    time_match=limit_time-(int)(init_auxtime-lastbar_time);
    if (time_match<0) time_match=0;
    timematch=time_match;

    long cid=ChartID();
    if (ObjectFind(cid, "APF_SECCLOSE")<0) {
       if (!ObjectCreate(cid, "APF_SECCLOSE", OBJ_LABEL, 0, 0, 0)) {
          Print("Error: ",GetLastError());
          return;
       }
    }
    string label_text="Seconds... "+(string) (long)time_match;

    ObjectSetInteger(cid, "APF_SECCLOSE",OBJPROP_XDISTANCE,ChartGetInteger(0,CHART_WIDTH_IN_PIXELS,0)-100);
    ObjectSetInteger(cid, "APF_SECCLOSE",OBJPROP_YDISTANCE,30);
    ObjectSetInteger(cid, "APF_SECCLOSE",OBJPROP_COLOR,YellowGreen);
    ObjectSetString(cid, "APF_SECCLOSE",OBJPROP_TEXT,label_text);

    ObjectSetString(cid, "APF_SECCLOSE", OBJPROP_TEXT, label_text);
  }

//--- Update counters
void UpdCounters(int idx, int first_idx)
  {
     int auxct_sarbuy=0, auxct_sarsell=0, auxct_hilobuy=0, auxct_hilosell=0;
     int auxct_cup=0, auxct_cdown=0, auxbars_notrade=0;

     for (int j=first_idx; j<=idx; j++) {
         // Count candle_up or candle_down 
         if (buf_open[j]-buf_close[j]==0) {
            auxct_cup=0;
            auxct_cdown=0;
         }
         else {
            if (buf_close[j]>buf_open[j]) {
               auxct_cup++;
               auxct_cdown=0;
            }
            else if (buf_close[j]<buf_open[j]) {
               auxct_cdown++;
               auxct_cup=0;
            }
         }

         if (buf_color_line[j]>0) auxbars_notrade=0;
         else auxbars_notrade++;

         // Count SAR candles
         if (buf_low[j]>buf_SAR[j]) {
            auxct_sarbuy++;
            auxct_sarsell=0;
         }
         else {
            auxct_sarsell++;
            auxct_sarbuy=0;
         }
         // Count HILO candles
         if (buf_close[j]>buf_HILO[j]) {
            auxct_hilobuy++;
            auxct_hilosell=0;
         }
         else {
            auxct_hilosell++;
            auxct_hilobuy=0;
         }
     }

     count.c_up=auxct_cup;
     count.c_down=auxct_cdown;
     count.sarbuy=auxct_sarbuy;
     count.sarsell=auxct_sarsell;
     count.hilobuy=auxct_hilobuy;
     count.hilosell=auxct_hilosell;
     apf_trade.bars_notrade=auxbars_notrade;
  }

//+------------------------------------------------------------------+
//| Indicator deinitialization function                              |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- clear the chart after deleting the indicator
    Comment("");

    ArrayFree(val);
    ArrayFree(buf_VWAP);
    ArrayFree(buf_HILO);
    ArrayFree(buf_HILO2);
    IndicatorRelease(hHILO);
    IndicatorRelease(hMAFast);
    IndicatorRelease(hMA200);
    IndicatorRelease(hstdDev);
    IndicatorRelease(hSAR);
    IndicatorRelease(hRSI);
    IndicatorRelease(hBands);
    IndicatorRelease(hBands2);
    IndicatorRelease(hADX);
    IndicatorRelease(hForce);
    Destroy_myobjs();
  }
//+------------------------------------------------------------------+