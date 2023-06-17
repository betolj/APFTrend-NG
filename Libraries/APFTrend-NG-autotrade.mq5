//+------------------------------------------------------------------+
//|                                        APFTrend-NG-autotrade.mq5 |
//|                             Copyright 2023, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property library
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"
#property version   "1.00"

#include <APFTrend-NG-Base.mqh>

//pts_size=110;
//pts_size2=150;    -> 300 pts = 2*pts_size2
//pts_maxsize=350;
//pts_maxsize2=500  -> 1000 pts = 2*pts_maxsize2 and 1500 pts = 3*pts_maxsize2

//+------------------------------------------------------------------+
//| getSignal function (1: long, 2: short and 0: ignore or close     |
//+------------------------------------------------------------------+
int getSignal(const int type, const int idx, const int i, const datetime &time[],
        const long &tick_volume[], const double &high[], const double &open[], const double &close[], const double &low[],
        const double &VWAP[], const double &HILO[], double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[], const double &CCI[], const double &LR[],
        const double &Force[], const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[], const double &miBand2[], const double &upBand2[], const double &loBand2[], const double &ADX[], const double &upADX[], const double &loADX[],
        const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats) export
  {
     int ret=0, aux_dir=0, MAFastSize=ArraySize(MAFast);
     MqlDateTime date_candle;
     if (i-1<6 && pricestats.first_bar<1) return(ret);

     int trade_start=0, force_trade=0;
     bool VOLUME_UP = tick_volume[i-1]>tick_volume[i-2];
     double gain_pts=0, loss_pts=0;
     double aux_abs = MathAbs(close[i-1]-open[i-1]);
     double aux_abslast = MathAbs(close[i-2]-open[i-2]);
     double vwap_distance = MathAbs(close[i-1]-VWAP[i-1]);
     double auxlast_abs = MathAbs(close[i]-open[i]);
     double auxlast_abslast = MathAbs(close[i-1]-open[i-1]);
     double candlelast_hi = high[i-1]-MathMax(open[i-1],close[i-1]);
     double candlelast_lo = MathMin(open[i-1],close[i-1])-low[i-1];

     aux_abs=MathAbs(close[i-1]-open[i-1]);
     body_up=close[i-1]-open[i-1];
     body_down=open[i-1]-close[i-1];
     candle_lo=(MathMin(open[i-1],close[i-1])-low[i-1]);
     candle_hi=(high[i-1]-MathMax(open[i-1],close[i-1]));
     bool chk_up=(body_up>0 || type==0);
     bool chk_down=(body_down>0 || type==0);

     TimeToStruct(time[i-1],date_candle);
     initCandleMetrics(open[i-1], close[i-1], high[i-1], low[i-1]);

     if (type==1) {
        if (date_candle.hour>10 && date_candle.hour<16 && stdDev[i-1]<4*aux_abs) {
           if (body_up>0 && MFI[i-1]<75 && CCI[i-1]>-50 && filter.HILO_BUY && mycounters.hilobuy<12 && MFI[i-1]<95 && LR[i-1]>LR[i-2] && close[i-1]>LR[i-1] && close[i-1]>MAFast[i-1] && close[i-1]>MA25[i-1]) aux_dir+=2;
           else if (body_down>0 && MFI[i-1]>20 && CCI[i-1]<50 && filter.HILO_SELL && mycounters.hilosell<12 && MFI[i-1]>10 && LR[i-1]<LR[i-2] && close[i-1]<LR[i-1] && close[i-1]<MAFast[i-1] && close[i-1]<MA25[i-1]) aux_dir-=2;
        }
        if (i>5) {
           if (mycounters.c_up<4 && close[i-1]>(open[i-2]+close[i-2])/2 && MFI[i-3]<30 && close[i-1]>HILO2[i-1] && MA200[i-1]>=MA200[i-2] && close[i-5]>MA200[i-5] && low[i-1]<MA200[i-1] && close[i-1]>MA200[i-1]) {
               if (filter.VWAP_CROSS && close[i-1]<VWAP[i-1] && RSI[i-1]<55 && MFI[i-1]<60);
               else if (filter.HILO_SELL && (date_candle.hour>16 || (date_candle.hour>11 && date_candle.hour<15)) && CCI[i-1]<-70 && Force[i-1]<0 && RSI[i-1]<50 && close[i-1]-HILO2[i-1]<body_up && close[i-1]<high[i-2] && high[i-1]<VWAP[i-1] && MAFast[i-1]<MA25[i-1] && high[i-1]<MAFast[i-1]);
               else {
                  force_trade=1;
                  aux_dir+=10;
               }
           }
           if (mycounters.c_down<4 && close[i-1]<(open[i-2]+close[i-2])/2 && MFI[i-3]>-30 && close[i-1]<HILO2[i-1] && MA200[i-1]<=MA200[i-2] && close[i-5]<MA200[i-5] && high[i-1]>MA200[i-1] && close[i-1]<MA200[i-1]) {
              if (filter.VWAP_CROSS && close[i-1]>VWAP[i-1] && RSI[i-1]>45 && MFI[i-1]>40);
              else if (filter.HILO_BUY && (date_candle.hour>16 || (date_candle.hour>11 && date_candle.hour<15)) && CCI[i-1]>70 && Force[i-1]>0 && RSI[i-1]>50 && HILO2[i-1]-close[i-1]<body_down && close[i-1]>low[i-2] && low[i-1]>VWAP[i-1] && MAFast[i-1]>MA25[i-1] && low[i-1]>MAFast[i-1]);
              else {
                 force_trade=1;
                 aux_dir-=10;
              }
           }
           if (pricestats.bars_day>6) {
              if (filter.HILO_BUY && filter.MIBAND_UP && MFI[i-1]<95 && RSI[i-1]<75 && RSI[i-1]>55 && body_up>0 && candle_lo>body_up && low[i-1]<HILO[i-1] && close[i-1]>(open[i-2]+close[i-2])/2 && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) {
                 force_trade=1;
                 aux_dir+=10;
              }
              else if (filter.HILO_SELL && filter.MIBAND_DOWN && MFI[i-1]>15 && RSI[i-1]>25 && RSI[i-1]<45 && body_down>0 && candle_hi>body_down && high[i-1]>HILO[i-1] && close[i-1]<(open[i-2]+close[i-2])/2 && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) {
                 force_trade=1;
                 aux_dir-=10;
              }
           }
        }
        if (VOLUME_UP && pricestats.bars_day>3 && date_candle.hour<16) {
           if (filter.VWAP_CROSS && !filter.VWAP_LASTCROSS && aux_abs>aux_abslast && candle_hi<aux_abs && candle_lo<aux_abs && stdDev[i-1]<4*aux_abs) {
              if (filter.HILO_BUY && filter.SAR_BUY && mycounters.sarbuy<10 && mycounters.hilobuy<10 && MFI[i-1]<90 && body_up>0 && close[i-1]>MAFast[i-1]) {
                 if (close[i-1]>LR[i-1] && LR[i-1]>LR[i-2] && close[i-1]>high[i-2] && open[i-1]<VWAP[i-1] && close[i-1]>VWAP[i-1] && close[i-2]<VWAP[i-2] && open[i-3]>VWAP[i-3] && close[i-3]<VWAP[i-3]) aux_dir+=10;
              }
              else if (filter.HILO_SELL && filter.SAR_SELL && mycounters.hilosell==pricestats.bars_day && mycounters.sarsell<10 && mycounters.hilosell<10 && MFI[i-1]>15 && body_down>0 && close[i-1]<MAFast[i-1]) {
                 if (close[i-1]<LR[i-1] && LR[i-1]<LR[i-2] && close[i-1]<low[i-2] && close[i-1]<(open[i-3]+close[i-3])/2 && open[i-1]>VWAP[i-1] && close[i-1]<VWAP[i-1] && close[i-2]>VWAP[i-2] && open[i-3]<VWAP[i-3] && close[i-3]>VWAP[i-3]) aux_dir-=10;
              }
           }
           else if (filter.NO_VWAPCROSS && aux_abs>aux_abslast) {
              if (body_up>0 && RSI[i-1]>40 && RSI[i-1]<70 && body_up>3*candle_hi && MA200[i-1]>MA200[i-2] && low[i-1]<loBand2[i-1]) {
                 if (close[i-1]>high[i-2] && close[i-1]>HILO2[i-1] && high[i-1]<VWAP[i-1] && low[i-3]>MA200[i-3] && high[i-2]>MA200[i-2] && low[i-2]<MA200[i-2] && close[i-1]-MA200[i-1]>2*(MA200[i-1]-open[i-1])) {
                    aux_dir+=10;
                    force_trade=1;
                 }
              }
              else if (body_down>0 && RSI[i-1]<60 && RSI[i-1]>30 && body_down>3*candle_lo && MA200[i-1]<MA200[i-2] && high[i-1]>upBand2[i-1])
                 if (close[i-1]<low[i-2] && close[i-1]<HILO2[i-1] && low[i-1]>VWAP[i-1] && high[i-3]<MA200[i-3] && low[i-2]<MA200[i-2] && high[i-2]>MA200[i-2] && MA200[i-1]-close[i-1]>2*(open[i-1]-MA200[i-1])) {
                    aux_dir-=10;
                    force_trade=1;
                 }
           }
        }
     }

     if (filter.VWAP_CROSS && pricestats.bars_day>6 && date_candle.hour<15) {
        if (filter.HILO_INVERTBUY && filter.SAR_INVERTBUY && body_up>0 && close[i-1]>high[i-2] && high[i-2]<VWAP[i-2] && open[i-1]<VWAP[i-1] && close[i-1]>VWAP[i-1]) {
           if (MFI[i-1]>50 && RSI[i-1]>40 && RSI[i-1]<80 && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && MathMin(open[i-3],close[i-3])>loBand[i-3]) {
              aux_dir+=10;
              force_trade=1;
           }
        }
        else if (filter.HILO_INVERTSELL && filter.SAR_INVERTSELL && body_down>0 && close[i-1]<low[i-2] && low[i-2]>VWAP[i-2] && open[i-1]>VWAP[i-1] && close[i-1]<VWAP[i-1]) {
           if (MFI[i-1]<50 && RSI[i-1]<60 && RSI[i-1]>20 && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && MathMax(open[i-3],close[i-3])>upBand[i-3]) {
              aux_dir-=10;
              force_trade=1;
           }
        }
     }


     if (CCI[i-1]>50 && (type==0 || (type==1 && VWAP[i-1]>0 && date_candle.hour<17))) {
        aux_dir+=2;
        if (filter.tdf_color==1) aux_dir++;
        if (filter.SAR_BUY && body_up>0) aux_dir++;
        if (filter.HILO_BUY) {
           aux_dir++;
           if (type==1 && date_candle.hour>9 && date_candle.hour<16 && body_up>candle_hi && close[i-1]>HILO2[i-1]) {
              if (open[i-1]<VWAP[i-1] && CCI[i-1]>-50 && RSI[i-1]>45 && MFI[i-1]<90)
                 if (open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && open[i-1]<MA25[i-1] && close[i-1]>MA25[i-1]) aux_dir+=5;
           }
        }
        if (filter.SAR_INVERTBUY) aux_dir+=3;
        if (filter.HILO_INVERTBUY) aux_dir+=3;
        if (type==1 && close[i-1]>LR[i-1]) aux_dir++;
        if (type==1 && MFI[i-1]<85 && RSI[i-1]>50) {
           if (close[i-2]<VWAP[i-2] && close[i-1]>VWAP[i-1]) aux_dir++;
           if (close[i-2]<loBand2[i-2] && close[i-1]>loBand2[i-1] && CCI[i-1]>-50) aux_dir+=2;
           if (filter.HILO_BUY && CCI[i-1]<130 && MFI[i-1]<80 && stdDev[i-1]<3*aux_abs && body_up>0 && body_up>2*candle_hi && close[i-1]>high[i-2] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && close[i-1]>HILO2[i-1]) {
              if (date_candle.hour>15 && low[i-1]>VWAP[i-1]);
              else aux_dir+=2;
           }
           if (CCI[i-1]>140 && VWAP[i-1]-open[i-1]>2*(close[i-1]-VWAP[i-1]));
           else {
              if ((filter.VWAPCROSS || filter.VWAP_LASTCROSS) && (filter.SAR_INVERTBUY || filter.HILO_INVERTBUY) && Force[i-1]>0 && close[i-1]>high[i-2] && open[i-2]<VWAP[i-2] && high[i-3]<VWAP[i-3] && close[i-1]>VWAP[i-1] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) aux_dir+=3;
              if (filter.VWAP_CROSS && VOLUME_UP && CCI[i-1]>0 && body_up>candle_hi && close[i-1]>LR[i-1] && close[i-1]>HILO2[i-1] && close[i-1]>VWAP[i-1] && close[i-1]>high[i-2] && high[i-1]>high[i-3] && LR[i-1]>LR[i-2] && MAFast[i-1]>MAFast[i-2] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) aux_dir+=9;
           }
        }
        if (type==1) {
           if ((filter.HILO_BUY || filter.SAR_BUY || filter.MIBAND_UP || low[i-1]<loBand[i-1]) && low[i-1]>low[i-2] && low[i-3]>low[i-2]) aux_dir++;
           if (aux_dir>2 && aux_dir<14 && filter.tdf_color!=1 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>15 && RSI[i-1]>63 && low[i-1]>VWAP[i-1]) aux_dir=0;
           if (aux_dir>2 && aux_dir<10 && date_candle.hour>15 && filter.NO_VWAPCROSS && force_trade==0 && i-pricestats.vwap_idx>15 && RSI[i-1]>65 && low[i-1]>VWAP[i-1] && high[i-1]>loBand[i-1] && stdDev[i-1]<body_up/1.5) aux_dir--;
           if (aux_dir>2 && aux_dir<13 && date_candle.hour>11 && force_trade==0 && date_candle.hour<14 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && MAFast[i-1]<MA25[i-1]) aux_dir=0;
           if (MAFast[i-1]>MA25[i-1] && MA25[i-1]>MA50[i-1] && MA50[i-1]>MA100[i-1]) {
              aux_dir++;
              if (close[i-1]>MAFast[i-1]) aux_dir++;
           }
           if (date_candle.hour<16 && filter.HILO_BUY && CCI[i-1]>0 && MFI[i-1]<85 && RSI[i-1]>50 && MAFast[i-1]>MA25[i-1] && MAFast[i-3]<MA25[i-3] && close[i-1]>MAFast[i-1]) aux_dir+=2;
           if (filter.HILO_INVERTBUY && CCI[i-1]>-10 && MFI[i-1]>20 && RSI[i-1]>45 && close[i-1]>HILO2[i-1])
              if (body_up>0 && body_up>candle_hi && VWAP[i-1]-high[i-1]>candle_hi && high[i-1]<VWAP[i-1] && ((open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) || (open[i-2]<MAFast[i-2] && close[i-1]>MAFast[i-1]))) aux_dir+=3;
        }
        if (aux_dir>1 && (type==1 || apftrade.trade_dir==1)) {
           if (stdDev[i-1]>4*aux_abs) aux_dir--;
           if (MFI[i-1]>90) aux_dir--;
           if (MFI[i-1]>82 && filter.VWAP_CROSS && type==1) aux_dir--;
           if (type==1 && mycounters.hilobuy>12) aux_dir--;
           if (type==1 && date_candle.hour>15 && open[i-1]>MAFast[i-1] && high[i-1]>upBand2[i-1] && candle_hi>2*(aux_abs/3)) aux_dir=0;
           if (type==1 && CCI[i-1]>200 && high[i-1]-low[i-1]>ATR[i-1] && high[i-1]>upBand[i-1] && date_candle.hour<12) aux_dir=0;
           if (type==1 && aux_dir>2 && candle_hi>5*body_up) aux_dir-=2;
           if (type==1 && aux_dir>2 && candle_hi>body_up && high[i-1]>upBand2[i-1] && close[i-1]<upBand2[i-1]) aux_dir--;
           if (type==1 && pricestats.bars_day<9) aux_dir--;
           if (type==1 && close[i-1]<loBand2[i-1]) aux_dir--;
           //if (type==1 && VWAP[i-1]>MA100[i-1] && MA100[i-1]>MA50[i-1] && MA50[i-1]>MA25[i-1]) aux_dir--;
           if (type==1 && filter.HILO_SELL && high[i-1]>HILO[i-1] && close[i-1]<HILO[i-1]) aux_dir=0;
           if (high[i-1]>MA25[i-1] && close[i-1]<MA25[i-1]) aux_dir--;
           if (high[i-1]>MA200[i-1] && close[i-1]<MA200[i-1]) aux_dir--;
           if (type==1 && aux_dir>2) {
              if (filter.VWAP_CROSS && force_trade==0 && mycounters.hilobuy>10 && candle_hi>aux_abs/5 && close[i-1]<open[i-3]) aux_dir=0;
              if (aux_dir>2 && date_candle.hour>13 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_up==1 && candle_hi>0 && MFI[i-1]>80 && close[i-1]>VWAP[i-1] && close[i-1]>upBand2[i-1] && low[i-2]>upBand[i-2]) aux_dir=0;
              if (aux_dir>2 && date_candle.hour<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && high[i-3]-high[i-1]>body_up && high[i-3]>upBand[i-3] && high[i-1]<upBand[i-1]) aux_dir-=2;
              if (aux_dir>2 && filter.tdf_color!=1 && i-pricestats.vwap_idx>10 && high[i-1]<VWAP[i-1] && MA25[i-1]<MA50[i-1] && MA50[i-1]<MA200[i-1] && MA25[i-1]-MAFast[i-1]>aux_abs/2 && MA200[i-1]-high[i-1]<body_up && close[i-1]<MA200[i-1]) aux_dir--;
              if (force_trade==0) {
                 if (aux_dir>2 && close[i-1]<MAFast[i-1] && MA25[i-1]<MA50[i-1] && MA50[i-1]<MA100[i-1]) aux_dir--;
                 if (aux_dir>2 && candle_hi>body_up && high[i-1]>upBand2[i-1] && close[i-1]<upBand2[i-1]) aux_dir--;           
                 if (aux_dir>2 && aux_dir<16 && filter.VWAP_CROSS && RSI[i-1]>64 && VWAP[i-1]-open[i-1]>3*(close[i-1]-VWAP[i-1])) aux_dir=0;
                 if (aux_dir>2 && aux_dir<16 && filter.VWAP_CROSS && CCI[i-1]>120 && candle_hi>aux_abslast && candle_hi>3*candle_lo && high[i-1]>upBand[i-1] && MA100[i-1]<MA200[i-1] && MA200[i-1]<MA200[i-2]) aux_dir=0;
                 if (aux_dir>2 && aux_dir<16 && date_candle.hour>13 && filter.NO_VWAPCROSS && CCI[i-1]>170 && candle_hi>0 && i-pricestats.vwap_idx>25 && MA50[i-1]>VWAP[i-1] && low[i-1]>MA25[i-1] && high[i-1]>upBand[i-1]) aux_dir=0;
              }
              if (aux_dir>2 && aux_dir<11 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && high[i-1]<VWAP[i-1] && body_up<MA50[i-1]-MA25[i-1] && ((high[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1]) || (high[i-1]>MA25[i-1] && close[i-1]<MA25[i-1]) || (high[i-1]>MA50[i-1] && close[i-1]<MA50[i-1]))) aux_dir--;
              if (aux_dir<10 && date_candle.hour>13 && close[i-1]>VWAP[i-1] && high[i-1]>MAFast[i-1] && high[i-1]>MA25[i-1] && high[i-1]>MA50[i-1] && high[i-1]>MA100[i-1])
                 if (low[i-1]<MAFast[i-1] && low[i-1]<MA25[i-1] && low[i-1]<MA50[i-1] && low[i-1]>MA100[i-1]) aux_dir--;
           }
        }
     }
     else if (CCI[i-1]<-50 && (type==0 || (type==1 && VWAP[i-1]>0 && body_down>0 && date_candle.hour<17))) {
        aux_dir-=2;
        if (filter.tdf_color==2) aux_dir--;
        if (filter.SAR_SELL && chk_down) aux_dir--;
        if (filter.HILO_SELL) aux_dir--;
        if (filter.SAR_INVERTSELL) aux_dir-=3;
        if (filter.HILO_INVERTSELL) aux_dir-=3;
        if (type==1 && close[i-1]<LR[i-1]) aux_dir--;
        if (type==1 && MFI[i-1]>15 && RSI[i-1]<50) {
           if (close[i-2]>VWAP[i-2] && close[i-1]<VWAP[i-1]) aux_dir--;
           if (close[i-2]>upBand2[i-2] && close[i-1]<upBand2[i-1] && CCI[i-1]<50) aux_dir-=2;
           if (filter.HILO_SELL && CCI[i-1]>-140 && MFI[i-1]>20 && stdDev[i-1]<3*aux_abs && body_down>0 && body_down>2*candle_lo && close[i-1]<low[i-2] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && close[i-1]<HILO2[i-1]) {
              if (date_candle.hour>15 && high[i-1]<VWAP[i-1]);
              else aux_dir-=2;
           }
           if (CCI[i-1]<-140 && open[i-1]-VWAP[i-1]>2*(VWAP[i-1]-close[i-1]));
           else {
              if ((filter.VWAPCROSS || filter.VWAP_LASTCROSS) && (filter.SAR_INVERTSELL || filter.HILO_INVERTSELL) && Force[i-1]<0 && close[i-1]<low[i-2] && open[i-2]>VWAP[i-2] && low[i-3]>VWAP[i-3] && close[i-1]<VWAP[i-1] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1]) aux_dir-=3;
              if (filter.VWAP_CROSS && VOLUME_UP && CCI[i-1]<25 && body_down>candle_lo && close[i-1]<HILO2[i-1] && close[i-1]<VWAP[i-1] && close[i-1]<low[i-2] && LR[i-1]<LR[i-2] && MAFast[i-1]<MAFast[i-2] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1]) aux_dir-=9;
           }
        }
        if (type==1) {
           if ((filter.HILO_SELL || filter.SAR_SELL || filter.MIBAND_DOWN || high[i-2]>upBand[i-2]) && high[i-1]<high[i-2] && high[i-3]<high[i-2] && high[i-2]>upBand[i-2]) aux_dir--;
           if (aux_dir<-2 && aux_dir>-11 && filter.tdf_color!=2 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>15 && RSI[i-1]<43 && high[i-1]<VWAP[i-1]) aux_dir=0;
           if (aux_dir<-2 && aux_dir>-10 && date_candle.hour>14 && force_trade==0 && i-pricestats.vwap_idx>15 && RSI[i-1]<40 && high[i-1]<VWAP[i-1] && low[i-1]<loBand[i-1] && stdDev[i-1]<body_down/1.5) aux_dir++;
           if (aux_dir<-2 && aux_dir>-13 && date_candle.hour>11 && date_candle.hour<14 && force_trade==0 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && MAFast[i-1]>MA25[i-1]) aux_dir=0;
           if (MAFast[i-1]<MA25[i-1] && MA25[i-1]<MA50[i-1] && MA50[i-1]<MA100[i-1]) {
              aux_dir--;
              if (close[i-1]<MAFast[i-1]) aux_dir--;
           }
           if (date_candle.hour<16 && filter.HILO_SELL && CCI[i-1]<0 && MFI[i-1]>15 && RSI[i-1]<50 && MAFast[i-1]<MA25[i-1] && MAFast[i-3]>MA25[i-3] && close[i-1]<MAFast[i-1]) aux_dir-=2;
           if (filter.HILO_INVERTSELL && CCI[i-1]<10 && MFI[i-1]<90 && RSI[i-1]<55 && close[i-1]<HILO2[i-1]) 
              if (body_down>0 && body_down>candle_lo && low[i-1]-VWAP[i-1]>candle_lo && low[i-1]>VWAP[i-1] && ((open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1]) || (open[i-2]>MAFast[i-2] && close[i-1]<MAFast[i-1]))) aux_dir-=3;
        }
        if (aux_dir<-1 && (type==1 || apftrade.trade_dir==2)) {
           if (stdDev[i-1]>4*aux_abs) aux_dir++;
           if (MFI[i-1]<15) aux_dir++;
           if (MFI[i-1]<10 && filter.VWAP_CROSS && type==1) aux_dir++;
           if (type==1 && mycounters.hilosell>12) aux_dir++;
           if (type==1 && date_candle.hour>15 && open[i-1]<MAFast[i-1] && low[i-1]<loBand2[i-1] && candle_lo>2*(aux_abs/3)) aux_dir=0;
           if (type==1 && CCI[i-1]<-200 && high[i-1]-low[i-1]>ATR[i-1] && low[i-1]<loBand[i-1] && date_candle.hour<12) aux_dir=0;
           if (type==1 && pricestats.bars_day<9) aux_dir++;
           if (type==1 && aux_dir<-2 && candle_lo>5*body_down) aux_dir+=2;
           if (type==1 && aux_dir<-2 && candle_lo>body_down && low[i-1]<loBand2[i-1] && close[i-1]>loBand2[i-1]) aux_dir++;
           if (type==1 && close[i-1]<loBand2[i-1]) aux_dir++;
           if (type==1 && filter.HILO_BUY && low[i-1]<HILO[i-1] && close[i-1]>HILO[i-1]) aux_dir=0;
           if (low[i-1]<MA25[i-1] && close[i-1]>MA25[i-1]) aux_dir++;
           if (low[i-1]<MA200[i-1] && close[i-1]>MA200[i-1]) aux_dir++;
           if (type==1 && aux_dir<-2) {
              if (filter.VWAP_CROSS && force_trade==0 && mycounters.hilosell>10 && candle_lo>aux_abs/5 && close[i-1]>open[i-3]) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && low[i-1]-low[i-3]>body_down && low[i-3]<loBand2[i-1] && low[i-1]>loBand[i-1]) aux_dir+=2;
              if (aux_dir<-2 && date_candle.hour>13 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_down==1 && candle_lo>0 && MFI[i-1]<20 && close[i-1]<VWAP[i-1] && close[i-1]<loBand2[i-1] && low[i-2]<loBand[i-2]) aux_dir=0;
              if (aux_dir<-2 && filter.tdf_color!=2 && i-pricestats.vwap_idx>10 && low[i-1]>VWAP[i-1] && MA25[i-1]>MA50[i-1] && MA50[i-1]>MA200[i-1] && MAFast[i-1]-MA25[i-1]>aux_abs/2 && low[i-1]-MA200[i-1]<body_down && close[i-1]>MA200[i-1]) aux_dir=0;
              if (force_trade==0) {
                 if (aux_dir<-2 && close[i-1]>MAFast[i-1] && MA25[i-1]>MA50[i-1] && MA50[i-1]>MA100[i-1]) aux_dir++;
                 if (aux_dir<-2 && candle_lo>body_down && low[i-1]<loBand2[i-1] && close[i-1]>loBand2[i-1]) aux_dir++;
                 if (aux_dir<-2 && aux_dir>-16 && filter.VWAP_CROSS && RSI[i-1]<36 && open[i-1]-VWAP[i-1]>3*(VWAP[i-1]-close[i-1])) aux_dir=0;
                 if (aux_dir<-2 && aux_dir>-16 && filter.VWAP_CROSS && CCI[i-1]<-120 && candle_lo>aux_abslast && candle_lo>3*candle_hi && low[i-1]<loBand[i-1] && MA100[i-1]>MA200[i-1] && MA200[i-1]>MA200[i-2]) aux_dir=0;
                 if (aux_dir<-2 && aux_dir>-16 && date_candle.hour>13 && filter.NO_VWAPCROSS && CCI[i-1]<-170 && RSI[i-1]<32 && candle_lo>0 && i-pricestats.vwap_idx>25 && MA50[i-1]<VWAP[i-1] && high[i-1]<MA25[i-1] && low[i-1]<loBand[i-1]) aux_dir=0;
              }
              if (aux_dir<-2 && aux_dir>-10 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.VWAP_UP && low[i-1]>VWAP[i-1] && body_down<MA25[i-1]-MA50[i-1] && ((low[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1]) || (low[i-1]<MA25[i-1] && close[i-1]>MA25[i-1]) || (low[i-1]<MA50[i-1] && close[i-1]>MA50[i-1]))) aux_dir++;
              if (aux_dir>-10 && date_candle.hour>13 && high[i-1]>MAFast[i-1] && high[i-1]>MA25[i-1] && high[i-1]>MA50[i-1] && high[i-1]>MA100[i-1])
                 if (low[i-1]<MAFast[i-1] && low[i-1]<MA25[i-1] && low[i-1]<MA50[i-1] && low[i-1]>MA100[i-1]) aux_dir++;
              }
        }
     }
     if (date_candle.hour>10 && date_candle.hour<14) {
        if (type==0) {
           // Close position
           if (apftrade.trade_dir==1 && filter.tdf_color!=1) {
              if (filter.HILO_INVERTSELL && mycounters.c_down>1 && CCI[i-1]<30 && MFI[i-1]<90 && RSI[i-1]<58) 
                 if (body_down>0 && close[i-1]<HILO2[i-1])
                    aux_dir-=5;
           }
           else if (apftrade.trade_dir==2 && filter.tdf_color!=2) {
              if (filter.HILO_INVERTBUY && mycounters.c_up>1 && CCI[i-1]>-30 && MFI[i-1]>20 && RSI[i-1]>28) 
                 if (body_up>0 && close[i-1]>HILO2[i-1])
                    aux_dir+=5;
           }
        }

        if (filter.MED_DOWN && ((type==0 && apftrade.trade_dir==1) || (type==1 && body_down>0 && body_down>2*candle_lo && body_down>2*candle_hi)))
           if (filter.HILO_INVERTSELL && CCI[i-1]<0 && Force[i-1]<0 && MFI[i-1]>20 && RSI[i-1]<55 && MAFast[i-1]<MAFast[i-2])
              if (close[i-1]<VWAP[i-1] && close[i-1]<(open[i-2]+close[i-2])/2 && close[i-1]<MAFast[i-1])
                 aux_dir-=5;
     }


     if (type==1) {
        // Open position
        if (pricestats.bars_day>2 && i>1) {
           if (aux_dir>9) {
              ret=1;
           }
           else if (aux_dir<-9) {
              ret=2;
           }
        }
     }
     else if (type==0 && apftrade.bars_trade>1) {
        // Close position
        if ((apftrade.trade_dir==1 && aux_dir<-3) || (apftrade.trade_dir==2 && aux_dir>3)) {
           ret=0;
           apftrade.trade_dir=0;
        }
        else ret=apftrade.trade_dir;
     }

     return(ret);
  }
//+------------------------------------------------------------------+
