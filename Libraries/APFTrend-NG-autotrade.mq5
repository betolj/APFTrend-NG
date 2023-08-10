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

     int id=i-1;
     int trade_start=0, force_trade=0;
     bool VOLUME_UP = tick_volume[id]>tick_volume[id-1];
     double gain_pts=0, loss_pts=0;
     double aux_abs = MathAbs(close[id]-open[id]);
     double aux_abslast = MathAbs(close[id-1]-open[id-1]);
     double vwap_distance = MathAbs(close[id]-VWAP[id]);
     double auxlast_abs = MathAbs(close[i]-open[i]);
     double auxlast_abslast = MathAbs(close[id]-open[id]);
     double candlelast_hi = high[id]-MathMax(open[id],close[id]);
     double candlelast_lo = MathMin(open[id],close[id])-low[id];

     aux_abs=MathAbs(close[id]-open[id]);
     aux_abslast=MathAbs(close[id-1]-open[id-1]);
     body_up=close[id]-open[id];
     body_down=open[id]-close[id];
     candle_lo=(MathMin(open[id],close[id])-low[id]);
     candle_hi=(high[id]-MathMax(open[id],close[id]));
     bool chk_up=(body_up>0 || type==0);
     bool chk_down=(body_down>0 || type==0);
     
     bool VWAP_CROSS = (high[id]>VWAP[id] && low[id]<VWAP[id]);
     bool VWAP_LASTCROSS = (high[id-1]>VWAP[id-1] && low[id-1]<VWAP[id-1]);

     TimeToStruct(time[id],date_candle);
     initCandleMetrics(open[id], close[id], high[id], low[id]);


     // Manual trades
     if (type==1) {
        if (date_candle.hour>10 && date_candle.hour<16 && stdDev[id]<4*aux_abs) {
           if (body_up>0 && MFI[id]<75 && CCI[id]>-50 && filter.HILO_BUY && mycounters.hilobuy<12 && MFI[id]<95 && LR[id]>LR[id-1] && close[id]>LR[id] && close[id]>MAFast[id] && close[id]>MA25[id]) aux_dir+=2;
           else if (body_down>0 && MFI[id]>20 && CCI[id]<50 && filter.HILO_SELL && mycounters.hilosell<12 && MFI[id]>10 && LR[id]<LR[id-1] && close[id]<LR[id] && close[id]<MAFast[id] && close[id]<MA25[id]) aux_dir-=2;
        }
        if (i>5) {
           if (mycounters.c_up<4 && close[id]>(open[id-1]+close[id-1])/2 && MFI[id-2]<30 && close[id]>HILO2[id] && MA200[id]>=MA200[id-1] && close[i-5]>MA200[i-5] && low[id]<MA200[id] && close[id]>MA200[id]) {
               if (filter.VWAP_CROSS && close[id]<VWAP[id] && RSI[id]<55 && MFI[id]<60);
               else if (type==1 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.HILO_SELL && filter.SAR_SELL && filter.MIBAND_DOWN && date_candle.hour>15 && RSI[id]<50 && MFI[id]>50 && close[id]<miBand[id]);
               else if (filter.HILO_SELL && (date_candle.hour>16 || (date_candle.hour>11 && date_candle.hour<15)) && CCI[id]<-70 && Force[id]<0 && RSI[id]<50 && close[id]-HILO2[id]<body_up && close[id]<high[id-1] && high[id]<VWAP[id] && MAFast[id]<MA25[id] && high[id]<MAFast[id]);
               else {
                  force_trade=1;
                  aux_dir+=15;
               }
           }
           if (mycounters.c_down<4 && close[id]<(open[id-1]+close[id-1])/2 && MFI[id-2]>-30 && close[id]<HILO2[id] && MA200[id]<=MA200[id-1] && close[i-5]<MA200[i-5] && high[id]>MA200[id] && close[id]<MA200[id]) {
              if (filter.VWAP_CROSS && close[id]>VWAP[id] && RSI[id]>45 && MFI[id]>40);
              else if (type==1 && filter.NO_VWAPCROSS && filter.VWAP_UP && filter.HILO_BUY && filter.SAR_BUY && filter.MIBAND_UP && date_candle.hour>15 && RSI[id]>50 && MFI[id]<50 && close[id]>miBand[id]);
              else if (filter.HILO_BUY && (date_candle.hour>16 || (date_candle.hour>11 && date_candle.hour<15)) && CCI[id]>70 && Force[id]>0 && RSI[id]>50 && HILO2[id]-close[id]<body_down && close[id]>low[id-1] && low[id]>VWAP[id] && MAFast[id]>MA25[id] && low[id]>MAFast[id]);
              else {
                 force_trade=1;
                 aux_dir-=15;
              }
           }
           if (pricestats.bars_day>6) {
              if (filter.HILO_BUY && filter.MIBAND_UP && MFI[id]<95 && RSI[id]<75 && RSI[id]>55 && body_up>0 && candle_lo>body_up && low[id]<HILO[id] && close[id]>(open[id-1]+close[id-1])/2 && open[id]<MAFast[id] && close[id]>MAFast[id]) {
                 force_trade=1;
                 aux_dir+=10;
              }
              else if (filter.HILO_SELL && filter.MIBAND_DOWN && MFI[id]>15 && RSI[id]>25 && RSI[id]<45 && body_down>0 && candle_hi>body_down && high[id]>HILO[id] && close[id]<(open[id-1]+close[id-1])/2 && open[id]<MAFast[id] && close[id]>MAFast[id]) {
                 force_trade=1;
                 aux_dir-=10;
              }
           }
        }
        if (VOLUME_UP && pricestats.bars_day>3 && date_candle.hour<16) {
           if (filter.VWAP_CROSS && !filter.VWAP_LASTCROSS && aux_abs>aux_abslast && candle_hi<aux_abs && candle_lo<aux_abs && stdDev[id]<4*aux_abs) {
              if (filter.HILO_BUY && filter.SAR_BUY && mycounters.sarbuy<10 && mycounters.hilobuy<10 && MFI[id]<90 && body_up>0 && close[id]>MAFast[id]) {
                 if (close[id]>LR[id] && LR[id]>LR[id-1] && close[id]>high[id-1] && open[id]<VWAP[id] && close[id]>VWAP[id] && close[id-1]<VWAP[id-1] && open[id-2]>VWAP[id-2] && close[id-2]<VWAP[id-2]) aux_dir+=10;
              }
              else if (filter.HILO_SELL && filter.SAR_SELL && mycounters.hilosell==pricestats.bars_day && mycounters.sarsell<10 && mycounters.hilosell<10 && MFI[id]>15 && body_down>0 && close[id]<MAFast[id]) {
                 if (close[id]<LR[id] && LR[id]<LR[id-1] && close[id]<low[id-1] && close[id]<(open[id-2]+close[id-2])/2 && open[id]>VWAP[id] && close[id]<VWAP[id] && close[id-1]>VWAP[id-1] && open[id-2]<VWAP[id-2] && close[id-2]>VWAP[id-2]) aux_dir-=10;
              }
           }
           else if (filter.NO_VWAPCROSS && aux_abs>aux_abslast) {
              if (body_up>0 && RSI[id]>40 && RSI[id]<70 && body_up>3*candle_hi && MA200[id]>MA200[id-1] && low[id]<loBand2[id]) {
                 if (close[id]>high[id-1] && close[id]>HILO2[id] && high[id]<VWAP[id] && low[id-2]>MA200[id-2] && high[id-1]>MA200[id-1] && low[id-1]<MA200[id-1] && close[id]-MA200[id]>2*(MA200[id]-open[id])) {
                    aux_dir+=10;
                    force_trade=1;
                 }
              }
              else if (body_down>0 && RSI[id]<60 && RSI[id]>30 && body_down>3*candle_lo && MA200[id]<MA200[id-1] && high[id]>upBand2[id])
                 if (close[id]<low[id-1] && close[id]<HILO2[id] && low[id]>VWAP[id] && high[id-2]<MA200[id-2] && low[id-1]<MA200[id-1] && high[id-1]>MA200[id-1] && MA200[id]-close[id]>2*(open[id]-MA200[id])) {
                    aux_dir-=10;
                    force_trade=1;
                 }
           }
        }
        if (pricestats.bars_day>8 && date_candle.hour<17 && aux_abs>candle_hi && aux_abs>candle_lo) {
           if (body_down>0) {
              if (mycounters.c_down>1 && aux_abs<aux_abslast/2 && candle_lo>0);
              else if (mycounters.c_down>1 && mycounters.hilosell>5 && high[id]<VWAP[id] && (low[id]<loBand2[id] || MFI[id]<20));
              else if (filter.VWAP_CROSS && filter.HILO_INVERTSELL && candle_lo>0 && date_candle.hour<10);
              else if (filter.HILO_SELL && filter.tdf_color!=1 && mycounters.c_down==2 && mycounters.hilosell<16 && MFI[id]>10 && body_down>2*candle_lo)
                 if(open[id-1]>VWAP[id-1] && MAFast[id]<MA25[id] && high[id-1]>MAFast[id-1] && close[id]<MAFast[id]) aux_dir-=10;
           }
           else if (body_up>0) {
              if (mycounters.c_up>1 && aux_abs<aux_abslast/2 && candle_hi>0);
              else if (mycounters.c_up>1 && close[id]>VWAP[id] && open[id-1]<MA200[id-1] && close[id]>MA200[id]);
              else if (mycounters.c_up>1 && mycounters.hilobuy>5 && low[id]>VWAP[id] && (high[id]>upBand2[id] || MFI[id]>80));
              else if (filter.VWAP_CROSS && filter.HILO_INVERTBUY && candle_hi>0 && date_candle.hour<10);
              else if (filter.HILO_BUY && filter.tdf_color!=2 && mycounters.c_up==2 && mycounters.hilobuy<16 && MFI[id]<90 && body_up>2*candle_hi)
                 if(open[id-1]<VWAP[id-1] && MAFast[id]>MA25[id] && low[id-1]<MAFast[id-1] && close[id]>MAFast[id]) aux_dir+=10;
           }
        }
        if (type==1 && (date_candle.hour>10 || (date_candle.hour==10 && date_candle.min>30)) && i-pricestats.vwap_idx<30) {
           // Generic Long bollinger or HiLo trade
           if (filter.NO_VWAP_CROSS && mycounters.c_up<3 && body_up>0 && CCI[id-1]<-150 && CCI[id]-CCI[id-1]>30 && open[id]<MAFast[id] && high[id]<VWAP[id] && low[id]>low[id-1] && low[id-2]>low[id-1] && low[id-1]<loBand[id-1] && open[id]>loBand2[id]) {
              if (filter.HILO_SELL && filter.SAR_SELL && (stdDev[id]<aux_abs/2 || ATR[id]<aux_abs/2));
              else if (filter.HILO_SELL && (Force[id]>1 || (date_candle.hour==16 && date_candle.min>35) || (high[id]>HILO[id] && close[id]<HILO[id])));
              else aux_dir+=14;
           }
           else if (vwap_distance<2*aux_abs) {
              if (filter.tdf_color!=2 && filter.VWAP_UP && filter.MIBAND_UP && filter.HILO_BUY && mycounters.hilobuy<15 && low[id]<HILO[id] && open[id]>HILO[id])
                 if (body_up>0 && close[id]>high[id-1] && CCI[id]>-35 && CCI[id]<100 && MFI[id]<90 && open[id]<MAFast[id] && close[id]>MAFast[id] && open[id]<MA50[id] && close[id]>MA50[id])
                    aux_dir+=10;
           }
        }
     }
     if (pricestats.bars_day>5 && date_candle.hour<16 && aux_abs>aux_abslast) {
        if (VOLUME_UP && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>8) {
           if (body_down>0 && body_down>candle_lo && close[id]<low[id-1] && low[id]>VWAP[id] && VWAP[id]-VWAP[pricestats.vwap_idx]<body_down) 
              if (MFI[id]>45 && close[id]<HILO2[id] && CCI[id]<50 && MFI[id-1]>70 && open[id]>MAFast[id] && close[id]<MAFast[id] && (high[id-1]>upBand[id-1] || high[id-2]>upBand[id-2])) aux_dir-=10;
        }
        else if (type==1 && filter.VWAP_CROSS && aux_abs>2*aux_abslast && high[id-1]>VWAP[id-1] && low[id-1]<VWAP[id-1] && high[id-2]>VWAP[id-2] && low[id-2]<VWAP[id-2]) {
           if (mycounters.c_down<3 && close[id]>LR[id] && RSI[id]<60 && RSI[id]>30 && MFI[id-1]>85 && body_down>0 && body_down>candle_lo && close[id]<low[id-1])
              if (close[id]<VWAP[id] && close[id-1]>VWAP[id-1] && open[id]>MAFast[id] && close[id]<MAFast[id] && MA200[id]<MA200[id-1]) aux_dir-=10;
        }
        if (type==1 && pricestats.bars_day>8 && aux_abs>aux_abslast && aux_abs>candle_hi/2 && aux_abs>candle_lo/2) {
           if (mycounters.c_up<3 && body_up>0 && CCI[id-2]<-210 && CCI[id]>-110 && close[id]>HILO2[id]) aux_dir+=15;
           else if (mycounters.c_down<3 && body_down>0 && CCI[id-2]>210 && CCI[id]<110 && close[id]<HILO2[id] && high[id-2]>upBand[id-2]) aux_dir-=15;

           if (date_candle.hour>12) {
              if (mycounters.c_up<3 && body_up>0 && body_up>2*candle_hi && close[id]>high[id-1] && (CCI[id-1]<-210 || CCI[id-2]<-210) && close[id-2]<loBand[id-1] && open[id]<VWAP[id]) aux_dir+=15;
              else if (mycounters.c_down<3 && body_down>0 && body_down>2*candle_lo && close[id]<low[id-1] && (CCI[id-1]>200 || CCI[id-2]>200) && close[id-2]>upBand[id-1] && open[id]>VWAP[id]) aux_dir-=15;
           }
        }
     }
     if (type==1 && date_candle.hour>9 && date_candle.hour<16 && i-pricestats.vwap_idx<16 && ATR[id]>aux_abs) {
        if (low[id]>low[id-1] && high[id]>MA25[id] && low[id]<MA25[id] && high[id]>MA50[id] && low[id]<MA50[id] && high[id]>MA100[id] && low[id]<MA100[id]);
        else if (body_down>0 && body_down>candle_lo && open[id]>VWAP[id] && close[id]<(high[id-1]+low[id-1])/2 && CCI[id]<15)
           if (MA100[id]>MA50[id] && MA50[id]>MA25[id] && open[id]>MA100[id] && close[id]<MA100[id] && open[id]>MA50[id] && close[id]<MA50[id]) aux_dir-=10;

           if (type==1 && aux_abs>3*candle_hi && aux_abs>3*candle_lo) {
              if (high[id]>MA100[id] && low[id]<MA100[id] && high[id]>MA50[id] && low[id]<MA50[id] && high[id]>MA25[id] && low[id]<MA25[id]);
              else {
                 if (filter.HILO_BUY && mycounters.hilobuy<6 && body_up>0 && close[id]>high[id-1] && high[id]<upBand[id])
                    if (low[id]<HILO[id] && open[id]<VWAP[id] && open[id]<MA50[i-1] && close[id]>MAFast[id]) aux_dir+=10;
   
                 if (filter.HILO_SELL && mycounters.hilosell<6 && body_down>0 && close[id]<low[id-1] && low[id]>loBand[id])
                    if (high[id]>HILO[id] && open[id]>VWAP[id] && open[id]>MA50[id] && close[id]<MAFast[id]) aux_dir-=10;
              }
           }
     }
     if (date_candle.hour==14 && date_candle.min>25) {
        if (i-pricestats.vwap_idx<30) {
           if ((type==1 || filter.tdf_color==1) && filter.HILO_INVERTBUY && body_up>0 && MFI[id]>30 && close[id]>HILO2[id] && high[id]<MAFast[id] && close[id]>MAFast[id])
              aux_dir+=10;
   
           if ((type==1 || filter.tdf_color==2) && filter.HILO_INVERTSELL && body_down>0 && MFI[id]<70 && close[id]<HILO2[id] && high[id]>MAFast[id] && close[id]<MAFast[id])
              aux_dir-=10;
        }
     
        if (type==1 && filter.NO_VWAPCROSS && (tick_volume[id]>tick_volume[id-1] || tick_volume[id]>tick_volume[id-2])) {
           if (mycounters.c_up==2 && body_up>0 && RSI[id-2]<25 && CCI[id-2]<-135 && CCI[id]>-70 && high[id]<VWAP[id] && (high[id]>HILO[id] || high[id]>HILO2[id]) && close[id]-low[id]>2*aux_abslast && close[id]>high[id-1] && close[id]>(open[id-2]+close[id-2])/2 && close[id-2]<loBand2[id-2] && close[id]>loBand2[id]) aux_dir+=20;
           else if (mycounters.c_down==2 && body_down>0 && RSI[id-2]>75 && CCI[id-2]>135 && CCI[id]<70 && low[id]>VWAP[id] && (low[id]<HILO[id] || low[id]<HILO2[id]) && high[id]-close[id]>2*aux_abslast && close[id]<low[id-1] && close[id]<(open[id-2]+close[id-2])/2 && close[id-2]>upBand2[id-2] && close[id]<upBand2[id]) aux_dir-=20;
        }
     }
     if (date_candle.hour<16 && aux_abs>2*candle_hi && aux_abs>2*candle_lo) {
        if (mycounters.c_up==2 && CCI[id-2]<-110 && RSI[id]>45 && low[id-1]<loBand[id-1]) {
           if (CCI[id]-CCI[id-2]>70 && RSI[id-2]<30 && pricestats.max_dayprice-close[id]>5*aux_abs)
              if (open[id]<VWAP[id] && close[id]>high[id-1] && close[id]>high[id-2] && open[id]<MAFast[id] && close[id]>MAFast[id] && open[id]<MA200[id] && close[id]>MA200[id]) aux_dir+=5;

           if (CCI[id-2]<-150 && CCI[id]-CCI[id-2]>50 && low[id]-low[id-1]>aux_abslast && aux_abs>aux_abslast && aux_abs>3*candle_hi && aux_abs>3*candle_lo)
              if (open[id]<VWAP[id] && close[id]>VWAP[id] && open[id]<MAFast[id] && close[id]>MAFast[id] && low[id-1]<loBand2[id-1] && low[id]>loBand2[id] && close[id]>loBand[id] && high[id]<upBand[id]) aux_dir+=12;
        }
        else if (mycounters.c_down==2 && CCI[id-2]>110 && high[id-1]>upBand[id-1]) {
           if (CCI[id-2]-CCI[id]>70 && RSI[id-2]>65 && close[id]-pricestats.min_dayprice>5*aux_abs)
              if (open[id]>VWAP[id] && close[id]<low[id-1] && close[id]<low[id-2] && open[id]>MAFast[id] && close[id]<MAFast[id] && open[id]>MA200[id] && close[id]<MA200[id]) aux_dir-=5;

           if (mycounters.c_down==2 && CCI[id-2]>150 && CCI[id-2]-CCI[id]>50 && RSI[id]<55 && high[id-1]-high[id]>aux_abslast && aux_abs>aux_abslast && aux_abs>3*candle_hi && aux_abs>3*candle_lo)
              if (open[id]>VWAP[id] && close[id]<VWAP[id] && open[id]>MAFast[id] && close[id]<MAFast[id] && high[id-1]>upBand2[id-1] && high[id]<upBand2[id] && close[id]<upBand[id] && low[id]>loBand[id]) aux_dir-=12;
        }
     }

     if (filter.VWAP_CROSS && pricestats.bars_day>6 && date_candle.hour<15) {
        if (filter.VWAP_LASTCROSS && type==1) {
           if (mycounters.c_up==1 && CCI[id-1]<-200 && body_up>0 && close[id]>(open[id-1]+close[id-1])/2 && low[id-1]<loBand2[id-1] && low[id-2]>VWAP[id-2])
              if (body_up>3*candle_hi && body_up>2*candle_lo && MA50[id]>MA100[id] && open[id-1]>MA50[id-1] && close[id]>MA50[id] && close[id]-VWAP[id]>(VWAP[id]-open[id])/2) aux_dir+=14;

           if (mycounters.c_down==1 && CCI[id-1]>200 && body_down>0 && close[id]<(open[id-1]+close[id-1])/2 && high[id-1]>upBand2[id-1] && high[id-2]<VWAP[id-2])
              if (body_down>3*candle_lo && body_down>2*candle_hi && (VOLUME_UP || high[id]<high[id-1]) && MA50[id]<MA100[id] && open[id-1]<MA50[id-1] && close[id]<MA50[id] && VWAP[id]-close[id]>(open[id]-VWAP[id])/2) aux_dir-=14;
        }
        if (filter.HILO_INVERTBUY && filter.SAR_INVERTBUY && body_up>0 && close[id]>high[id-1] && high[id-1]<VWAP[id-1] && open[id]<VWAP[id] && close[id]>VWAP[id]) {
           if (MFI[id]>50 && RSI[id]>40 && RSI[id]<80 && open[id]<MAFast[id] && close[id]>MAFast[id] && MathMin(open[id-2],close[id-2])>loBand[id-2]) {
              aux_dir+=10;
              force_trade=1;
           }
        }
        else if (filter.HILO_INVERTSELL && filter.SAR_INVERTSELL && body_down>0 && close[id]<low[id-1] && low[id-1]>VWAP[id-1] && open[id]>VWAP[id] && close[id]<VWAP[id]) {
           if (MFI[id]<50 && RSI[id]<60 && RSI[id]>20 && open[id]>MAFast[id] && close[id]<MAFast[id] && MathMax(open[id-2],close[id-2])>upBand[id-2]) {
              aux_dir-=10;
              force_trade=1;
           }
        }
        if (type==0 && aux_abs>aux_abslast) {
           if (mycounters.c_up==2 && Force[id]>0 && CCI[id-1]<-150 && low[id-1]<=pricestats.min_dayprice && close[id-1]<loBand[id-1])
              if (CCI[id]-CCI[id-1]>30 && close[id]>(high[id-1]+low[id-1])/2 && high[id-1]<VWAP[id-1] && open[id]<MAFast[id] && close[id]>MAFast[id])
                 aux_dir+=6;

           if (mycounters.c_down==2 && Force[id]<0 && CCI[id-1]>150 && high[id-1]>=pricestats.max_dayprice && close[id-1]>upBand[id-1])
              if (CCI[id-1]-CCI[id]>30 && close[id]<(high[id-1]+low[id-1])/2 && low[id-1]>VWAP[id-1] && open[id]>MAFast[id] && close[id]<MAFast[id])
                 aux_dir-=6;
        }
     }


     // Indicator probabilistic
     if (type==1) {
        if (date_candle.hour<17) {
           if (filter.HILO_INVERTBUY) {
              aux_dir+=8;
              if (CCI[i-1]<200 && close[i-1]>MAFast[i-1] && open[i-1]<MA50[i-1] && close[i-1]>MA50[i-1]) aux_dir++;
           }
           else if (filter.HILO_INVERTSELL) {
              if (CCI[i-1]>-200 && close[i-1]<MAFast[i-1] && open[i-1]>MA50[i-1] && close[i-1]<MA50[i-1]) aux_dir--;
              aux_dir-=8;
           }
        }
        if (close[i-1]>LR[i-1]) aux_dir++;
        else if (close[i-1]<LR[i-1]) aux_dir--;
        if (close[i-1]>MAFast[i-1]) aux_dir++;
        else if (close[i-1]<MAFast[i-1]) aux_dir--;

        if (filter.NO_VWAPCROSS && i-pricestats.vwap_idx>2 && i-pricestats.vwap_idx<6) {
           if (mycounters.c_up==2 && CCI[i-3]<-150 && low[i-3]>loBand2[i-3] && close[i-1]>high[i-2] && close[i-1]>HILO2[i-1] && MAFast[i-1]-high[i-1]>aux_abs)
              aux_dir+=15;
      
           if (mycounters.c_down==2 && CCI[i-3]>150 && high[i-3]>upBand[i-3] && close[i-1]<low[i-2] && close[i-1]<HILO2[i-1] && low[i-1]-MAFast[i-1]>aux_abs)
              aux_dir-=15;
        }
        else if (filter.VWAP_CROSS) {
           if (date_candle.hour<16) {
              if (mycounters.c_up==2 && filter.HILO_BUY && filter.tdf_color==1 && CCI[i-1]<150 && MFI[i-1]<95 && pricestats.max_lastdayprice-high[i-1]>3*aux_abs)
                 if (close[i-1]>high[i-2] && body_up>2*candle_hi && MAFast[i-1]>MA25[i-1] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && open[i-1]<MA50[i-1] && close[i-1]>MA50[i-1]) aux_dir+=10;
   
              if (mycounters.c_down==2 && filter.HILO_SELL && filter.tdf_color==2 && CCI[i-1]>-150 && MFI[i-1]>10 && low[i-1]-pricestats.min_lastdayprice>3*aux_abs)
                 if (close[i-1]<low[i-2] && body_down>2*candle_lo && MAFast[i-1]<MA25[i-1] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && open[i-1]>MA50[i-1] && close[i-1]<MA50[i-1]) aux_dir-=10;
           }

           if (filter.VWAP_LASTCROSS && pricestats.bars_day>5 && date_candle.hour<16) {
              if (filter.HILO_BUY && CCI[i-1]<150 && CCI[i-1]>-50 && MFI[i-1]<90 && body_up>2*candle_hi && close[i-1]>(open[i-2]+close[i-2])/2) {
                 if (Force[i-1]>0 && low[i-3]>VWAP[i-3] && close[i-1]>VWAP[i-1] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && close[i-1]<upBand2[i-1]) {
                    aux_dir+=10;
                    force_trade=1;
                 }
              }
              else if (filter.HILO_SELL && CCI[i-1]>-150 && CCI[i-1]<50 && MFI[i-1]>20 && body_down>2*candle_lo && close[i-1]<(open[i-2]+close[i-2])/2) {
                 if (Force[i-1]<0 && high[i-3]<VWAP[i-3] && close[i-1]<VWAP[i-1] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && close[i-1]>loBand2[i-1]) {
                    aux_dir-=10;
                    force_trade=1;
                 }
              }
              if ((date_candle.min==15 || date_candle.min==30) && stdDev[i-1]<3*aux_abs && aux_abs>candle_hi && aux_abs>candle_lo) {
                 if (mycounters.c_up==1 && filter.tdf_color!=2 && CCI[i-1]>-110 && CCI[i-2]<-150 && body_up>candle_hi && close[i-1]>(open[i-2]+close[i-2])/2) {
                    if (candle_hi<aux_abslast && CCI[i-1]-CCI[i-2]>100 && low[i-1]<loBand2[i-1] && close[i-1]<upBand[i-1] && MAFast[i-1]-close[i-1]<candle_hi) {
                       aux_dir+=12;
                       force_trade=1;
                    }
                 }
                 if (mycounters.c_down==1 && filter.tdf_color!=1 && CCI[i-1]<110 && CCI[i-2]>150 && body_down>candle_lo && close[i-1]<(open[i-2]+close[i-2])/2) {
                    if (candle_lo<aux_abslast && CCI[i-2]-CCI[i-1]>100 && high[i-1]>upBand2[i-1] && close[i-1]>loBand[i-1] && close[i-1]-MAFast[i-1]<candle_lo) {
                       aux_dir-=12;
                       force_trade=1;
                    }
                 }
              }
           }
        }
        if (i>5 && date_candle.hour<16 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx<10 && aux_abs>candle_hi && aux_abs>candle_lo) {
           if (body_up>0 && body_up>candle_hi && high[i-1]<VWAP[i-1]) {
              if (high[i-3]<VWAP[i-3] && CCI[i-3]<-240 && CCI[i-1]-CCI[i-3]>150 && low[i-3]<loBand2[i-3]) aux_dir+=15;
              else if (high[i-4]<VWAP[i-4] && CCI[i-4]<-240 && CCI[i-1]-CCI[i-4]>150 && low[i-4]<loBand2[i-4]) aux_dir+=15;
           }
           else if (body_down>0 && body_down>candle_lo && low[i-1]>VWAP[i-1]) {
              if (low[i-3]>VWAP[i-3] && CCI[i-3]>240 && CCI[i-3]-CCI[i-1]>150 && high[i-3]>upBand2[i-3]) aux_dir-=15;
              else if (low[i-4]>VWAP[i-4] && CCI[i-4]>240 && CCI[i-4]-CCI[i-1]>150 && high[i-4]>upBand2[i-4]) aux_dir-=15;
           }
        }

        if (mycounters.c_up==2 && body_up>2*candle_hi) {
           if (CCI[i-3]<-120) {
              if (open[i-1]<VWAP[i-1] && close[i-1]>high[i-2] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && low[i-1]>loBand2[i-1] && high[i-1]<upBand2[i-1]) {
                 aux_dir+=5;
                 if (open[i-1]<MA200[i-1] && close[i-1]>MA200[i-1]) aux_dir+=3;
              }
              if (RSI[i-3]<25 && close[i-1]<VWAP[i-1] && high[i-2]<MAFast[i-2] && close[i-2]<HILO2[i-2] && CCI[i-1]-CCI[i-3]>90) aux_dir+=15;
           }
        }
        else if (mycounters.c_down<2 && body_down>2*candle_lo) {
           if (CCI[i-3]>120) {
              if (open[i-1]>VWAP[i-1] && close[i-1]<low[i-2] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && high[i-1]<upBand2[i-1] && low[i-1]>loBand2[i-1]) {
                 aux_dir-=5;
                 if (open[i-1]>MA200[i-1] && close[i-1]<MA200[i-1]) aux_dir-=3;
              }
              if (RSI[i-3]>75 && close[i-1]>VWAP[i-1] && low[i-2]>MAFast[i-2] && close[i-2]>HILO2[i-2] && CCI[i-3]-CCI[i-1]>90) aux_dir-=15;
           }
        }

        // Trade check
        if (aux_dir>1) {
           if (aux_dir>3 && high[i-1]>upBand2[i-1]) aux_dir-=2;
           if (aux_dir>3 && filter.HILO_SELL && candle_hi>aux_abs && high[i-1]>HILO[i-1] && close[i-1]<HILO[i-1]) aux_dir=0;
           if (aux_dir>3 && filter.HILO_INVERTBUY) {
              if (filter.VWAP_CROSS && (low[i-1]<MA25[i-1] || low[i-1]<MA100[i-1]) && high[i-1]>MA50[i-1] && close[i-1]<MA50[i-1] && high[i-1]>=pricestats.max_dayprice) aux_dir=0;
              if (aux_dir>3 && filter.VWAP_CROSS && ((high[i-1]>MA25[i-1] && close[i-1]<MA25[i-1]) || (high[i-1]>MA100[i-1] && close[i-1]<MA100[i-1]))) aux_dir--;
              if (aux_dir>3 && CCI[i-1]>190 && i-pricestats.vwap_idx>6 && low[i-1]>VWAP[i-1]) aux_dir-=2;
              if (aux_dir>3 && date_candle.hour<11 && mycounters.c_up>2 && stdDev[i-1]>3*MathAbs(CCI[i-1]) && CCI[i-1]>100 && high[i-1]>upBand[i-1]) aux_dir=0;
              if (aux_dir>3 && date_candle.hour<12 && mycounters.c_up>2 && pricestats.hilo_count>2 && candle_hi>0 && low[i-1]>VWAP[i-1] && close[i-1]>HILO[i-2] && high[i-1]>upBand2[i-1] && open[i-1]>MA25[i-1]) aux_dir=0;
              if (aux_dir>3 && date_candle.hour<12 && mycounters.c_up==1 && pricestats.hilo_count>3 && filter.VWAP_CROSS && CCI[i-1]>60 && high[i-2]<VWAP[i-2] && close[i-1]<MA50[i-1] && MA200[i-1]>MA100[i-1] && MA100[i-1]>MA50[i-1] && MA200[i-1]<MA200[i-2] && MA100[i-1]<MA100[i-2]) aux_dir--;
              if (aux_dir>3 && date_candle.hour>13 && force_trade==0 && CCI[i-1]>100 && MA50[i-1]>VWAP[i-1] && low[i-1]>VWAP[i-1] && low[i-1]>MA50[i-1] && high[i-1]>upBand[i-1] && close[i-1]-MAFast[i-1]>2*(MAFast[i-1]-open[i-1])) aux_dir-=3;
              if (aux_dir>3 && date_candle.hour>12 && pricestats.hilo_count>6 && force_trade==0 && close[i-1]<MA50[i-1] && CCI[i-1]>110 && MA200[i-1]>MA100[i-1] && MA100[i-1]>MA50[i-1] && MA50[i-1]>MA25[i-1]) aux_dir--;
              if (aux_dir>3 && date_candle.hour>12 && pricestats.hilo_count>6 && high[i-1]>MA50[i-1] && close[i-1]<MA50[i-1] && vwap_distance<aux_abs/2) aux_dir=0;
              if (date_candle.hour>15 && close[i-1]<MA25[i-1] && MA100[i-1]>MA50[i-1] && MA50[i-1]>MA25[i-1]) aux_dir=0;
           }
           if (CCI[i-1]>200 && (filter.HILO_INVERTBUY || filter.SAR_INVERTBUY || filter.HILO_INVERTSELL || filter.SAR_INVERTSELL)) aux_dir=0;
           if (aux_dir>3 && pricestats.hilo_count>6 && filter.HILO_INVERTBUY && CCI[i-1]>150 && i-pricestats.vwap_idx>6 && MA50[i-1]>VWAP[i-1] && upBand[i-1]-high[i-1]<aux_abs/3)
              if (low[i-1]>VWAP[i-1] && high[i-1]>MAFast[i-1] && low[i-1]<MAFast[i-1] && candle_hi>0 && (CCI[i-1]>190 || date_candle.hour>13)) aux_dir=0;
        }
        else if (aux_dir<-1) {
           if (aux_dir<-3 && low[i-1]<loBand2[i-1]) aux_dir+=2;
           if (aux_dir<-3 && filter.HILO_BUY && candle_lo>aux_abs && low[i-1]<HILO[i-1] && close[i-1]>HILO[i-1]) aux_dir=0;
           if (aux_dir<-3 && filter.HILO_INVERTSELL) {
              if (filter.VWAP_CROSS && (high[i-1]>MA25[i-1] || high[i-1]>MA100[i-1]) && low[i-1]<MA50[i-1] && close[i-1]>MA50[i-1] && low[i-1]<=pricestats.min_dayprice) aux_dir=0;
              if (aux_dir<-3 && filter.VWAP_CROSS && ((low[i-1]<MA25[i-1] && close[i-1]>MA25[i-1]) || (low[i-1]<MA100[i-1] && close[i-1]>MA100[i-1]))) aux_dir++;
              if (aux_dir<-3 && CCI[i-1]<-190 && i-pricestats.vwap_idx>6 && high[i-1]<VWAP[i-1]) aux_dir+=2;
              if (aux_dir<-3 && date_candle.hour<11 && mycounters.c_down>2 && stdDev[i-1]>3*MathAbs(CCI[i-1]) && CCI[i-1]<-100 && low[i-1]<loBand[i-1]) aux_dir=0;
              if (aux_dir<-3 && date_candle.hour<12 && mycounters.c_down>1 && pricestats.hilo_count>2 && candle_lo>0 && high[i-1]<VWAP[i-1] && close[i-1]<HILO[i-2] && low[i-1]<loBand[i-1] && open[i-1]<MA25[i-1]) aux_dir=0;
              if (aux_dir<-3 && date_candle.hour<12 && mycounters.c_down==1 && pricestats.hilo_count>3 && filter.VWAP_CROSS && CCI[i-1]<-60 && low[i-2]>VWAP[i-2] && close[i-1]>MA50[i-1] && MA200[i-1]<MA100[i-1] && MA100[i-1]<MA50[i-1] && MA200[i-1]>MA200[i-2] && MA100[i-1]>MA100[i-2]) aux_dir++;
              if (aux_dir<-3 && date_candle.hour>13 && force_trade==0 && CCI[i-1]<-200 && MA50[i-1]<VWAP[i-1] && high[i-1]<VWAP[i-1] && high[i-1]<MA50[i-1] && low[i-1]<loBand[i-1] && MAFast[i-1]-close[i-1]>2*(open[i-1]-MAFast[i-1])) aux_dir+=3;
              if (aux_dir<-3 && date_candle.hour>12 && pricestats.hilo_count>6 && force_trade==0 && stdDev[i-1]<aux_abs && close[i-1]>MA50[i-1] && CCI[i-1]<-150 && MA200[i-1]<MA100[i-1] && MA100[i-1]<MA50[i-1] && MA50[i-1]<MA25[i-1]) aux_dir++;
              if (aux_dir<-3 && date_candle.hour>12 && pricestats.hilo_count>6 && low[i-1]<MA50[i-1] && close[i-1]>MA50[i-1] && vwap_distance<aux_abs/2) aux_dir=0;
              if (date_candle.hour>15 && close[i-1]>MA100[i-1] && MA100[i-1]<MA50[i-1] && MA50[i-1]<MA25[i-1]) aux_dir=0;
           }
           if (CCI[i-1]<-200 && (filter.HILO_INVERTSELL || filter.SAR_INVERTSELL || filter.HILO_BUY || filter.SAR_BUY)) aux_dir=0;
           if (aux_dir<-3 && pricestats.hilo_count>6 && filter.HILO_INVERTSELL && CCI[i-1]<-150  && i-pricestats.vwap_idx>6 && MA50[i-1]<VWAP[i-1] && low[i-1]-loBand[i-1]<aux_abs/3)
              if (high[i-1]<VWAP[i-1] && high[i-1]>MAFast[i-1] && low[i-1]<MAFast[i-1] && candle_lo>0 && (CCI[i-1]<-190 || date_candle.hour>13)) aux_dir=0;
        }
     }


     if (force_trade==0) {
        if (filter.VWAP_CROSS && filter.VWAP_LASTCROSS) {
           if (aux_dir>2 && mycounters.c_up>1 && candle_hi>0) {
              if (close[id-1]>MAFast[id-1] && high[id]<MA200[id] && MA200[id]<MA200[id-1] && close[id]>VWAP[id] && (close[id]<high[id-1] || close[id]<high[id-2])) {
                 aux_dir=0;
              }
              else if (date_candle.hour>12 && filter.tdf_color==0 && RSI[id]>65 && MFI[id]>70 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_up>1 && body_up<aux_abslast) {
                 if (type==1) aux_dir=0;
                 else aux_dir=-4;
              }
           }
           else if (aux_dir<-2 && mycounters.c_down>1 && candle_lo>0) {
              if (close[id-1]<MAFast[id-1] && low[id]>MA200[id] && MA200[id]>MA200[id-1] && close[id]<VWAP[id] && (close[id]>low[id-1] || close[id]>low[id-2])) {
                 if (type==1) aux_dir=0;
                 else aux_dir=4;
              }
              else if (date_candle.hour>12 && filter.tdf_color==0 && MFI[id]<30 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_down>1 && body_down<aux_abslast) {
                 if (type==1) aux_dir=0;
                 else aux_dir=4;
              }
           }
        }
        if (type==1) {
           if (aux_dir>2) {
              if (force_trade==0 && CCI[id]>130 && close[id]>MA200[id] && MA200[id]>MA100[id]) aux_dir--;
              if ((low[id]<loBand2[id] || low[id-1]<loBand2[id-1]) && close[id]>loBand2[id] && close[id]<miBand[id]) {
                 aux_dir--;
                 if (close[id]<LR[id]) aux_dir-=2;
              }
              if (aux_dir>2 && filter.VWAP_CROSS && filter.HILO_INVERTBUY && MA100[id]>VWAP[id] && high[id-1]<VWAP[id-1] && open[id]<MAFast[id] && MA100[id]-high[id]<candle_hi) aux_dir=0;
              if (aux_dir>2 && filter.VWAP_CROSS && filter.HILO_INVERTBUY && close[id]<VWAP[id] && high[id-1]<VWAP[id-1] && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir=0;
              if (aux_dir>2 && date_candle.hour>15 && filter.VWAP_CROSS && high[id-1]<VWAP[id-1] && close[id]-VWAP[id]<aux_abs/5) aux_dir=0;
              if (aux_dir>2 && date_candle.hour>14 && (filter.HILO_INVERTBUY || filter.SAR_INVERTBUY) && CCI[id]>100 && (candle_hi>aux_abs/2 || high[id]>upBand[id]) && high[id-1]<MA25[id-1] && ((high[id]>MA50[id] && close[id]<MA50[id]) || (high[id]>MA100[id] && close[id]<MA100[id]))) aux_dir=0;
              if (aux_dir>2 && date_candle.hour>14 && filter.HILO_INVERTBUY && i-pricestats.vwap_idx>30 && MFI[id]>80 && CCI[id]>60 && low[id]-VWAP[id]>3*aux_abs) aux_dir-=3;
              if (aux_dir>2 && aux_dir<14 && force_trade==0 && pricestats.bars_day<4 && CCI[id]>100 && candle_hi>0 && open[id]>VWAP[id] && low[id-1]<MA25[id-1] && low[id]>MA100[id] && low[id]>MA200[id]) aux_dir=0;
              if (aux_dir>5 && aux_dir<14 && date_candle.hour==10 && force_trade==0 && open[id]<VWAP[id] && close[id]-VWAP[id]>2*(VWAP[id]-open[id]) && (close[id]>MA25[id] || close[id]>MA100[id]) && high[id]<MA50[id]) aux_dir=0;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour<11 && CCI[id]>90 && candle_hi>0 && high[id]>upBand[id] && (low[id]<loBand[id] || low[id-1]<loBand[id-1]) && MA100[id]>MA50[id] && MA50[id]>MA25[id] && high[id]>MA100[id] && low[id]<MA25[id]) aux_dir=0;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour>15 && CCI[id]>120 && MFI[id]>90 && RSI[id]>70 && low[id]>VWAP[id]) aux_dir-=2;
              if (aux_dir>2 && aux_dir<14 && filter.tdf_color==0 && mycounters.hilobuy>5 && CCI[id]>68 && CCI[id]-CCI[id-1]<1 && close[id]<high[id-1] && candle_hi>0 && low[id]>VWAP[id] && (tick_volume[id]<tick_volume[id-1] || tick_volume[id]<tick_volume[id-2])) aux_dir-=2;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour>12 && filter.NO_VWAPCROSS && CCI[id]>90 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && MA200[id]>MA100[id] && MA100[id]-MA50[id]>aux_abs && MA50[id]-MA25[id]>aux_abs/2) aux_dir=0;
              if (aux_dir>2 && filter.NO_VWAPCROSS && (filter.HILO_SELL || filter.SAR_SELL) && filter.MED_DOWN && (filter.tdf_color==2 || (i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && aux_abs<aux_abslast/2)) && close[id]<HILO2[id] && high[id]<MAFast[id]) aux_dir=0;
              if (filter.VWAP_CROSS && filter.VWAP_LASTCROSS) {
                 if (aux_dir>2 && mycounters.c_up==1 && CCI[id]>90 && RSI[id]>60 && close[id]>upBand[id] && high[id]>MA200[id] && low[id]<MA200[id] && high[id]>MA100[id] && MA100[id]>MA50[id] && MA50[id]>MA25[id]) aux_dir=0;
                 if (aux_dir>2 && mycounters.c_up==1 && stdDev[id]<aux_abs/2 && ((high[id]>upBand2[id] && high[id-1]>upBand2[id-1]) || (high[id]>upBand[id] && high[id-1]>upBand[id-1] && MA200[id]<MA200[id-1]))) aux_dir=0;
                 if (aux_dir>2 && MA200[id]>MA100[id] && MA100[id]>MA50[id] && MA50[id]>MA25[id] && high[id]>MA50[id] && close[id]<MA50[id] && high[id]>upBand[id] && MA200[id]<MA200[id-1] && MA100[id]<MA100[id-1]) aux_dir=0;
              }
              if (force_trade==0 && filter.tdf_color==0) {
                 if (aux_dir>2 && filter.VWAP_LASTCROSS && filter.HILO_INVERTBUY && CCI[id]>150 && candle_hi>0 && open[id]>MAFast[id] && high[id-2]<VWAP[id-2] && aux_abs<aux_abslast/2 && MathAbs(close[id-2]-open[id-2])<aux_abslast/2) aux_dir=0;
                 if (filter.NO_VWAPCROSS) {
                    if (aux_dir>2 && date_candle.hour>14 && filter.VWAP_DOWN && MA25[id]<VWAP[id] && i-pricestats.vwap_idx>30 && CCI[id]>110 && high[id]<VWAP[id] && MA50[id]<MA100[id]) aux_dir=0;
                    if (aux_dir>2 && date_candle.hour>11 && i-pricestats.vwap_idx>30 && CCI[id]>110 && candle_hi>0 && candle_lo>0 && (Force[id]<0 || MA100[id]>VWAP[id]) && ((high[id]>MA50[id] && low[id]<MA50[id]) || (high[id]>MA25[id] && low[id]<MA25[id]))) aux_dir=0;
                    if (aux_dir>2 && filter.VWAP_DOWN && i-pricestats.vwap_idx>30 && CCI[id]>120 && high[id]<VWAP[id] && close[id]<MA50[id] && ((high[id]>MA50[id] && close[id]<MA50[id]) || (high[id]>MA100[id] && close[id]<MA100[id]))) aux_dir-=2;
                    if (aux_dir>2 && filter.VWAP_DOWN && filter.MIBAND_DOWN && CCI[id]>95 && candle_hi>0 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>20 && high[id]<VWAP[id] && MA50[id]<VWAP[id] && MA100[id]-MA50[id]>aux_abs && MA50[id]-MA25[id]>aux_abs/2 && MA100[id]<MA100[id-1]) aux_dir=0;
                    if (aux_dir>2 && filter.HILO_INVERTBUY && date_candle.hour==13 && CCI[id]>100 && MFI[id]>71 && candle_hi>0 && high[id]<VWAP[id] && VWAP[id]-high[id]<body_up/2) aux_dir=0;
                    if (aux_dir>2 && filter.HILO_INVERTBUY && date_candle.hour==13 && mycounters.c_up==1 && i-pricestats.vwap_idx>30 && CCI[id]>170 && candle_hi>0 && low[id]>VWAP[id]) aux_dir=0;
                    if (aux_dir>2 && filter.VWAP_DOWN && filter.HILO_SELL && MA25[id]<VWAP[id] && close[id]<VWAP[id] && high[id]>HILO[id] && close[id]<HILO[id] && high[id]>MA25[id] && close[id]<MA25[id]) aux_dir--;
                 }
              }
           }
           else if (aux_dir<-2) {
              if (force_trade==0 && CCI[id]<-130 && close[id]<MA200[id] && MA200[id]<MA100[id]) aux_dir++;
              if ((high[id]>upBand2[id] || high[id-1]>upBand2[id-1]) && close[id]<upBand2[id] && close[id]>miBand[id]) {
                 aux_dir++;
                 if (close[id]>LR[id]) aux_dir+=2;
              }
              if (aux_dir<-2 && filter.VWAP_CROSS && filter.HILO_INVERTSELL && MA25[id]<VWAP[id] && low[id-1]>VWAP[id-1] && open[id]>MAFast[id] && low[id]-MA100[id]<candle_lo) aux_dir=0;
              if (aux_dir<-2 && filter.VWAP_CROSS && filter.HILO_INVERTSELL && close[id]>VWAP[id] && low[id-1]<VWAP[id-1] && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour>15 && filter.VWAP_CROSS && low[id-1]>VWAP[id-1] && VWAP[id]-close[id]<aux_abs/5) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour>14 && (filter.HILO_INVERTSELL || filter.SAR_INVERTSELL) && CCI[id]<-100 && candle_lo>aux_abs && MA50[id-1]>MA100[id-1] && ((low[id]<MA50[id] && close[id]>MA50[id]) || (low[i-1]<MA100[id] && close[id]>MA100[id]))) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour>14 && filter.HILO_INVERTSELL && i-pricestats.vwap_idx>30 && MFI[id]<20 && CCI[id]<-60 && VWAP[id]-high[id]>3*aux_abs) aux_dir+=3;
              if (aux_dir<-2 && aux_dir>-13 && force_trade==0 && pricestats.bars_day<4 && CCI[id]<-100 && candle_lo>0 && open[id]<VWAP[id] && high[id-1]>MA25[id-1] && high[id]<MA100[id] && high[id]<MA200[id]) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-10 && date_candle.hour<11 && CCI[id]<-90 && candle_lo>0 && low[id]<loBand[id] && (high[id]>upBand[id] || high[id-1]>upBand[id-1]) && MA100[id]<MA50[id] && MA50[id]<MA25[id] && high[id]>MA25[id] && low[id]<MA100[id]) aux_dir=0;
              if (aux_dir<-5 && aux_dir>-14 && date_candle.hour==10 && force_trade==0 && open[id]>VWAP[id] && VWAP[id]-close[id]>2*(open[id]-VWAP[id]) && (close[id]<MA25[id] || close[id]<MA100[id]) && low[id]>MA50[id]) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-14 && date_candle.hour>15 && CCI[id]<-120 && MFI[id]<20 && RSI[id]<35 && high[id]<VWAP[id]) aux_dir+=2;
              if (aux_dir<-2 && aux_dir>-14 && filter.tdf_color==0 && mycounters.hilosell>5 && CCI[id]<-70 && CCI[id-1]-CCI[id]<1 && close[id]>low[id-1] && candle_lo>0 && high[id]<VWAP[id] && (tick_volume[id]<tick_volume[id-1] || tick_volume[id]<tick_volume[id-2])) aux_dir+=2;
              if (aux_dir<-2 && aux_dir>-14 && date_candle.hour>12 && filter.NO_VWAPCROSS && CCI[id]<-90 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && MA200[id]<MA100[id] && MA50[id]-MA100[id]>aux_abs && MA25[id]-MA50[id]>aux_abs/2) aux_dir=0;
              if (aux_dir<-2 && filter.NO_VWAPCROSS && (filter.HILO_BUY || filter.SAR_BUY) && filter.MED_UP && (filter.tdf_color==1 || (i-pricestats.vwap_idx>15 && low[id]>VWAP[id] && aux_abs<aux_abslast/2)) && close[id]>HILO2[id] && low[id]>MAFast[id]) aux_dir=0;
              if (filter.VWAP_CROSS && filter.VWAP_LASTCROSS) {
                 if (aux_dir<-2 && mycounters.c_down==1 && CCI[id]<-90 && RSI[id]<40 && close[id]<loBand[id] && high[id]>MA200[id] && low[id]<MA200[id] && low[id]<MA25[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id]) aux_dir=0;
                 if (aux_dir<-2 && mycounters.c_down==1 && stdDev[id]<aux_abs/2 && low[id]<loBand2[id] && low[id-1]<loBand2[id-1]) aux_dir=0;
                 if (aux_dir<-2 && aux_dir>-14 && MA25[id]>MA50[id] && MA50[id]>MA100[id] && MA100[id]>MA200[id] && low[id]<MA50[id] && close[id]>MA50[id] && low[id]<loBand[id] && MA200[id]>MA200[id-1] && MA100[id]>MA100[id-1]) aux_dir=0;
              }
              if (force_trade==0 && filter.tdf_color==0) {
                 if (aux_dir<-2 && filter.VWAP_LASTCROSS && filter.HILO_INVERTSELL && CCI[id]<-60 && candle_lo>0 && open[id]<MAFast[id] && low[id-2]>VWAP[id-2] && aux_abs<aux_abslast/2 && MathAbs(close[id-2]-open[id-2])<aux_abslast/2) aux_dir=0;
                 if (filter.NO_VWAPCROSS) {
                    if (aux_dir<-2 && date_candle.hour>14 && filter.VWAP_UP && MA100[id]>VWAP[id] && i-pricestats.vwap_idx>30 && CCI[id]<-110 && low[id]>VWAP[id] && MA50[id]>MA100[id]) aux_dir=0;
                    if (aux_dir<-2 && date_candle.hour>11 && i-pricestats.vwap_idx>30 && CCI[id]<-110 && candle_hi>0 && candle_lo>0 && (Force[id]>0 || MA25[id]<VWAP[id]) && ((high[id]>MA50[id] && low[id]<MA50[id]) || (high[id]>MA25[id] && low[id]<MA25[id]))) aux_dir=0;
                    if (aux_dir<-2 && filter.VWAP_UP && i-pricestats.vwap_idx>30 && CCI[id]<-150 && low[id]>VWAP[id] && low[id]>MA50[id] && ((low[id]<MA50[id] && close[id]>MA50[id]) || (low[id]<MA100[id] && close[id]>MA100[id]))) aux_dir+=2;
                    if (aux_dir<-2 && filter.VWAP_UP && filter.MIBAND_UP && CCI[id]<-200 && candle_lo>0 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>20 && low[id]>VWAP[id] && MA50[id]>VWAP[id] && MA50[id]-MA100[id]>aux_abs && MA25[id]-MA50[id]>aux_abs/2 && MA100[id]>MA100[id-1]) aux_dir=0;
                    if (aux_dir<-2 && filter.HILO_INVERTSELL && date_candle.hour==13 && CCI[id]<-100 && MFI[id]<15 && candle_lo>0 && low[id]>VWAP[id] && low[id]-VWAP[id]<body_down/2) aux_dir=0;
                    if (aux_dir<-2 && filter.HILO_INVERTSELL && date_candle.hour==13 && mycounters.c_down==1 && i-pricestats.vwap_idx>30 && CCI[id]<-170 && candle_lo>0 && high[id]<VWAP[id]) aux_dir=0;
                    if (aux_dir<-2 && filter.VWAP_UP && filter.HILO_BUY && MA25[id]>VWAP[id] && close[id]>VWAP[id] && low[id]<HILO[id] && close[id]>HILO[id] && low[id]<MA25[id] && close[id]>MA25[id]) aux_dir++;
                 }
              }
           }
        }
     }

     // Latest mandatory VWAP and MA trade
     if (type==1) {
        if (VWAP_CROSS) {
           if (date_candle.hour<15) {
              //if (filter.tdf_color!=2 && mycounters.c_up<3 && pricestats.bars_day>5 && close[id]>VWAP[id] && CCI[i-1]<150 && open[id]<MA50[id] && close[id]>MA50[id] && high[id]<upBand[id] && aux_abs>3*candle_lo && aux_abs>3*candle_hi) aux_dir+=10;
              if (filter.tdf_color!=1 && close[id]<VWAP[id] && CCI[i-1]>-150 && open[id]>MA50[id] && close[id]<MA50[id] && low[id]>loBand2[id] && aux_abs>3*candle_lo && aux_abs>3*candle_hi) aux_dir-=10;
           }
           if (filter.VWAP_UP && body_up>0 && CCI[id]<150 && low[id]>low[id-1] && low[id-2]>low[id-1] && MA25[id]>VWAP[id] && close[id]>(open[id-1]+close[id-1])/2 && low[id-2]>VWAP[id-2] && high[id]<upBand2[id]) {
              if ((low[id-2]>MA100[id-2] && low[id-1]<MA100[id-1] && close[id-1]>MA100[id-1]) || (low[id-2]>MA200[id-2] && low[id-1]<MA200[id-1] && close[id-1]>MA200[id-1]))
              aux_dir+=12;
           }
           else if (filter.VWAP_DOWN && body_down>0 && CCI[id]>-150 && high[id-1]>high[id] && high[id-1]>high[id-2] && MA25[id]<VWAP[id] && close[id]<(open[id-1]+close[id-1])/2 && high[id-2]<VWAP[id-2] && low[id]>loBand2[id]) {
              if ((high[id-2]<MA100[id-2] && high[id-1]>MA100[id-1] && close[id-1]<MA100[id-1]) || (high[id-2]<MA200[id-2] && high[id-1]>MA200[id-1] && close[id-1]<MA200[id-1]))
              aux_dir-=12;
           }
           if (aux_dir>2) {
              if (filter.HILO_INVERTBUY && mycounters.c_up==1 && CCI[i-1]>100 && close[i-2]<VWAP[i-2] && ((high[i-1]>MA25[i-1] && low[i-1]<MA25[i-1]) || (high[i-1]>MA50[i-1] && low[i-1]<MA50[i-1]))) aux_dir=0;
              if (force_trade==0) {
                 if (aux_dir>2 && force_trade==0 && high[id-1]<VWAP[id-1] && CCI[id]>150 && close[id]>upBand[id] && low[id-1]<loBand2[id-1] && close[id]>MAFast[id]) aux_dir=0;
                 if (aux_dir>2 && pricestats.bars_day<6 && high[id]>MA200[id] && close[id]<MA200[id]) aux_dir=0;
                 if (aux_dir>2 && (mycounters.hilobuy>2 || mycounters.sarbuy>2 || high[id]>upBand2[id]) && CCI[id]>150 && (filter.tdf_color==2 || high[id]>upBand2[id] || high[id]<MA50[id]) && ((high[id]>VWAP[id] && close[id]<VWAP[id] && high[id-1]<VWAP[id-1]) || (high[id]>MA50[id] && close[id]<MA50[id] && high[id-1]<MA50[id-1]) || (high[id]>MA200[id] && close[id]<MA200[id] && high[id-1]<MA200[id-1]))) aux_dir=0;
              }
           }
           else if (aux_dir<-2) {
              if (filter.HILO_INVERTSELL && mycounters.c_down==1 && CCI[i-1]<-100 && close[i-2]>VWAP[i-2] && ((high[i-1]>MA25[i-1] && low[i-1]<MA25[i-1]) || (high[i-1]>MA50[i-1] && low[i-1]<MA50[i-1]))) aux_dir=0;
              if (force_trade==0) {
                 if (aux_dir<-2 && low[id-1]>VWAP[id-1] && CCI[id]<-150 && close[id]<loBand[id] && high[id-1]>upBand[id-1] && high[id-2]>upBand[id-2] && close[id]<MAFast[id]) aux_dir=0;
                 if (aux_dir<-2 && pricestats.bars_day<6 && low[id]<MA200[id] && close[id]>MA200[id]) aux_dir=0;
                 if (aux_dir<-2 && (mycounters.hilosell>2 || mycounters.sarsell>2 || low[id]<loBand2[id]) && CCI[id]<-150 && (filter.tdf_color==1 || low[id]>MA50[id] || low[id]<loBand2[id]) && ((low[id]<VWAP[id] && close[id]>VWAP[id] && low[id-1]>VWAP[id-1]) || (low[id]<MA50[id] && close[id]>MA50[id] && low[id-1]>MA50[id-1]) || (low[id]<MA200[id] && close[id]>MA200[id] && low[id-1]>MA200[id-1]))) aux_dir=0;
              }
           }
        }
     }
     if (date_candle.hour>10 && date_candle.hour<15) {
        if (filter.MED_DOWN && ((type==0 && apftrade.trade_dir==1) || (type==1 && body_down>0 && body_down>2*candle_lo && body_down>2*candle_hi)))
           if (filter.HILO_INVERTSELL && CCI[id]<0 && Force[id]<0 && MFI[id]>20 && RSI[id]<55 && MAFast[id]<MAFast[id-1])
              if (close[id]<VWAP[id] && close[id]<(open[id-1]+close[id-1])/2 && close[id]<MAFast[id])
                 aux_dir-=5;
     }


     // Close positions
     if (type==0) {
        if (apftrade.trade_dir==1) {   
           if (filter.HILO_INVERTSELL) {
              if ((filter.VWAP_CROSS || filter.VWAP_LASTCROSS) && CCI[i-1]<0 && close[i-1]<MAFast[i-1] && MA50[i-1]<VWAP[i-1] && ((open[i-1]>MA25[i-1] && close[i-1]<MA25[i-1]) || (open[i-1]>MA50[i-1] && close[i-1]<MA50[i-1]))) aux_dir--;
              if (close[i-1]<apftrade.trade_open && close[i-1]<MAFast[i-1]) aux_dir=-5;
              else aux_dir-=3;
           }
           if (filter.tdf_color!=1) {
              if (mycounters.c_down==2 && filter.HILO_SELL && Force[i-1]<0 && CCI[i-1]<-70 && filter.tdf_color==2 && MFI[i-1]<50)
                 if (close[i-1]<low[i-2] && MAFast[i-1]<MA25[i-1] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && open[i-1]>MA50[i-1] && close[i-1]<MA50[i-1]) aux_dir=-5;

              if (filter.HILO_SELL && filter.VWAP_DOWN && close[i-1]<VWAP[i-1] && CCI[i-1]<50 && close[i-1]<HILO2[i-1] && close[i-1]<low[i-2] && open[i-1]>MAFast[i-1] && close[i-1]<MAFast[i-1] && close[i-1]<MA25[i-1]) aux_dir-=5;
              if (filter.HILO_INVERTSELL && mycounters.c_down>1 && CCI[id]<30 && MFI[id]<90 && RSI[id]<58) 
                 if (body_down>0 && close[id]<HILO2[id])
                    aux_dir-=5;
           }
           if (mycounters.c_down==2 && CCI[i-3]>90 && close[i-1]<low[i-2] && low[i-1]<HILO2[i-1]) {
              if (CCI[i-3]>150 && body_down>2*candle_lo && stdDev[i-1]>CCI[i-1]) aux_dir=-5;
              if (low[i-1]>VWAP[i-1] && open[i-2]>MA50[i-2] && close[i-1]<MA50[i-1] && high[i-2]>MA100[i-1] && high[i-3]>upBand[i-3]) aux_dir=-5;
           }
           if (mycounters.hilobuy>15 && CCI[i-2]>200 && CCI[i-2]-CCI[i-1]>50 && CCI[i-2]-CCI[i-3]>50 && low[i-1]>VWAP[i-1]) aux_dir=-5;
           if (body_down>0 && close[id]<low[id-1] && CCI[id]<36 && (RSI[id-1]>70 || body_down>3*candle_lo)) {
              if (CCI[id-1]>120 && RSI[i-1]>70 && body_down>3*candle_lo && ((close[id-2]<MA100[id-2] && close[id-1]>MA100[id-1] && close[id]>VWAP[id]) || (close[id-2]<MA200[id-2] && close[id-1]>MA200[id-1])) && close[id]<MA50[id] && high[id-1]>upBand[id-1] && close[id]<upBand[id]) aux_dir=-5;
              if (mycounters.c_down>1 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>5 && low[i-1]-VWAP[i-1]>3*aux_abs && (filter.HILO_SELL || filter.SAR_SELL || Force[id]<0) && (CCI[id-2]>120 || CCI[id-3]>120) && high[i-1]<upBand2[i-1] && (high[id-2]>upBand2[id-2] || high[id-3]>upBand2[id-3]) && close[id]<LR[id] && low[id-2]>HILO2[id-2] && close[id]<HILO2[id] && close[id]<MAFast[id] && low[id-2]>MAFast[id-2]) aux_dir=-5;
           }
        }
        else if (apftrade.trade_dir==2) {
           if (filter.HILO_INVERTBUY) {
              if ((filter.VWAP_CROSS || filter.VWAP_LASTCROSS) && CCI[i-1]>0 && MA200[i-1]>MA200[i-2] && MA100[i-1]>MA100[i-1] && close[i-1]>MAFast[i-1] && ((open[i-1]<MA25[i-1] && close[i-1]>MA25[i-1]) || (open[i-1]<MA50[i-1] && close[i-1]>MA50[i-1]))) aux_dir++;
              if (close[i-1]>apftrade.trade_open && close[i-1]>MAFast[i-1]) aux_dir=5;
              else aux_dir+=3;
           }
           if (filter.tdf_color!=2) {
              if (mycounters.c_up==2 && filter.HILO_BUY && Force[i-1]>0 && CCI[i-1]>70 && filter.tdf_color==1 && MFI[i-1]>50)
                 if (close[i-1]>high[i-2] && MAFast[i-1]>MA25[i-1] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && open[i-1]<MA50[i-1] && close[i-1]>MA50[i-1]) aux_dir=5;

              if (filter.HILO_BUY && filter.VWAP_UP && close[i-1]>VWAP[i-1] && CCI[i-1]>-50 && close[i-1]>HILO2[i-1] && close[i-1]>high[i-2] && open[i-1]<MAFast[i-1] && close[i-1]>MAFast[i-1] && close[i-1]>MA25[i-1]) aux_dir+=5;
              if (filter.HILO_INVERTBUY && mycounters.c_up>1 && CCI[id]>-30 && MFI[id]>20 && RSI[id]>28) 
                 if (body_up>0 && close[id]>HILO2[id])
                    aux_dir+=5;
           }
           if (mycounters.c_up==2 && CCI[i-3]<-90 && close[i-1]>high[i-2] && high[i-1]>HILO2[i-1]) {
              if (CCI[i-3]<-150 && body_up>2*candle_hi && stdDev[i-1]>2*MathAbs(CCI[i-1])) aux_dir=5;
              if (high[i-1]<VWAP[i-1] && open[i-2]<MA50[i-2] && close[i-1]>MA50[i-1] && low[i-2]<MA25[i-1] && low[i-3]<loBand[i-3]) aux_dir=5;
           }
           //if (mycounters.hilosell>15 && CCI[i-2]<-220 && CCI[i-1]-CCI[i-2]>50 && CCI[i-3]-CCI[i-2]>50 && high[i-1]<VWAP[i-1]) aux_dir=5;
           if (body_up>0 && close[id]>high[id-1] && CCI[id]>-36 && (RSI[id-1]<30 || body_up>3*candle_hi)) {
              if (CCI[id-1]<-120 && RSI[id-1]<30 && ((close[id-2]>MA100[id-2] && close[id-1]<MA100[id-1] && close[id]<VWAP[id]) || (close[id-2]>MA200[id-2] && close[id-1]<MA200[id-1])) && close[id]>MA50[id] && low[id-1]<loBand[id-1] && close[id]>loBand[id]) aux_dir=5;
              if (mycounters.c_up>1 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>5 && VWAP[i-1]-high[i-1]>3*aux_abs && (filter.HILO_BUY|| filter.SAR_BUY || Force[id]>0) && (CCI[id-2]<-120 || CCI[id-3]<-120) && low[i-1]>loBand2[i-1] && (low[id-2]<loBand2[id-2] || low[id-3]<loBand2[id-3]) && close[id]>LR[id] && high[id-2]<HILO2[id-2] && close[id]>HILO2[id] && close[id]>MAFast[id] && high[id-2]<MAFast[id-2]) aux_dir=5;
           }
        }
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
