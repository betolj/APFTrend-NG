//+------------------------------------------------------------------+
//|                                        APFTrend-NG-usertrade.mq5 |
//|                             Copyright 2023, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property library
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"
#property version   "1.00"

#include <APFTrend-NG-Base.mqh>

int getUserSignal(const int type, const int idx, const int i, const datetime &time[],
        const long &tick_volume[], const double &high[], const double &open[], const double &close[], const double &low[],
        const double &VWAP[], const double &HILO[], const double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[],
        const double &Force[], const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[], const double &miBand2[], const double &upBand2[], const double &loBand2[], const double &ADX[], const double &upADX[], const double &loADX[],
        const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats) export
  {
     int ret=0, aux_dir=0, MAFastSize=ArraySize(MAFast);
     MqlDateTime date_candle;
     if (idx<4) return(ret);

     // Put your code here

     //1. Define your open positions into type 1 
     //   - set ret 1 for long 
     //   - set ret 2 for short
     //2. Define your close positions int type 0
     //
     if (type==1) {
        // OPEN position
        bool longtest = false;
        bool shorttest = false;
        if (pricestats.bars_day>2 && idx>1) {
           if (longtest && high[idx]-open[idx]<400) {
              ret=1;
           }
           else if (shorttest && open[idx]-low[idx]<400) {
              ret=2;
           }
        }
     }
     else if (type==0) {
        // CLOSE positions
        bool close_longtest = true;
        bool close_shorttest = true;
        if ((apftrade.trade_dir==1 && close_longtest) || (apftrade.trade_dir==2 && close_shorttest))
           ret=0;
        else ret=apftrade.trade_dir;
     }

     return(ret);
  }