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
        if (type==1 && (date_candle.hour>10 || (date_candle.hour==10 && date_candle.min>30)) && i-pricestats.vwap_idx<35) {
           // Generic Long bollinger or HiLo trade
           if (filter.NO_VWAP_CROSS && mycounters.c_up<3 && body_up>0 && CCI[id-1]<-110 && CCI[id]-CCI[id-1]>30 && open[id]<MAFast[id] && high[id]<VWAP[id] && low[id]>low[id-1] && low[id-2]>low[id-1] && low[id-1]<loBand[id-1] && open[id]>loBand2[id]) {
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
           if (body_up>0) {
              if (body_up>candle_hi && close[id]>high[id-1] && high[id]<VWAP[id] && VWAP[pricestats.vwap_idx]-VWAP[id]<body_up) 
                 if (MFI[id]<55 && close[id]>HILO2[id] && CCI[id]>-50 && MFI[id-1]<30 && open[id]<MAFast[id] && close[id]>MAFast[id] && open[id]>loBand[id] && (low[id-1]<loBand[id-1] || low[id-2]<loBand[id-2])) aux_dir+=10;
           }
           else if (body_down>0 && body_down>candle_lo && close[id]<low[id-1] && low[id]>VWAP[id] && VWAP[id]-VWAP[pricestats.vwap_idx]<body_down) 
              if (MFI[id]>45 && close[id]<HILO2[id] && CCI[id]<50 && MFI[id-1]>70 && open[id]>MAFast[id] && close[id]<MAFast[id] && (high[id-1]>upBand[id-1] || high[id-2]>upBand[id-2])) aux_dir-=10;
        }
        else if (type==1 && filter.VWAP_CROSS && aux_abs>2*aux_abslast && high[id-1]>VWAP[id-1] && low[id-1]<VWAP[id-1] && high[id-2]>VWAP[id-2] && low[id-2]<VWAP[id-2]) {
            if (body_up>0) {
               if (mycounters.c_up<3 && close[id]>LR[id] && RSI[id]>40 && RSI[id]<70 && MFI[id-1]<25 && body_up>candle_hi && close[id]>high[id-1])
                 if (close[id]>VWAP[id] && close[id-1]<VWAP[id-1] && open[id]<MAFast[id] && close[id]>MAFast[id] && MA200[id]>MA200[id-1]) aux_dir+=10;
            }
            else if (mycounters.c_down<3 && close[id]>LR[id] && RSI[id]<60 && RSI[id]>30 && MFI[id-1]>85 && body_down>0 && body_down>candle_lo && close[id]<low[id-1])
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
        if (high[id]>MA25[id] && low[id]<MA25[id] && high[id]>MA50[id] && low[id]<MA50[id] && high[id]>MA100[id] && low[id]<MA100[id] && (filter.VWAP_CROSS || (high[id]>MA200[id] && low[id]<MA200[id])));
        else if (body_up>0 && close[id]>open[id-1] && body_up>candle_hi && open[id]<VWAP[id] && close[id]>(high[id-1]+low[id-1])/2 && CCI[id]>-15)
           if (MA25[id]>MA50[id] && MA50[id]>MA100[id] && open[id]<MA25[id] && close[id]>MA25[id] && open[id]<MA50[id] && close[id]>MA50[id]) aux_dir+=10;

        if (low[id]>low[id-1] && high[id]>MA25[id] && low[id]<MA25[id] && high[id]>MA50[id] && low[id]<MA50[id] && high[id]>MA100[id] && low[id]<MA100[id]);
        else if (body_down>0 && body_down>candle_lo && open[id]>VWAP[id] && close[id]<(high[id-1]+low[id-1])/2 && CCI[id]<15)
           if (MA100[id]>MA50[id] && MA50[id]>MA25[id] && open[id]>MA100[id] && close[id]<MA100[id] && open[id]>MA50[id] && close[id]<MA50[id]) aux_dir-=10;
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


     if (CCI[id]>50 && (type==0 || (type==1 && VWAP[id]>0 && date_candle.hour<17))) {
        aux_dir+=2;
        if (pricestats.bars_day<4) aux_dir-=2;
        if (filter.tdf_color==1) aux_dir++;
        if (filter.SAR_BUY && body_up>0) aux_dir++;
        if (filter.HILO_BUY) {
           aux_dir++;
           if (type==1 && date_candle.hour==15 && (filter.HILO_INVERTBUY || filter.SAR_INVERTBUY) && body_up>0 && open[id]<MAFast[id] && close[id]>MAFast[id] && close[id]>high[id-1] && low[id]>MA200[id] && low[id-2]<MA200[id-2]) aux_dir+=3;
           if (type==1 && date_candle.hour>9 && filter.VWAP_CROSS && mycounters.hilobuy<5 && CCI[id]>-30 && CCI[id]<100 && body_up>5*candle_hi && low[id]-HILO[id]<candle_lo/3 && open[id]<MAFast[id] && close[id]>MAFast[id]) aux_dir+=5;
           if (type==1 && date_candle.hour>9 && date_candle.hour<16 && body_up>candle_hi && close[id]>HILO2[id]) {
              if (RSI[id]>65 && open[id]<VWAP[id] && close[id]>VWAP[id] && close[id]<MA200[id] && MA200[id]-high[id]<body_up/2);
              else if (CCI[id]>-50 && RSI[id]>45) { 
                 if (open[id]<VWAP[id] && MFI[id]<90) {
                    if (open[id]<MAFast[id] && close[id]>MAFast[id] && open[id]<MA25[id] && close[id]>MA25[id]) aux_dir+=2;
                    if (mycounters.c_up==2 && Force[id]>0 && mycounters.hilobuy<8 && date_candle.hour>13 && body_up>candle_hi && close[id]>high[id-1] && close[id]>high[id-2])
                       if (close[id]>HILO2[id] && close[id-1]<HILO2[id-1] && MA200[id]>MA200[id-1] && low[id]>MA200[id] && open[id]<MAFast[id] && close[id]>MAFast[id] && open[id]<MA25[id] && close[id]>MA25[id]) aux_dir+=3;
                 }
                 if (mycounters.hilobuy<4 && body_up>0 && close[id]>LR[id] && LR[id]>LR[id-1] && RSI[id]<65 && CCI[id]>-30 && (date_candle.hour==11 || date_candle.hour==15))
                    if (close[id]>high[id-1] && close[id]>high[id-2] && open[id]<VWAP[id] && close[id]>HILO2[id] && low[id]<MAFast[id] && close[id]>MAFast[id] && close[id]>miBand[id] && close[id]>MA25[id] && high[id]<upBand2[id]) aux_dir+=2;
              }
           }
        }
        if (filter.SAR_INVERTBUY) aux_dir+=3;
        if (filter.HILO_INVERTBUY) {
            aux_dir+=3;
            if (type==1) {
               if (mycounters.c_up>1 && filter.VWAP_DOWN && i-pricestats.vwap_idx>30 && high[id]<VWAP[id] && MA100[id]>VWAP[id] && MA25[id]<MA50[id] && MA50[id]<MA100[id] && high[id]<MA200[id]);
               else {
                  if (date_candle.hour>9 && date_candle.hour<16 && CCI[id]>-30 && MFI[id]<90 && body_up>aux_abslast && close[id]>high[id-1] && low[id-1]<HILO[id-1] && close[id]>HILO2[id] && close[id]>MAFast[id] && close[id]<upBand[id]) aux_dir+=3;
                  else if (mycounters.c_up==3 && RSI[id]>40 && RSI[id]<71 && close[id]>high[id-1] && body_up>aux_abslast/2 && close[id]>miBand[id] && open[id-1]<MAFast[id-1] && close[id]>MAFast[id] && stdDev[id]<4*body_up) aux_dir+=5;
               }
               if (pricestats.bars_day>6 && date_candle.hour<15 && CCI[id]>30 && CCI[id]<220 && body_up>0 && open[id]>VWAP[id] && open[id-2]<VWAP[id-2] && close[id]>high[id-1] && low[id-1]<MAFast[id-1] && close[id]>MAFast[id]) aux_dir+=5;
            }
        }
        if (type==1 && close[id]>LR[id]) aux_dir++;
        if (type==1 && MFI[id]<85 && RSI[id]>50) {
           if (close[id-1]<VWAP[id-1] && close[id]>VWAP[id]) aux_dir++;
           if (close[id-1]<loBand2[id-1] && close[id]>loBand2[id] && CCI[id]>-50) aux_dir+=2;
           if (filter.HILO_BUY && CCI[id]<130 && MFI[id]<80 && stdDev[id]<3*aux_abs && body_up>0 && body_up>2*candle_hi && close[id]>high[id-1] && open[id]<MAFast[id] && close[id]>MAFast[id] && close[id]>HILO2[id]) {
              if (date_candle.hour>15 && low[id]>VWAP[id]);
              else {
                 aux_dir+=2;
                 if ((filter.HILO_INVERTBUY || filter.SAR_INVERTBUY || mycounters.c_up>1) && mycounters.hilobuy<3 && date_candle.hour>10 && date_candle.hour<15 && RSI[id]<71 && close[id]>high[id-1] && open[id]<MA25[id] && close[id]>MA25[id]) aux_dir+=5;
              }
           }
           if (CCI[id]>140 && VWAP[id]-open[id]>2*(close[id]-VWAP[id]));
           else {
              if ((filter.VWAPCROSS || filter.VWAP_LASTCROSS) && (filter.SAR_INVERTBUY || filter.HILO_INVERTBUY) && Force[id]>0 && close[id]>high[id-1] && open[id-1]<VWAP[id-1] && high[id-2]<VWAP[id-2] && close[id]>VWAP[id] && open[id]<MAFast[id] && close[id]>MAFast[id]) aux_dir+=3;
              if (filter.VWAP_CROSS && VOLUME_UP && CCI[id]>0 && body_up>candle_hi && close[id]>LR[id] && close[id]>HILO2[id] && close[id]>VWAP[id] && close[id]>high[id-1] && high[id]>high[id-2] && LR[id]>LR[id-1] && MAFast[id]>MAFast[id-1] && open[id]<MAFast[id] && close[id]>MAFast[id]) aux_dir+=9;
           }
           if (filter.VWAP_CROSS && filter.VWAP_DOWN && candle_hi>0);
           else {
              if (filter.HILO_BUY && filter.tdf_color!=2 && RSI[id]<80 && body_up>0 && body_up>candle_hi && open[id]<VWAP[id])
                 if (close[id]>HILO2[id] && low[id]<MAFast[id] && close[id]>MAFast[id] && MAFast[id]>MA25[id] && MAFast[id-2]<MA25[id-2]) aux_dir+=9;
           }
        }
        if (type==1) {
           if ((filter.HILO_BUY || filter.SAR_BUY || filter.MIBAND_UP || low[id]<loBand[id]) && low[id]>low[id-1] && low[id-2]>low[id-1]) aux_dir++;
           if (date_candle.hour>12 && filter.HILO_BUY && filter.tdf_color!=2 && filter.NO_VWAPCROSS && filter.VWAP_UP && i-pricestats.vwap_idx>10 && body_up>0 && close[id]>high[id-1] && close[id]>HILO2[id] && low[id-1]<loBand[id-1] && low[id]>loBand[id] && close[id]>MAFast[id] && VWAP[id]>MA200[id] && MA200[id]>MA200[id-1]) aux_dir+=2;
           if (aux_dir>2 && aux_dir<14 && filter.tdf_color!=1 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>15 && RSI[id]>63 && low[id]>VWAP[id]) aux_dir=0;
           if (aux_dir>2 && aux_dir<10 && date_candle.hour>15 && filter.NO_VWAPCROSS && force_trade==0 && i-pricestats.vwap_idx>15 && RSI[id]>65 && low[id]>VWAP[id] && high[id]>loBand[id] && stdDev[id]<body_up/1.5) aux_dir--;
           if (aux_dir>2 && aux_dir<13 && date_candle.hour>11 && force_trade==0 && date_candle.hour<14 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && MAFast[id]<MA25[id] && !(filter.HILO_BUY && close[id]>MAFast[id] && close[id]>HILO2[id])) aux_dir=0;
           if (aux_dir>2 && aux_dir<10 && date_candle.hour<11 && force_trade==0 && CCI[id]>110 && open[id]>VWAP[id] && open[id]>MAFast[id] && high[id]>=pricestats.max_dayprice && close[id]>upBand[id] && high[id]>upBand2[id] && close[id]<upBand2[id]) aux_dir-=2;
           if (MAFast[id]>MA25[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id]) {
              aux_dir++;
              if (close[id]>MAFast[id]) aux_dir++;
           }
           if (date_candle.hour<16 && filter.HILO_BUY && CCI[id]>0 && MFI[id]<85 && RSI[id]>50 && MAFast[id]>MA25[id] && MAFast[id-2]<MA25[id-2] && close[id]>MAFast[id]) aux_dir+=2;
           if (filter.HILO_INVERTBUY && CCI[id]>-10 && MFI[id]>20 && RSI[id]>45 && close[id]>HILO2[id])
              if (body_up>0 && body_up>candle_hi && VWAP[id]-high[id]>candle_hi && high[id]<VWAP[id] && ((open[id]<MAFast[id] && close[id]>MAFast[id]) || (open[id-1]<MAFast[id-1] && close[id]>MAFast[id]))) aux_dir+=3;
        }
        if (aux_dir>1 && (type==1 || apftrade.trade_dir==1)) {
           if (stdDev[id]>4*aux_abs) aux_dir--;
           if (aux_dir>0 && MFI[id]>90) aux_dir--;
           if (aux_dir>0 && MFI[id]>82 && filter.VWAP_CROSS && type==1) aux_dir--;
           if (aux_dir>0 && high[id]>MA25[id] && close[id]<MA25[id]) aux_dir--;
           if (aux_dir>0 && high[id]>MA200[id] && close[id]<MA200[id]) aux_dir--;
           if (type==1 && aux_dir>2) {
              if (filter.VWAP_CROSS && force_trade==0 && mycounters.hilobuy>10 && candle_hi>aux_abs/5 && close[id]<open[id-2]) aux_dir=0;
              if (mycounters.hilobuy>12) aux_dir--;
              if (date_candle.hour>15 && open[id]>MAFast[id] && high[id]>upBand2[id] && candle_hi>2*(aux_abs/3)) aux_dir=0;
              if (CCI[id]>200 && high[id]-low[id]>ATR[id] && high[id]>upBand[id] && date_candle.hour<12) aux_dir=0;
              if (aux_dir>2 && candle_hi>5*body_up) aux_dir-=2;
              if (aux_dir>2 && candle_hi>body_up && high[id]>upBand2[id] && close[id]<upBand2[id]) aux_dir--;
              if (pricestats.bars_day<9) aux_dir--;
              if (close[id]<loBand2[id]) aux_dir--;
              //if (VWAP[id]>MA100[id] && MA100[id]>MA50[id] && MA50[id]>MA25[id]) aux_dir--;
              if (filter.HILO_SELL && high[id]>HILO[id] && close[id]<HILO[id]) aux_dir=0;
              if (date_candle.hour==12 && filter.VWAP_CROSS && mycounters.c_up>1 && candle_hi>0 && MFI[id]>70 && close[id]>MA50[id] && close[id]>VWAP[id] && close[id]>upBand[id] && upBand2[id]-high[id]<body_up/2) aux_dir=0;
              if (aux_dir>2 && date_candle.hour>12 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && i-pricestats.vwap_idx>10 && high[id]>upBand[id] && VWAP[id]<MA200[id] && MA200[id]<MA200[id-1] && high[id]<VWAP[id]) aux_dir-=2;
              if (aux_dir>2 && date_candle.hour>12 && force_trade==0 && filter.HILO_INVERTBUY && filter.NO_VWAPCROSS && filter.VWAP_DOWN && mycounters.c_up>2 && high[id]<VWAP[id] && open[id]>MAFast[id]) aux_dir-=3;
              if (aux_dir>2 && date_candle.hour>13 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_up==1 && candle_hi>0 && MFI[id]>80 && close[id]>VWAP[id] && close[id]>upBand2[id] && low[id-1]>upBand[id-1]) aux_dir=0;
              if (aux_dir>2 && date_candle.hour<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && high[id-2]-high[id]>body_up && high[id-2]>upBand[id-2] && high[id]<upBand[id]) aux_dir-=2;
              if (aux_dir>2 && filter.tdf_color!=1 && i-pricestats.vwap_idx>10 && high[id]<VWAP[id] && MA25[id]<MA50[id] && MA50[id]<MA200[id] && MA25[id]-MAFast[id]>aux_abs/2 && MA200[id]-high[id]<body_up && close[id]<MA200[id]) aux_dir--;
              if (aux_dir>2 && filter.tdf_color!=1 && force_trade==0 && i>4 && (date_candle.hour<10 || (date_candle.hour==10 && date_candle.min<20)) && VWAP[id-1]<VWAP[id-2] && VWAP[id-2]<VWAP[i-4] && high[id]>VWAP[id] && low[id]<VWAP[id] && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir=0;
              if (aux_dir>2 && pricestats.bars_day<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && force_trade==0 && CCI[id]>100 && close[id]>upBand[id] && low[id]<MAFast[id] && high[id]>MAFast[id] && low[id]<MA25[id] && high[id]>MA25[id] && (date_candle.day_of_week==1 || date_candle.day_of_week==5)) aux_dir=0;
              if (aux_dir>2 && filter.HILO_SELL && filter.SAR_SELL && filter.MIBAND_DOWN) aux_dir--;
              if (force_trade==0) {
                 if (filter.VWAP_CROSS && aux_dir>2) {
                    if (high[id]>HILO2[id] && close[id]<HILO2[id] && close[id]<high[id-2] && candle_hi>2*body_up) aux_dir--;
                    if (aux_dir>2 && filter.HILO_INVERTBUY && aux_abs<aux_abslast/2 && close[id]>HILO2[id] && close[id-1]<HILO2[id] && high[id]>upBand[id]) aux_dir--;
                    if (aux_dir>2 && aux_dir<16 && RSI[id]>64 && VWAP[id]-open[id]>3*(close[id]-VWAP[id])) aux_dir=0;
                    if (aux_dir>2 && aux_dir<16 && CCI[id]>120 && candle_hi>aux_abslast && candle_hi>3*candle_lo && high[id]>upBand[id] && MA100[id]<MA200[id] && MA200[id]<MA200[id-1]) aux_dir=0;
                    if (aux_dir>2 && date_candle.hour<11 && filter.VWAP_LASTCROSS && CCI[id]>110 && pricestats.max_dayprice-high[id]<aux_abs/5 && high[id]>MAFast[id] && low[id]<MAFast[id] && high[id]>MA25[id] && low[id]<MA25[id] && high[id-1]>MAFast[id-1] && low[id-1]<MAFast[id-1] && high[id-1]>MA25[id-1] && low[id-1]<MA25[id-1] && ((MA50[id]-high[id]<aux_abs/5 && close[id]<MA50[id]) || (MA100[id]-high[id]<aux_abs/5 && close[id]<MA100[id]))) aux_dir=0;
                 }
                 if (aux_dir>2 && mycounters.c_up>1 && low[id]>VWAP[id] && high[id]>VWAP[id] && low[id-1]<VWAP[id-1] && high[id]>MA200[id] && low[id-1]<MA200[id-1] && MFI[id]>80 && CCI[id]>130 && high[id]>upBand[id]) aux_dir=0;
                 if (aux_dir>2 && open[id]<MAFast[id] && high[id]>MAFast[id] && close[id]<MAFast[id]) aux_dir--;
                 if (aux_dir>2 && open[id]<MA25[id] && high[id]>MA25[id] && close[id]<MA25[id]) aux_dir--;
                 if (aux_dir>2 && open[id]<MA100[id] && high[id]>MA100[id] && close[id]<MA100[id]) aux_dir--;
                 if (aux_dir>2 && date_candle.hour>11 && date_candle.hour<15 && !filter.VWAP_LASTCROSS && open[id]<VWAP[id] && high[id]>VWAP[id] && close[id]<VWAP[id]) aux_dir=0;
                 if (aux_dir>2 && close[id]<MAFast[id] && MA25[id]<MA50[id] && MA50[id]<MA100[id]) aux_dir--;
                 if (aux_dir>2 && candle_hi>body_up && high[id]>upBand2[id] && close[id]<upBand2[id]) aux_dir--;
                 if (aux_dir>2 && filter.HILO_INVERTBUY && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir--;
                 if (aux_dir>2 && aux_dir<13 && apftrade.bars_notrade<2 && apftrade.trade_lastdir==2 && MFI[id]>60 && RSI[id]>60 && open[id]>MAFast[id] && high[id]>VWAP[id]) aux_dir=0;
                 if (aux_dir>2 && mycounters.c_up>2 && (date_candle.day_of_week==1 || date_candle.day_of_week==5) && filter.VWAP_DOWN && i-pricestats.vwap_idx>15 && CCI[id]>110 && candle_hi>0 && high[id]<VWAP[id] && (MA100[id]<MA100[id-2] || MA200[id]<MA200[id-2]) && close[id]<MA25[id] && MA25[id]-high[id]<aux_abs/2 && MA25[id]<MA50[id] && MA50[id]<MA100[id] && MA100[id]<MA200[id]) aux_dir=0;
                 if (aux_dir>2 && date_candle.hour>13 && filter.NO_VWAPCROSS && candle_hi>0) {
                    if (date_candle.hour>14 && i-pricestats.vwap_idx>20 && RSI[id]>70 && MA50[id-1]<MA50[id-2] && high[id]<VWAP[id] && ((high[id]>MA25[id] && low[id]<MA50[id]) || (high[id]>MA50[id] && low[id]<MA25[id]))) aux_dir=0;
                    if (aux_dir<16 && filter.VWAP_DOWN && filter.tdf_color!=1 && !VOLUME_UP && mycounters.c_up>2 && i-pricestats.vwap_idx>30 && VWAP[id]-high[id]>3*aux_abs && close[id]<MA25[id] && high[id]>upBand[id]) aux_dir=0;
                    if (aux_dir>2 && filter.VWAP_DOWN && date_candle.hour>15 && (filter.HILO_INVERTBUY || mycounters.hilobuy>5) && close[id]<VWAP[id] && CCI[id]>200 && MFI[id]>80 && i-pricestats.vwap_idx>10) aux_dir-=3;
                    if (aux_dir>2 && i-pricestats.vwap_idx>30 && low[id]-VWAP[id]>3*aux_abs && low[id]>MA25[id] && MA100[id]>VWAP[id] && MA25[id]-MA50[id]>aux_abs && MA50[id]-MA100[id]>aux_abs) aux_dir--;
                    if (aux_dir>2 && aux_dir<16 && CCI[id]>170 && i-pricestats.vwap_idx>25 && MA50[id]>VWAP[id] && low[id]>MA25[id] && high[id]>upBand[id]) aux_dir=0;
                    if (aux_dir>2 && aux_dir<18 && RSI[id]>60 && CCI[id]>190 && i-pricestats.vwap_idx>15 && low[id]>VWAP[id] && high[id]>upBand2[id]) aux_dir=0;
                    if (aux_dir>2 && aux_dir<12 && date_candle.hour>15 && filter.VWAP_DOWN && CCI[id]>100 && i-pricestats.vwap_idx>30 && high[id]<VWAP[id] && close[id]<MA50[id] && MA50[id]-MA25[id]>aux_abs && MA100[id]-MA50[id]>aux_abs && MA100[id]<MA200[id] && MA100[id]<MA100[id-1] && MA200[id]<MA200[id-1]) aux_dir-=3;
                    if (aux_dir>2 && aux_dir<15 && date_candle.hour>14 && filter.VWAP_DOWN && i-pricestats.vwap_idx>30 && RSI[id]>68 && VWAP[id]-high[id]>2*body_up && MAFast[id-1]<MA25[id-1] && MA100[id]<MA200[id]) aux_dir=0;
                 }
              }
              if (aux_dir>2 && aux_dir<11 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && high[id]<VWAP[id] && body_up<MA50[id]-MA25[id] && ((high[id]>MAFast[id] && close[id]<MAFast[id]) || (high[id]>MA25[id] && close[id]<MA25[id]) || (high[id]>MA50[id] && close[id]<MA50[id]))) aux_dir--;
              if (aux_dir>2 && aux_dir<12 && CCI[id]>130 && force_trade==0 && open[id]>VWAP[id] && MA100[id]>MA50[id] && MA50[id]>MA25[id] && close[id]>upBand[id]) aux_dir=0;
              if (aux_dir>2 && aux_dir<15 && date_candle.hour==9 && date_candle.min==50 && candle_hi>0 && MA100[id]>MA50[id] && MA50[id]>MA25[id]) aux_dir=0;
              if (aux_dir<10 && date_candle.hour>13 && close[id]>VWAP[id] && high[id]>MAFast[id] && high[id]>MA25[id] && high[id]>MA50[id] && high[id]>MA100[id])
                 if (low[id]<MAFast[id] && low[id]<MA25[id] && low[id]<MA50[id] && low[id]>MA100[id]) aux_dir--;
           }
        }
     }
     else if (CCI[id]<-50 && (type==0 || (type==1 && VWAP[id]>0 && body_down>0 && date_candle.hour<17))) {
        aux_dir-=2;
        if (pricestats.bars_day<4) aux_dir++;
        if (filter.tdf_color==2) aux_dir--;
        if (filter.SAR_SELL && chk_down) aux_dir--;
        if (filter.HILO_SELL) {
           aux_dir--;
           if (type==1 && date_candle.hour==15 && (filter.HILO_INVERTSELL || filter.SAR_INVERTSELL) && body_down>0 && open[id]>MAFast[id] && close[id]<MAFast[id] && close[id]<low[id-1] && high[id]<MA200[id] && high[id-2]>MA200[id-2]) aux_dir-=3;
           if (type==1 && date_candle.hour>9 && filter.VWAP_CROSS && mycounters.hilosell<5 && CCI[id]<30 && CCI[id]>-100 && body_down>5*candle_lo && HILO[id]-high[id]<candle_hi/3 && open[id]>MAFast[id] && close[id]<MAFast[id]) aux_dir-=5;
           if (type==1 && date_candle.hour>9 && date_candle.hour<16 && body_down>candle_lo && close[id]<HILO2[id]) {
              if (open[id]>VWAP[id] && close[id]<VWAP[id] && close[id]>MA200[id] && low[id]-MA200[id]<body_down/2);
              else if (CCI[id]<50 && RSI[id]<55) {
                 if (open[id]>VWAP[id] && MFI[id]>15) {
                    if (open[id]>MAFast[id] && close[id]<MAFast[id] && open[id]>MA25[id] && close[id]<MA25[id]) aux_dir-=2;
                    if (mycounters.c_down==2 && Force[id]<0 && mycounters.hilosell<8 && date_candle.hour>13 && body_down>candle_lo && close[id]<low[id-1] && close[id]<low[id-2])
                       if (close[id]<HILO2[id] && close[id-1]>HILO2[id-1] && MA200[id]<MA200[id-1] && high[id]<MA200[id] && open[id]>MAFast[id] && close[id]<MAFast[id] && open[id]>MA25[id] && close[id]<MA25[id]) aux_dir-=3;
                 }
                 if (mycounters.hilosell<4 && body_down>0 && close[id]<LR[id] && LR[id]<LR[id-1] && RSI[id]>30 && CCI[id]<30 && (date_candle.hour==11 || date_candle.hour==15))
                    if (close[id]<low[id-1] && close[id]<low[id-2] && open[id]>VWAP[id] && close[id]<HILO2[id] && high[id]>MAFast[id] && close[id]<MAFast[id] && close[id]<miBand[id] && close[id]<MA25[id] && low[id]>loBand2[id]) aux_dir-=2;
              }
           }
        }
        if (filter.SAR_INVERTSELL) aux_dir-=3;
        if (filter.HILO_INVERTSELL) {
           aux_dir-=3;
           if (type==1) {
              if (mycounters.c_down>1 && filter.VWAP_UP && i-pricestats.vwap_idx>30 && low[id]>VWAP[id] && MA100[id]>VWAP[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id] && low[id]>MA200[id]);
              else {
                 if (date_candle.hour>9 && date_candle.hour<16 && CCI[id]<30 && MFI[id]>10 && body_down>aux_abslast && close[id]<low[id-1] && high[id-1]>HILO[id-1] && close[id]<HILO2[id] && close[id]<MAFast[id] && close[id]>loBand[id]) aux_dir-=3;
                 else if (mycounters.c_down==3 && RSI[id]<60 && RSI[id]>29 && close[id]<HILO2[id] && close[id]<low[id-1] && body_down>aux_abslast/2 && close[id]<miBand[id] && open[id-1]>MAFast[id-1] && close[id]<MAFast[id] && stdDev[id]<4*body_down && date_candle.hour<16) aux_dir-=5;
              }
              if (pricestats.bars_day>6 && date_candle.hour<15 && CCI[id]<-30 && CCI[id]>-220 && body_down>0 && open[id]<VWAP[id] && open[id-2]>VWAP[id-2] && close[id]<low[id-1] && high[id-1]>MAFast[id-1] && close[id]<MAFast[id]) aux_dir-=5;
           }
        }
        if (type==1 && close[id]<LR[id]) aux_dir--;
        if (type==1 && MFI[id]>15 && RSI[id]<50) {
           if (close[id-1]>VWAP[id-1] && close[id]<VWAP[id]) aux_dir--;
           if (close[id-1]>upBand2[id-1] && close[id]<upBand2[id] && CCI[id]<50) aux_dir-=2;
           if (filter.HILO_SELL && CCI[id]>-140 && MFI[id]>20 && stdDev[id]<3*aux_abs && body_down>0 && body_down>2*candle_lo && close[id]<low[id-1] && open[id]>MAFast[id] && close[id]<MAFast[id] && close[id]<HILO2[id]) {
              if (date_candle.hour>15 && high[id]<VWAP[id]);
              else {
                 aux_dir-=2;
                 if ((filter.HILO_INVERTSELL || filter.SAR_INVERTSELL || mycounters.c_down>1) && mycounters.hilosell<3 && date_candle.hour>10 && date_candle.hour<15 && close[id]<low[id-1] && open[id]>MA25[id] && close[id]<MA25[id]) aux_dir-=5;
              }
           }
           if (CCI[id]<-140 && open[id]-VWAP[id]>2*(VWAP[id]-close[id]));
           else {
              if ((filter.VWAPCROSS || filter.VWAP_LASTCROSS) && (filter.SAR_INVERTSELL || filter.HILO_INVERTSELL) && Force[id]<0 && close[id]<low[id-1] && open[id-1]>VWAP[id-1] && low[id-2]>VWAP[id-2] && close[id]<VWAP[id] && open[id]>MAFast[id] && close[id]<MAFast[id]) aux_dir-=3;
              if (filter.VWAP_CROSS && VOLUME_UP && CCI[id]<25 && body_down>candle_lo && close[id]<HILO2[id] && close[id]<VWAP[id] && close[id]<low[id-1] && LR[id]<LR[id-1] && MAFast[id]<MAFast[id-1] && open[id]>MAFast[id] && close[id]<MAFast[id]) aux_dir-=9;
           }
           if (filter.VWAP_CROSS && filter.VWAP_UP && candle_lo>0);
           else {
              if (filter.HILO_SELL && filter.tdf_color!=1 && RSI[id]>20 && body_down>0 && body_down>candle_lo && open[id]>VWAP[id])
                 if (close[id]<HILO2[id] && high[id]>MAFast[id] && close[id]<MAFast[id] && MAFast[id]<MA25[id] && MAFast[id-2]>MA25[id-2]) aux_dir-=9;
           }
        }
        if (type==1) {
           if ((filter.HILO_SELL || filter.SAR_SELL || filter.MIBAND_DOWN || high[id-1]>upBand[id-1]) && high[id]<high[id-1] && high[id-2]<high[id-1] && high[id-1]>upBand[id-1]) aux_dir--;
           if (date_candle.hour>12 && filter.HILO_SELL && filter.tdf_color!=1 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && i-pricestats.vwap_idx>10 && body_down>0 && close[id]<low[id-1] && close[id]<HILO2[id] && high[id-1]>upBand[id-1] && high[id]<upBand[id] && close[id]<MAFast[id] && VWAP[id]<MA200[id] && MA200[id]<MA200[id-1]) aux_dir-=2;
           if (aux_dir<-2 && aux_dir>-11 && filter.tdf_color!=2 && filter.NO_VWAPCROSS && i-pricestats.vwap_idx>15 && RSI[id]<43 && high[id]<VWAP[id]) aux_dir=0;
           if (aux_dir<-2 && aux_dir>-10 && date_candle.hour>14 && force_trade==0 && i-pricestats.vwap_idx>15 && RSI[id]<40 && high[id]<VWAP[id] && low[id]<loBand[id] && stdDev[id]<body_down/1.5) aux_dir++;
           if (aux_dir<-2 && aux_dir>-10 && date_candle.hour<11 && force_trade==0 && CCI[id]<-200 && open[id]<VWAP[id] && open[id]<MAFast[id] && low[id]<=pricestats.min_dayprice && close[id]<loBand[id] && low[id]<loBand2[id] && close[id]>loBand2[id]) aux_dir+=2;
           if (aux_dir<-2 && aux_dir>-13 && date_candle.hour>11 && date_candle.hour<14 && force_trade==0 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && MAFast[id]>MA25[id] && !(filter.HILO_SELL && close[id]<MAFast[id] && close[id]<HILO2[id] && close[id]<MA200[id] && high[id-1]>MA200[id-1])) aux_dir=0;
           if (MAFast[id]<MA25[id] && MA25[id]<MA50[id] && MA50[id]<MA100[id]) {
              aux_dir--;
              if (close[id]<MAFast[id]) aux_dir--;
           }
           if (date_candle.hour<16 && filter.HILO_SELL && CCI[id]<0 && MFI[id]>15 && RSI[id]<50 && MAFast[id]<MA25[id] && MAFast[id-2]>MA25[id-2] && close[id]<MAFast[id]) aux_dir-=2;
           if (filter.HILO_INVERTSELL && CCI[id]<10 && MFI[id]<90 && RSI[id]<55 && close[id]<HILO2[id]) 
              if (body_down>0 && body_down>candle_lo && low[id]-VWAP[id]>candle_lo && low[id]>VWAP[id] && ((open[id]>MAFast[id] && close[id]<MAFast[id]) || (open[id-1]>MAFast[id-1] && close[id]<MAFast[id]))) aux_dir-=3;
        }
        if (aux_dir<-1 && (type==1 || apftrade.trade_dir==2)) {
           if (stdDev[id]>4*aux_abs) aux_dir++;
           if (aux_dir<0 && MFI[id]<15) aux_dir++;
           if (aux_dir<0 && MFI[id]<10 && filter.VWAP_CROSS && type==1) aux_dir++;
           if (aux_dir<0 && low[id]<MA25[id] && close[id]>MA25[id]) aux_dir++;
           if (aux_dir<0 && low[id]<MA200[id] && close[id]>MA200[id]) aux_dir++;
           if (type==1 && aux_dir<-2) {
              if (filter.VWAP_CROSS && force_trade==0 && mycounters.hilosell>10 && candle_lo>aux_abs/5 && close[id]>open[id-2]) aux_dir=0;
              if (mycounters.hilosell>12) aux_dir++;
              if (date_candle.hour>15 && open[id]<MAFast[id] && low[id]<loBand2[id] && candle_lo>2*(aux_abs/3)) aux_dir=0;
              if (CCI[id]<-200 && high[id]-low[id]>ATR[id] && low[id]<loBand[id] && date_candle.hour<12) aux_dir=0;
              if (pricestats.bars_day<9) aux_dir++;
              if (aux_dir<-2 && candle_lo>5*body_down) aux_dir+=2;
              if (aux_dir<-2 && candle_lo>body_down && low[id]<loBand2[id] && close[id]>loBand2[id]) aux_dir++;
              if (close[id]<loBand2[id]) aux_dir++;
              if (filter.HILO_BUY && low[id]<HILO[id] && close[id]>HILO[id]) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour==12 && filter.VWAP_CROSS && mycounters.c_down>1 && candle_lo>0 && close[id]<MA50[id] && close[id]<VWAP[id] && close[id]<loBand[id] && low[id]-loBand2[id]<body_down) aux_dir=0;
              if (aux_dir<-2 && date_candle.hour>12 && filter.NO_VWAPCROSS && filter.VWAP_UP && i-pricestats.vwap_idx>10 && low[id]<loBand[id] && VWAP[id]>MA200[id] && MA200[id]>MA200[id-1] && low[id]>VWAP[id]) aux_dir+=2;
              if (aux_dir<-2 && date_candle.hour>12 && force_trade==0 && filter.HILO_INVERTSELL && filter.NO_VWAPCROSS && filter.VWAP_UP && mycounters.c_down>2 && low[id]>VWAP[id] && open[id]<MAFast[id]) aux_dir+=3;
              if (aux_dir<-2 && date_candle.hour<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && low[id]-low[id-2]>body_down && low[id-2]<loBand2[id] && low[id]>loBand[id]) aux_dir+=2;
              if (aux_dir<-2 && date_candle.hour>13 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_down==1 && candle_lo>0 && MFI[id]<20 && close[id]<VWAP[id] && close[id]<loBand2[id] && low[id-1]<loBand[id-1]) aux_dir=0;
              if (aux_dir<-2 && filter.tdf_color!=2 && i-pricestats.vwap_idx>10 && low[id]>VWAP[id] && MA25[id]>MA50[id] && MA50[id]>MA200[id] && MAFast[id]-MA25[id]>aux_abs/2 && low[id]-MA200[id]<body_down && close[id]>MA200[id]) aux_dir=0;
              if (aux_dir<-2 && filter.tdf_color!=2 && force_trade==0 && (date_candle.hour<10 || (date_candle.hour==10 && date_candle.min<20)) && high[id]>VWAP[id] && low[id]<VWAP[id] && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir=0;
              if (aux_dir<-2 && pricestats.bars_day<10 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && force_trade==0 && CCI[id]<-100 && close[id]<loBand[id] && high[id]>MAFast[id] && low[id]<MAFast[id] && high[id]>MA25[id] && low[id]<MA25[id] && (date_candle.day_of_week==1 || date_candle.day_of_week==5)) aux_dir=0;
              if (aux_dir<-2 && filter.HILO_BUY && filter.SAR_BUY && filter.MIBAND_UP) aux_dir++;
              if (force_trade==0) {
                 if (aux_dir<-2 && filter.VWAP_CROSS) {
                    if (low[id]<HILO2[id] && close[id]>HILO2[id] && close[id]>low[id-2] && candle_lo>2*body_down) aux_dir++;
                    if (aux_dir<-2 && filter.HILO_INVERTSELL && aux_abs<aux_abslast/2 && close[id]<HILO2[id] && close[id-1]>HILO2[id] && low[id]<loBand[id]) aux_dir++;
                    if (aux_dir<-2 && aux_dir>-16 && RSI[id]<36 && open[id]-VWAP[id]>3*(VWAP[id]-close[id])) aux_dir=0;
                    if (aux_dir<-2 && aux_dir>-16 && CCI[id]<-120 && candle_lo>aux_abslast && candle_lo>3*candle_hi && low[id]<loBand[id] && MA100[id]>MA200[id] && MA200[id]>MA200[id-1]) aux_dir=0;
                    if (aux_dir<-2 && date_candle.hour<11 && filter.VWAP_LASTCROSS && CCI[id]<-110 && low[id]-pricestats.min_dayprice<aux_abs/5 && high[id]>MAFast[id] && low[id]<MAFast[id] && high[id]>MA25[id] && low[id]<MA25[id] && high[id-1]>MAFast[id-1] && low[id-1]<MAFast[id-1] && high[id-1]>MA25[id-1] && low[id-1]<MA25[id-1] && ((low[id]-MA50[id]<aux_abs/5 && close[id]>MA50[id]) || (low[id]-MA100[id]<aux_abs/5 && close[id]>MA100[id]))) aux_dir=0;
                 }
                 if (aux_dir<-2 && mycounters.c_down>1 && high[id]<VWAP[id] && high[id-1]>VWAP[id-1] && low[id]<VWAP[id] && high[id-1]>MA200[id-1] && low[id]<MA200[id] && MFI[id]<30 && CCI[id]<-130 && low[id]<loBand[id]) aux_dir=0;
                 if (aux_dir<-2 && open[id]>MAFast[id] && low[id]<MAFast[id] && close[id]>MAFast[id]) aux_dir++;
                 if (aux_dir<-2 && open[id]>MA50[id] && low[id]<MA50[id] && close[id]>MA50[id]) aux_dir++;
                 if (aux_dir<-2 && open[id]>MA100[id] && low[id]<MA100[id] && close[id]>MA100[id] && filter.VWAP_UP) aux_dir++;
                 if (aux_dir<-2 && date_candle.hour>11 && date_candle.hour<15 && !filter.VWAP_LASTCROSS && open[id]>VWAP[id] && low[id]<VWAP[id] && close[id]>VWAP[id]) aux_dir=0;
                 if (aux_dir<-2 && close[id]>MAFast[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id]) aux_dir++;
                 if (aux_dir<-2 && candle_lo>body_down && low[id]<loBand2[id] && close[id]>loBand2[id]) aux_dir++;
                 //if (aux_dir<-2 && filter.HILO_INVERTSELL && high[id]>MA200[id] && low[id]<MA200[id]) aux_dir++;
                 if (aux_dir<-2 && aux_dir>-13 && apftrade.bars_notrade<2 && apftrade.trade_lastdir==1 && MFI[id]<40 && RSI[id]<40 && open[id]<MAFast[id] && high[id]>VWAP[id]) aux_dir=0;
                 if (aux_dir<-2 && mycounters.c_down>2 && (date_candle.day_of_week==1 || date_candle.day_of_week==5) && filter.VWAP_UP && i-pricestats.vwap_idx>15 && CCI[id]<-110 && candle_lo>0 && MA50[id]>MA50[id-2] && (MA100[id]>MA100[id-2] || MA200[id]>MA200[id-2]) && close[id]>MA25[id] && low[id]-MA25[id]<aux_abs/2 && MA25[id]>MA50[id] && MA50[id]>MA100[id] && MA100[id]>MA200[id]) aux_dir=0;
                 if (aux_dir<-2 && date_candle.hour>13 && filter.NO_VWAPCROSS && candle_lo>0) {
                    if (date_candle.hour>14 && i-pricestats.vwap_idx>20 && RSI[id]<30 && MA50[id-1]>MA50[id-2] && low[id]>VWAP[id] && ((high[id]>MA25[id] && low[id]<MA50[id]) || (high[id]>MA50[id] && low[id]<MA25[id]))) aux_dir=0;
                    if (aux_dir>-16 && filter.VWAP_UP && filter.tdf_color!=2 && mycounters.c_down>2 && i-pricestats.vwap_idx>30 && low[id]-VWAP[id]>3*aux_abs && low[id]<loBand[id]) aux_dir=0;
                    if (aux_dir<-2 && filter.VWAP_UP && date_candle.hour>15 && (filter.HILO_INVERTSELL || mycounters.hilosell>5) && close[id]>VWAP[id] && CCI[id]<-200 && MFI[id]<20 && i-pricestats.vwap_idx>10) aux_dir=0;
                    if (aux_dir<-2 && i-pricestats.vwap_idx>30 && (CCI[id]<-120 || RSI[id]<30) && VWAP[id]-high[id]>3*aux_abs && high[id]<MA25[id] && MA100[id]<VWAP[id] && MA50[id]-MA25[id]>aux_abs && MA100[id]-MA50[id]>aux_abs) aux_dir++;
                    if (aux_dir<-2 && aux_dir>-16 && CCI[id]<-170 && RSI[id]<32 && i-pricestats.vwap_idx>25 && MA50[id]<VWAP[id] && high[id]<MA25[id] && low[id]<loBand[id]) aux_dir=0;
                    if (aux_dir<-2 && aux_dir>-18 && RSI[id]<40 && CCI[id]<-190 && i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && low[id]<loBand2[id]) aux_dir=0;
                    if (aux_dir<-2 && aux_dir>-12 && date_candle.hour>15 && filter.VWAP_UP && i-pricestats.vwap_idx>30 && low[id]>VWAP[id] && close[id]>MA50[id] && MA25[id]-MA50[id]>aux_abs && MA50[id]-MA100[id]>aux_abs && MA100[id]>MA200[id] && MA100[id]>MA100[id-1] && MA200[id]>MA200[id-1]) aux_dir+=3;
                    if (aux_dir<-2 && aux_dir>-15 && date_candle.hour>14 && filter.VWAP_UP && i-pricestats.vwap_idx>30 && RSI[id]<32 && low[id]-VWAP[id]>2*body_down && MAFast[id-1]>MA25[id-1] && MA100[id]>MA200[id]) aux_dir=0;
                 }
              }
              if (aux_dir<-2 && aux_dir>-10 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.VWAP_UP && low[id]>VWAP[id] && body_down<MA25[id]-MA50[id] && ((low[id]<MAFast[id] && close[id]>MAFast[id]) || (low[id]<MA25[id] && close[id]>MA25[id]) || (low[id]<MA50[id] && close[id]>MA50[id]))) aux_dir++;
              if (aux_dir<-2 && aux_dir>-12 && CCI[id]<-130 && force_trade==0 && RSI[id]<24 && open[id]<VWAP[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id] && close[id]<loBand[id]) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-15 && date_candle.hour==9 && date_candle.min==50 && candle_lo>0 && MA25[id]>MA50[id] && MA50[id]>MA100[id]) aux_dir=0;
              if (aux_dir>-10 && date_candle.hour>13 && high[id]>MAFast[id] && high[id]>MA25[id] && high[id]>MA50[id] && high[id]>MA100[id])
                 if (low[id]<MAFast[id] && low[id]<MA25[id] && low[id]<MA50[id] && low[id]>MA100[id]) aux_dir++;
           }
        }
     }

     // Mandatory controls
     if (filter.HILO_BUY && mycounters.c_up==2 && body_up>3*candle_hi && body_up>3*candle_lo && CCI[id]>-30 && MFI[id]<90 && close[id]>HILO2[id] && high[id-2]>VWAP[id-2] && open[id-1]<VWAP[id-1] && close[id]>VWAP[id] && open[id-1]<MAFast[id-1] && close[id-1]>MAFast[id-1] && open[id]<MA200[id] && close[id]>MA200[id]) aux_dir+=3;
     else if (filter.HILO_SELL && body_down>0 && body_down>3*candle_lo && CCI[id]<30 && MFI[id]>10 && close[id]<HILO2[id] && low[id-2]<VWAP[id-2] && open[id-1]>VWAP[id-1] && close[id]<VWAP[id] && open[id-1]>MAFast[id-1] && close[id-1]<MAFast[id-1] && open[id]>MA200[id] && close[id]<MA200[id]) aux_dir-=10;
     if (VOLUME_UP && filter.VWAP_CROSS) {
        if (apftrade.bars_notrade<2 && apftrade.trade_lastdir==2 && high[id]>VWAP[id]);
        else if (filter.VWAP_CROSS && (candle_hi>body_up || (mycounters.hilobuy>5 && date_candle.hour>15) || (filter.VWAP_DOWN && date_candle.hour>16)));
        else if (filter.VWAP_CROSS && date_candle.hour<10 && RSI[id]>68 && CCI[id]>150 && high[id]>upBand[id] && high[id]>=pricestats.max_lastdayprice);
        else if (filter.VWAP_CROSS && filter.VWAP_LASTCROSS && candle_hi>0 && MFI[id]>80 && date_candle.hour<10 && high[id]>=pricestats.max_dayprice);
        else if (type==1 && filter.HILO_INVERTBUY && aux_dir>2 && aux_dir<12 && CCI[id]>210 && RSI[id]>70 && force_trade==0) aux_dir--;
        else if (type==1 && aux_dir>2 && aux_dir<12 && filter.VWAPCROSS && date_candle.hour<11 && CCI[id]>55 && mycounters.hilobuy>4 && high[id]<open[id-1]) aux_dir-=2;
        else if (type==1 && filter.HILO_INVERTBUY && date_candle.hour<11 && candle_hi>0 && CCI[id]>140 && close[id]>upBand[id] && pricestats.max_dayprice-high[id]<aux_abs/5 && close[id]>VWAP[id] && VWAP[id]>MA25[id] && MA25[id]>MA50[id] && MA50[id]>MA100[id]) aux_dir=0;
        else if (type==1 && date_candle.hour>12 && candle_hi>0 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && high[id-2]>VWAP[id-2] && low[id-2]<VWAP[id-2]) aux_dir=0;
        else if (filter.HILO_BUY && mycounters.c_up<4 && body_up>0 && open[id]<MAFast[id] && close[id]>MAFast[id])
           if (mycounters.hilobuy<10 && close[id-1]<HILO2[id-1] && open[id]<HILO2[id] && close[id]>HILO2[id] && (date_candle.hour<12 || high[id]<upBand2[id])) aux_dir+=11;

        if (apftrade.bars_notrade<2 && apftrade.trade_lastdir==1 && low[id]<VWAP[id]);
        else if (filter.VWAP_CROSS && (candle_lo>body_down || (mycounters.hilosell>5 && date_candle.hour>15) || (filter.VWAP_UP && date_candle.hour>16)));
        else if (filter.VWAP_CROSS && date_candle.hour<10 && RSI[id]<32 && CCI[id]<-150 && low[id]<loBand[id] && low[id]<=pricestats.min_lastdayprice);
        else if (filter.VWAP_CROSS && filter.VWAP_LASTCROSS && candle_lo>0 && MFI[id]<20 && date_candle.hour<10 && low[id]<=pricestats.min_dayprice);
        else if (type==1 && filter.HILO_INVERTSELL && aux_dir<-2 && aux_dir>-12 && CCI[id]<-210 && force_trade==0) aux_dir++;
        else if (type==1 && aux_dir<-2 && aux_dir>-12 && filter.VWAPCROSS && date_candle.hour<11 && CCI[id]<-55 && mycounters.hilosell>4 && low[id]>open[id-1]) aux_dir+=2;
        else if (type==1 && filter.HILO_INVERTSELL && date_candle.hour<11 && candle_lo>0 && CCI[id]<-140 && close[id]<loBand[id] && low[id]-pricestats.min_dayprice<aux_abs/5 && close[id]<VWAP[id] && VWAP[id]<MA25[id] && MA50[id]>MA25[id] && MA100[id]>MA50[id]) aux_dir=0;
        else if (type==1 && date_candle.hour>12 && candle_lo>0 && filter.tdf_color==0 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && high[id-2]>VWAP[id-2] && low[id-2]<VWAP[id-2]) aux_dir=0;
        else if (filter.HILO_SELL && mycounters.c_down<4 && body_down>0 && open[id]>MAFast[id] && close[id]<MAFast[id])
           if (mycounters.hilosell<15 && close[id-1]>HILO2[id-1] && open[id]>HILO2[id] && close[id]<HILO2[id] && (date_candle.hour<12 || low[id]>loBand2[id])) aux_dir-=11;
     }
     if (filter.NO_VWAPCROSS) {
        if (body_down>0 && body_down>2*candle_lo && MFI[id-1]>90)
           if (low[id]<low[id-1] && high[id-1]-high[id]>body_down && high[id-1]-high[id-2]>body_down && high[id-1]>upBand2[id-1] && open[id]<upBand2[id])
              aux_dir-=15;

        if (type==1 && filter.tdf_color==0) {
           if (aux_dir>2) {
              if ((filter.HILO_SELL || filter.SAR_SELL) && i-pricestats.vwap_idx>30 && stdDev[id]<aux_abs/2 && high[id]<high[id-2] && date_candle.hour>13) aux_dir=0;
              if (aux_dir>2 && filter.NO_VWAPCROSS && VWAP[id]<VWAP[id-1] && i-pricestats.vwap_idx>30 && CCI[id]>140 && high[id]<VWAP[id] && close[id]<MA50[id] && ((high[id]>MA50[id] && close[id]<MA50[id]) || (high[id]>MA100[id] && close[id]<MA100[id]))) aux_dir=0;
           }
           else if (aux_dir<-2) {
              if ((filter.HILO_BUY || filter.SAR_BUY) && i-pricestats.vwap_idx>30 && stdDev[id]<aux_abs/2 && low[id]>low[id-2] && date_candle.hour>13) aux_dir=0;
              if (aux_dir<-2 && filter.NO_VWAPCROSS && VWAP[id]>VWAP[id-1] && i-pricestats.vwap_idx>30 && RSI[id]<32 && CCI[id]<-140 && low[id]>VWAP[id] && close[id]>MA50[id] && ((low[id]<MA50[id] && close[id]>MA50[id]) || (low[id]<MA100[id] && close[id]>MA100[id]))) aux_dir=0;
           }
                      
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
              if (aux_dir>2 && date_candle.hour>15 && filter.VWAP_CROSS && high[id-1]<VWAP[id-1] && close[id]-VWAP[id]<aux_abs/5) aux_dir=0;
              if (aux_dir>2 && aux_dir<14 && force_trade==0 && pricestats.bars_day<4 && CCI[id]>100 && candle_hi>0 && open[id]>VWAP[id] && low[id-1]<MA25[id-1] && low[id]>MA100[id] && low[id]>MA200[id]) aux_dir=0;
              if (aux_dir>5 && aux_dir<14 && date_candle.hour==10 && force_trade==0 && open[id]<VWAP[id] && close[id]-VWAP[id]>2*(VWAP[id]-open[id]) && (close[id]>MA25[id] || close[id]>MA100[id]) && high[id]<MA50[id]) aux_dir=0;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour<11 && CCI[id]>90 && candle_hi>0 && high[id]>upBand[id] && (low[id]<loBand[id] || low[id-1]<loBand[id-1]) && MA100[id]>MA50[id] && MA50[id]>MA25[id] && high[id]>MA100[id] && low[id]<MA25[id]) aux_dir=0;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour>15 && CCI[id]>120 && MFI[id]>90 && RSI[id]>70 && low[id]>VWAP[id]) aux_dir-=2;
              if (aux_dir>2 && aux_dir<14 && filter.tdf_color==0 && mycounters.hilobuy>5 && CCI[id]>68 && CCI[id]-CCI[id-1]<1 && close[id]<high[id-1] && candle_hi>0 && low[id]>VWAP[id] && (tick_volume[id]<tick_volume[id-1] || tick_volume[id]<tick_volume[id-2])) aux_dir-=2;
              if (aux_dir>2 && aux_dir<14 && date_candle.hour>12 && filter.NO_VWAPCROSS && CCI[id]>90 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && MA200[id]>MA100[id] && MA100[id]-MA50[id]>aux_abs && MA50[id]-MA25[id]>aux_abs/2) aux_dir=0;
              if (aux_dir>2 && filter.NO_VWAPCROSS && (filter.HILO_SELL || filter.SAR_SELL) && filter.MED_DOWN && (filter.tdf_color==2 || (i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && aux_abs<aux_abslast/2)) && close[id]<HILO2[id] && high[id]<MAFast[id]) aux_dir=0;
              if (aux_dir>2 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_up==1 && stdDev[id]<aux_abs/2 && ((high[id]>upBand2[id] && high[id-1]>upBand2[id-1]) || (high[id]>upBand[id] && high[id-1]>upBand[id-1] && MA200[id]<MA200[id-1]))) aux_dir=0;
              if (aux_dir>2 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && MA200[id]>MA100[id] && MA100[id]>MA50[id] && MA50[id]>MA25[id] && high[id]>MA50[id] && close[id]<MA50[id] && high[id]>upBand[id] && MA200[id]<MA200[id-1] && MA100[id]<MA100[id-1]) aux_dir=0;
              if (aux_dir>2 && VWAP_CROSS && force_trade==0 && high[id-1]<VWAP[id-1] && CCI[id]>150 && close[id]>upBand[id] && low[id-1]<loBand2[id-1] && close[id]>MAFast[id]) aux_dir=0;
              if (force_trade==0 && filter.tdf_color==0) {
                 if (aux_dir>2 && filter.VWAP_CROSS && pricestats.bars_day<6 && high[id]>MA200[id] && close[id]<MA200[id]) aux_dir=0;
                 if (aux_dir>2 && filter.VWAP_CROSS && (mycounters.hilobuy>2 || mycounters.sarbuy>2 || high[id]>upBand2[id]) && CCI[id]>150 && (filter.tdf_color==2 || high[id]>upBand2[id] || high[id]<MA50[id]) && ((high[id]>VWAP[id] && close[id]<VWAP[id] && high[id-1]<VWAP[id-1]) || (high[id]>MA50[id] && close[id]<MA50[id] && high[id-1]<MA50[id-1]) || (high[id]>MA200[id] && close[id]<MA200[id] && high[id-1]<MA200[id-1]))) aux_dir=0;
                 if (aux_dir>2 && filter.VWAP_LASTCROSS && filter.HILO_INVERTBUY && CCI[id]>150 && candle_hi>0 && open[id]>MAFast[id] && high[id-2]<VWAP[id-2] && aux_abs<aux_abslast/2 && MathAbs(close[id-2]-open[id-2])<aux_abslast/2) aux_dir=0;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && date_candle.hour>11 && filter.tdf_color==0 && i-pricestats.vwap_idx>30 && CCI[id]>110 && candle_hi>0 && candle_lo>0 && (Force[id]<0 || MA100[id]>VWAP[id]) && ((high[id]>MA50[id] && low[id]<MA50[id]) || (high[id]>MA25[id] && low[id]<MA25[id]))) aux_dir=0;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && i-pricestats.vwap_idx>30 && CCI[id]>120 && high[id]<VWAP[id] && close[id]<MA50[id] && ((high[id]>MA50[id] && close[id]<MA50[id]) || (high[id]>MA100[id] && close[id]<MA100[id]))) aux_dir-=2;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.MIBAND_DOWN && CCI[id]>95 && candle_hi>0 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>20 && high[id]<VWAP[id] && MA50[id]<VWAP[id] && MA100[id]-MA50[id]>aux_abs && MA50[id]-MA25[id]>aux_abs/2 && MA100[id]<MA100[id-1]) aux_dir=0;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && filter.HILO_INVERTBUY && date_candle.hour==13 && CCI[id]>100 && MFI[id]>71 && candle_hi>0 && high[id]<VWAP[id] && VWAP[id]-high[id]<body_up/2) aux_dir=0;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && filter.HILO_INVERTBUY && date_candle.hour==13 && mycounters.c_up==1 && i-pricestats.vwap_idx>30 && CCI[id]>170 && candle_hi>0 && low[id]>VWAP[id]) aux_dir=0;
                 if (aux_dir>2 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.HILO_SELL && MA25[id]<VWAP[id] && close[id]<VWAP[id] && high[id]>HILO[id] && close[id]<HILO[id] && high[id]>MA25[id] && close[id]<MA25[id]) aux_dir--;
              }
           }
           else if (aux_dir<-2) {
              if (force_trade==0 && CCI[id]<-130 && close[id]<MA200[id] && MA200[id]<MA100[id]) aux_dir++;
              if ((high[id]>upBand2[id] || high[id-1]>upBand2[id-1]) && close[id]<upBand2[id] && close[id]>miBand[id]) {
                 aux_dir++;
                 if (close[id]>LR[id]) aux_dir+=2;
              }
              if (aux_dir<-2 && date_candle.hour>15 && filter.VWAP_CROSS && low[id-1]>VWAP[id-1] && VWAP[id]-close[id]<aux_abs/5) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-13 && force_trade==0 && pricestats.bars_day<4 && CCI[id]<-100 && candle_lo>0 && open[id]<VWAP[id] && high[id-1]>MA25[id-1] && high[id]<MA100[id] && high[id]<MA200[id]) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-10 && date_candle.hour<11 && CCI[id]<-90 && candle_lo>0 && low[id]<loBand[id] && (high[id]>upBand[id] || high[id-1]>upBand[id-1]) && MA100[id]<MA50[id] && MA50[id]<MA25[id] && high[id]>MA25[id] && low[id]<MA100[id]) aux_dir=0;
              if (aux_dir<-5 && aux_dir>-14 && date_candle.hour==10 && force_trade==0 && open[id]>VWAP[id] && VWAP[id]-close[id]>2*(open[id]-VWAP[id]) && (close[id]<MA25[id] || close[id]<MA100[id]) && low[id]>MA50[id]) aux_dir=0;
              if (aux_dir<-2 && aux_dir>-14 && date_candle.hour>15 && CCI[id]<-120 && MFI[id]<20 && RSI[id]<35 && high[id]<VWAP[id]) aux_dir+=2;
              if (aux_dir<-2 && aux_dir>-14 && filter.tdf_color==0 && mycounters.hilosell>5 && CCI[id]<-70 && CCI[id-1]-CCI[id]<1 && close[id]>low[id-1] && candle_lo>0 && high[id]<VWAP[id] && (tick_volume[id]<tick_volume[id-1] || tick_volume[id]<tick_volume[id-2])) aux_dir+=2;
              if (aux_dir<-2 && aux_dir>-14 && date_candle.hour>12 && filter.NO_VWAPCROSS && CCI[id]<-90 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>15 && high[id]<VWAP[id] && MA200[id]<MA100[id] && MA50[id]-MA100[id]>aux_abs && MA25[id]-MA50[id]>aux_abs/2) aux_dir=0;
              if (aux_dir<-2 && filter.NO_VWAPCROSS && (filter.HILO_BUY || filter.SAR_BUY) && filter.MED_UP && (filter.tdf_color==1 || (i-pricestats.vwap_idx>15 && low[id]>VWAP[id] && aux_abs<aux_abslast/2)) && close[id]>HILO2[id] && low[id]>MAFast[id]) aux_dir=0;
              if (aux_dir<-2 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && mycounters.c_down==1 && stdDev[id]<aux_abs/2 && low[id]<loBand2[id] && low[id-1]<loBand2[id-1]) aux_dir=0;
              if (aux_dir<-2 && filter.VWAP_CROSS && filter.VWAP_LASTCROSS && aux_dir>-14 && MA25[id]>MA50[id] && MA50[id]>MA100[id] && MA100[id]>MA200[id] && low[id]<MA50[id] && close[id]>MA50[id] && low[id]<loBand[id] && MA200[id]>MA200[id-1] && MA100[id]>MA100[id-1]) aux_dir=0;
              if (aux_dir<-2 && VWAP_CROSS && force_trade==0 && low[id-1]>VWAP[id-1] && CCI[id]<-150 && close[id]<loBand[id] && high[id-1]>upBand[id-1] && high[id-2]>upBand[id-2] && close[id]<MAFast[id]) aux_dir=0;
              if (force_trade==0 && filter.tdf_color==0) {
                 if (aux_dir<-2 && filter.VWAP_CROSS && pricestats.bars_day<6 && low[id]<MA200[id] && close[id]>MA200[id]) aux_dir=0;
                 if (aux_dir<-2 && filter.VWAP_CROSS && (mycounters.hilosell>2 || mycounters.sarsell>2 || low[id]<loBand2[id]) && CCI[id]<-150 && (filter.tdf_color==1 || low[id]>MA50[id] || low[id]<loBand2[id]) && ((low[id]<VWAP[id] && close[id]>VWAP[id] && low[id-1]>VWAP[id-1]) || (low[id]<MA50[id] && close[id]>MA50[id] && low[id-1]>MA50[id-1]) || (low[id]<MA200[id] && close[id]>MA200[id] && low[id-1]>MA200[id-1]))) aux_dir=0;
                 if (aux_dir<-2 && filter.VWAP_LASTCROSS && filter.HILO_INVERTSELL && CCI[id]<-60 && candle_lo>0 && open[id]<MAFast[id] && low[id-2]>VWAP[id-2] && aux_abs<aux_abslast/2 && MathAbs(close[id-2]-open[id-2])<aux_abslast/2) aux_dir=0;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && date_candle.hour>11 && filter.tdf_color==0 && i-pricestats.vwap_idx>30 && CCI[id]<-110 && candle_hi>0 && candle_lo>0 && (Force[id]>0 || MA25[id]<VWAP[id]) && ((high[id]>MA50[id] && low[id]<MA50[id]) || (high[id]>MA25[id] && low[id]<MA25[id]))) aux_dir=0;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && filter.VWAP_UP && i-pricestats.vwap_idx>30 && CCI[id]<-150 && low[id]>VWAP[id] && low[id]>MA50[id] && ((low[id]<MA50[id] && close[id]>MA50[id]) || (low[id]<MA100[id] && close[id]>MA100[id]))) aux_dir+=2;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && filter.VWAP_UP && filter.MIBAND_UP && CCI[id]<-200 && candle_lo>0 && stdDev[id]<aux_abs/2 && i-pricestats.vwap_idx>20 && low[id]>VWAP[id] && MA50[id]>VWAP[id] && MA50[id]-MA100[id]>aux_abs && MA25[id]-MA50[id]>aux_abs/2 && MA100[id]>MA100[id-1]) aux_dir=0;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && filter.HILO_INVERTSELL && date_candle.hour==13 && CCI[id]<-100 && MFI[id]<15 && candle_lo>0 && low[id]>VWAP[id] && low[id]-VWAP[id]<body_down/2) aux_dir=0;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && filter.HILO_INVERTSELL && date_candle.hour==13 && mycounters.c_down==1 && i-pricestats.vwap_idx>30 && CCI[id]<-170 && candle_lo>0 && high[id]<VWAP[id]) aux_dir=0;
                 if (aux_dir<-2 && filter.NO_VWAPCROSS && filter.VWAP_UP && filter.HILO_BUY && MA25[id]>VWAP[id] && close[id]>VWAP[id] && low[id]<HILO[id] && close[id]>HILO[id] && low[id]<MA25[id] && close[id]>MA25[id]) aux_dir++;
              }
           }
        }
     }
     // Latest VWAP and MA200 trade
     if (type==1) {
        if (VWAP_CROSS) {
           if (filter.VWAP_UP && body_up>0 && CCI[id]<150 && low[id]>low[id-1] && low[id-2]>low[id-1] && MA25[id]>VWAP[id] && close[id]>(open[id-1]+close[id-1])/2 && low[id-2]>VWAP[id-2] && high[id]<upBand2[id]) {
              if ((low[id-2]>MA100[id-2] && low[id-1]<MA100[id-1] && close[id-1]>MA100[id-1]) || (low[id-2]>MA200[id-2] && low[id-1]<MA200[id-1] && close[id-1]>MA200[id-1]))
              aux_dir+=12;
           }
           else if (filter.VWAP_DOWN && body_down>0 && CCI[id]>-150 && high[id-1]>high[id] && high[id-1]>high[id-2] && MA25[id]<VWAP[id] && close[id]<(open[id-1]+close[id-1])/2 && high[id-2]<VWAP[id-2] && low[id]>loBand2[id]) {
              if ((high[id-2]<MA100[id-2] && high[id-1]>MA100[id-1] && close[id-1]<MA100[id-1]) || (high[id-2]<MA200[id-2] && high[id-1]>MA200[id-1] && close[id-1]<MA200[id-1]))
              aux_dir-=12;
           }
        }
     }


     if (date_candle.hour>10 && date_candle.hour<15) {
        if (type==0) {
           // Close position
           if (apftrade.trade_dir==1) {
              if (filter.tdf_color!=1) {
                 if (filter.HILO_INVERTSELL && mycounters.c_down>1 && CCI[id]<30 && MFI[id]<90 && RSI[id]<58) 
                    if (body_down>0 && close[id]<HILO2[id])
                       aux_dir-=5;
              }
              if (CCI[id-1]>120 && RSI[id-1]>70 && body_down>3*candle_lo && close[id]<low[id-1] && ((close[id-2]<MA100[id-2] && close[id-1]>MA100[id-1] && close[id]>VWAP[id]) || (close[id-2]<MA200[id-2] && close[id-1]>MA200[id-1])) && close[id]<MA50[id] && high[id-1]>upBand[id-1] && close[id]<upBand[id]) aux_dir=-5;
           }
           else if (apftrade.trade_dir==2 && filter.tdf_color!=2) {
              if (filter.tdf_color!=2) {
                 if (filter.HILO_INVERTBUY && mycounters.c_up>1 && CCI[id]>-30 && MFI[id]>20 && RSI[id]>28) 
                    if (body_up>0 && close[id]>HILO2[id])
                       aux_dir+=5;
              }
              if (CCI[id-1]<-120 && RSI[id-1]<30 && body_up>3*candle_hi && close[id]>high[id-1] && ((close[id-2]>MA100[id-2] && close[id-1]<MA100[id-1] && close[id]<VWAP[id]) || (close[id-2]>MA200[id-2] && close[id-1]<MA200[id-1])) && close[id]>MA50[id] && low[id-1]<loBand[id-1] && close[id]>loBand[id]) aux_dir=5;
           }
        }

        if (filter.MED_DOWN && ((type==0 && apftrade.trade_dir==1) || (type==1 && body_down>0 && body_down>2*candle_lo && body_down>2*candle_hi)))
           if (filter.HILO_INVERTSELL && CCI[id]<0 && Force[id]<0 && MFI[id]>20 && RSI[id]<55 && MAFast[id]<MAFast[id-1])
              if (close[id]<VWAP[id] && close[id]<(open[id-1]+close[id-1])/2 && close[id]<MAFast[id])
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
