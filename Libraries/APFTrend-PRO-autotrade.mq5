//+------------------------------------------------------------------+
//|                                      APFTrend-PRO1-autotrade.mq5 |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property library
#property copyright "Copyright 2022, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"
#property version   "1.00"

#include <APFTrend-PRO-Base.mqh>

//pts_size=110;
//pts_size2=150;    -> 300 pts = 2*pts_size2
//pts_maxsize=350;
//pts_maxsize2=500  -> 1000 pts = 2*pts_maxsize2 and 1500 pts = 3*pts_maxsize2

//+------------------------------------------------------------------+
//| getSignal function (1: long, 2: short and 0: ignore or close     |
//+------------------------------------------------------------------+
int getSignal(const int type, const int idx, const int i, const datetime &time[],
        const long &tick_volume[], const double &high[], const double &open[], const double &close[], const double &low[],
        const double &color_line[], const double &VWAP[], const double &HILO[], double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[],
        const double &Force[], const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[],
        const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats) export
  {
     int ret=0, aux_dir=0, MAFastSize=ArraySize(MAFast);
     MqlDateTime date_candle;
     if (idx<5 && pricestats.first_bar<1) return(ret);

     int trade_start=0, force_close=0, set_force=0;
     bool VOLUME_UP = tick_volume[idx]>tick_volume[idx-1];
     double aux_abs = MathAbs(close[idx]-open[idx]);
     double aux_abslast = MathAbs(close[idx-1]-open[idx-1]);
     double vwap_distance = MathAbs(close[idx]-VWAP[idx]);
     double auxlast_abs = MathAbs(close[i]-open[i]);
     double auxlast_abslast = MathAbs(close[i-1]-open[i-1]);
     double candlelast_hi = high[i-1]-MathMax(open[i-1],close[i-1]);
     double candlelast_lo = MathMin(open[i-1],close[i-1])-low[i-1];

     force_close=0;
     TimeToStruct(time[idx],date_candle);
     initCandleMetrics(open[idx], close[idx], high[idx], low[idx]);
     bool BACK_DIR1=(type==1 || (type==0 && apftrade.trade_dir==2 && Force[idx]>0 && (apftrade.bars_trade>bars_pos_search || body_down>60 || close[idx]>=open[idx-1]) && (filter.tdf_color==1 || (VOLUME_UP && (filter.MIBAND_UP || filter.VWAP_UP) && open[idx]<MAFast[idx] && close[idx]>MAFast[idx] && low[idx]>VWAP[idx] && body_up>100) || (filter.VWAPCROSS && close[idx]-VWAP[idx]>30) || !(filter.NO_VWAPCROSS && filter.VWAP_DOWN && high[idx]<VWAP[idx]))));
     bool BACK_DIR2=(type==1 || (type==0 && apftrade.trade_dir==1 && Force[idx]<0 && (apftrade.bars_trade>bars_pos_search || body_up>60 || close[idx]<=open[idx-1]) && (filter.tdf_color==2 || (VOLUME_UP && (filter.MIBAND_DOWN || filter.VWAP_DOWN) && open[idx]>MAFast[idx] && close[idx]<MAFast[idx] && high[idx]<VWAP[idx] && body_down>100) || (filter.VWAP_CROSS && VWAP[idx]-close[idx]>30) || !(filter.NO_VWAPCROSS && filter.VWAP_UP && low[idx]>VWAP[idx]))));

     if (date_candle.hour>11 && tick_volume[idx]>tick_volume[idx-1] && date_candle.hour<17 && stdDev[idx]>80 && aux_abs>35 && aux_abs<400) {
        if (filter.tdf_color!=2 && !filter.SAR_INVERTSELL && (filter.HILO_BUY || filter.HILO_INVERTBUY || Force[idx]>0 || close[idx-1]-open[idx-1]>20) && !filter.VWAP_DOWN && high[idx]>high[idx-1] && high[idx]>high[idx-2] && body_up>35 && body_up>2*aux_abslast && RSI[idx]<65 && RSI[idx]>30) {
           if (filter.VWAP_DOWN && date_candle.hour>14 && stdDev[idx]<120 && idx-pricestats.vwap_idx>24 && high[idx]<MA200[idx]);
           else {
             if (BACK_DIR1 && close[idx]>high[idx-1] && low[idx]-low[idx-1]>20 && high[idx]-high[idx-1]>20 && open[idx-1]<VWAP[idx-1] && close[idx-1]<VWAP[idx-1] && high[idx-1]<MAFast[idx-1] && high[idx]-MAFast[idx]>15) {
                aux_dir=14;
                trade_start=1;
             }
           }
        }
        if (filter.tdf_color!=1 && !filter.SAR_INVERTBUY && low[idx]<low[idx-1] && low[idx]<low[idx-2] && body_down>35 && RSI[idx]>35 && RSI[idx]<70) {
           if (filter.VWAP_UP && date_candle.hour>14 && stdDev[idx]<120 && idx-pricestats.vwap_idx>24 && low[idx]>MA200[idx]);
           else {
              if (close[idx]<low[idx-1] && high[idx-1]-high[idx]>20 && low[idx-1]-low[idx]>10 && open[idx-1]>VWAP[idx-1] && close[idx-1]>VWAP[idx-1] && low[idx-1]>MAFast[idx-1] && MAFast[idx]-low[idx]>15) {
                 aux_dir=-14;
                 trade_start=1;
              }
           }
        }
     }

     if (date_candle.hour>9 && date_candle.hour<15 && stdDev[idx]>90) {
        if (VOLUME_UP && date_candle.hour<14 && stdDev[idx]>pts_size && aux_abs>pts_size && aux_abs<255 && candle_hi<100 && candle_lo<100 && idx-pricestats.vwap_idx<13) {
           if ((filter.SAR_INVERTBUY || filter.HILO_INVERTBUY) && !filter.VWAP_DOWN && close[idx]>MAFast[idx] && low[idx-1]<MAFast[idx-1] && high[idx]-VWAP[idx]<pts_maxsize && pricestats.max_lastdayprice-high[idx]>pts_maxsize2) {
              if (body_up>0 && body_up>2*candle_hi && low[idx]-low[idx-1]>10 && low[idx-2]-low[idx-1]>10) aux_dir+=4;
           }
           else if ((filter.SAR_INVERTSELL || filter.HILO_INVERTSELL) && !filter.VWAP_UP && close[idx]<MAFast[idx] && high[idx-1]>MAFast[idx-1] && VWAP[idx]-low[idx]<pts_maxsize && low[idx]-pricestats.min_lastdayprice>pts_maxsize2) {
              if (body_down>0 && body_down>2*aux_abslast && body_down>2*candle_lo && high[idx-1]-high[idx]>10 && high[idx-1]-high[idx-2]>10) aux_dir-=2;
           }
        }
        if (type==0 || idx-pricestats.vwap_idx<20) {
           if (filter.MED_UP && filter.tdf_color!=2 && Force[idx]>0 && Force[idx]<3000000 && high[idx]<upBand[idx] && (type==0 || RSI[idx]<70)) {
              if (body_up>pts_size && candle_hi<pts_size && low[idx]>(open[idx-1]+close[idx-1])/2 && open[idx-1]<MAFast[idx-1] && low[idx]>MAFast[idx] && MAFast[idx]>miBand[idx] && MAFast[idx-3]<miBand[idx-3]) aux_dir+=8;
           }
           else if (filter.MED_DOWN && filter.tdf_color!=1 && Force[idx]<0 && Force[idx]>-3000000 && (type==0 || RSI[idx]>30)) {
              if (high[idx]<(open[idx-1]+close[idx-1])/2 && open[idx-1]>MAFast[idx-1] && high[idx]<MAFast[idx] && MAFast[idx]<miBand[idx] && MAFast[idx-3]>miBand[idx-3]) aux_dir-=8;
           }
        }
        if (price_stats.bars_day>5 && filter.NO_VWAPCROSS && aux_abs<pts_maxsize2 && candle_hi<100 && candle_lo<100) {
           if (aux_dir<5 && body_up>pts_size && body_up<2*pts_size2 && candle_hi<15 && open[idx-2]-close[idx]<50 && open[idx-2]-close[idx-2]>2*aux_abslast && close[idx]-high[idx-1]>50 && upBand[idx]-loBand[idx]>450) {
              if (VWAP[idx]-low[idx]>2*pts_size2 && loBand[idx-2]-low[idx-2]>20 && low[idx]-loBand[idx]>50 && high[idx-1]-close[idx-1]-low[idx-1]>2*aux_abslast && close[idx-1]-low[idx-1]>2*aux_abslast)
                 if (RSI[idx-1]<35 || (aux_abs>2*aux_abslast && close[idx]>high[idx-1] && close[idx]>open[idx-2] && open[idx]-low[idx-1]>50 && close[idx-2]-low[idx-1]>50) || (open[idx-1]<MA200[idx-1] && open[idx-2]>MA200[idx-2] && close[idx]-MA200[idx]>100)) aux_dir+=12;
           }
           else if (aux_dir>-5 && body_down>pts_size && candle_lo<15 && close[idx-2]-open[idx-2]>2*aux_abslast && low[idx-1]-close[idx]>50 && upBand[idx]-loBand[idx]>450) {
              if (high[idx]-VWAP[idx]>2*pts_size2 && high[idx-2]>upBand[idx-2] && upBand[idx]-high[idx]>50 && high[idx-1]-close[idx-1]>2*aux_abslast && close[idx-1]-low[idx-1]>2*aux_abslast)
                 if (RSI[idx-1]>65 || (aux_abs>2*aux_abslast && close[idx]<low[idx-1] && close[idx]<open[idx-2] && high[idx-1]-open[idx]>50 && high[idx-1]-close[idx-2]>50) || (open[idx-1]>MA200[idx-1] && open[idx-2]<MA200[idx-2] && MA200[idx]-close[idx]>100)) aux_dir-=12;
           }
        }
        if (pricestats.bars_day>3 && date_candle.hour<12) {
           if (aux_dir<3 && mycounters.c_up<3 && body_up>130 && candle_hi<50 && body_up>3*candle_hi && body_up>3*candle_lo && low[idx-1]<MAFast[idx-1] && close[idx]>MAFast[idx]) {
              if (close[idx]>high[idx-1] && open[idx-1]<MAFast[idx-1] && close[idx]>MAFast[idx] && low[idx-1]<HILO[idx-1] && HILO2[idx-1]>high[idx-1] && close[idx]>HILO2[idx] && open[idx]-low[idx-1]>50 && MathMin(open[idx-2],close[idx-2])-low[idx-1]>50) {
                 if (type==0 && apftrade.bars_trade>1 && apftrade.trade_dir==2) aux_dir+=8;
                 if ((filter.tdf_color!=2 || MA200[idx]>MA200[idx-1]) && HILO[idx]-HILO2[idx]<250 && pricestats.max_dayprice-pricestats.min_dayprice>pts_maxsize2) aux_dir+=12;
              }
           }
        }
     }

     if (pricestats.bars_day>4) {
        if (mycounters.c_up>1 && body_up>100 && aux_abslast>50 && MAFast[idx]>miBand[idx] && Force[idx]>0 && (filter.MED_UP || filter.HILO_BUY || Force[idx]>0)) {
           if (type==0) {
              if (RSI[idx]>45) aux_dir++;
              if (close[idx]-MAFast[idx]>50) aux_dir+=2;
           }
           if (filter.VWAP_CROSS && close[idx]-VWAP[idx]>50) {
              aux_dir+=5;
              if (date_candle.hour>9 && date_candle.hour<15 && RSI[idx]<65 && high[idx]-low[idx-1]<pts_maxsize2 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>50) aux_dir+=6;
           }
        }
        else if (mycounters.c_down>1 && body_down>100 && aux_abslast>50 && MAFast[idx]<miBand[idx] && Force[idx]<0 && (filter.MED_DOWN || filter.HILO_SELL|| Force[idx]<0)) {
           if (type==0) {
              if (RSI[idx]<55) aux_dir--;
              if (MAFast[idx]-close[idx]>50) aux_dir-=2;
           }
           if (filter.VWAP_CROSS && VWAP[idx]-close[idx]>50) {
              aux_dir-=5;
              if (date_candle.hour>9 && date_candle.hour<15 && RSI[idx]>35 && high[idx-1]-low[idx]<pts_maxsize2 && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>50) aux_dir-=6;
           }
        }

        if (date_candle.hour<15 && aux_abs>50 && aux_abs<pts_maxsize) {
           if (stdDev[idx]>pts_size && filter.VWAP_CK_CROSS && aux_abs>100 && candle_hi<100 && candle_lo<100) {
              if (filter.VWAP_UP && filter.tdf_color!=2 && (mycounters.c_up==1 || (mycounters.c_up<3 && filter.SAR_INVERTBUY)) && body_up>100 && candle_hi<35) {
                 if (filter.HILO_BUY && Force[idx]>0 && Force[idx]<3000000 && open[idx]<MAFast[idx] && close[idx]>MAFast[idx] && high[idx]>(open[idx-1]+close[idx-1])/2) {
                    if (filter.MIBAND_UP) aux_dir++;
                    if (low[idx]>MA200[idx]) aux_dir++;
                    if (low[idx]-low[idx-1]>10 && low[idx-2]-low[idx-1]>10) aux_dir--;
                    if (open[idx]>VWAP[idx] && low[idx-1]<VWAP[idx-1] && low[idx-2]>VWAP[idx-2]) aux_dir+=2;
                 }
              }
              else if (filter.VWAP_DOWN && filter.tdf_color!=1 && (mycounters.c_down==1 || (mycounters.c_down<3 && filter.SAR_INVERTSELL)) && body_down>100 && candle_lo<35) {
                 if (filter.HILO_SELL && Force[idx]<0 && Force[idx]>-3000000 && open[idx]>MAFast[idx] && close[idx]<MAFast[idx] && low[idx]<(open[idx-1]+close[idx-1])/2) {
                    if (filter.MIBAND_DOWN) aux_dir--;
                    if (high[idx]<MA200[idx]) aux_dir--;
                    if (high[idx-1]-high[idx]>10 && high[idx-1]-high[idx-2]>10) aux_dir--;
                    if (open[idx]<VWAP[idx] && high[idx-1]>VWAP[idx-1] && high[idx-2]<VWAP[idx-2]) aux_dir-=2;
                 }
              }
           }
           if (filter.VWAP_CROSS && !filter.VWAP_LASTCROSS && date_candle.hour>9 && date_candle.hour<14 && aux_abslast>50) {
              if (mycounters.c_up==2 && filter.tdf_color!=2 && aux_dir>-1 && body_up>50 && low[idx]>low[idx-1] && close[idx]>high[idx-1] && close[idx]>high[idx-2] && close[idx]-MAFast[idx]>30 && MAFast[idx-1]-open[idx-1]>30 && MA200[idx]>MA200[idx-1] && low[idx]>MA200[idx] && high[idx]-VWAP[idx]>50 && high[idx-1]<VWAP[idx-1]) {
                 if (Force[idx]>0 && RSI[idx]<68) aux_dir+=2;
                 if (low[idx]-low[idx-1]>10 && low[idx-2]-low[idx-1]>10) aux_dir+=1;
                 if (MAFast[idx]>MAFast[idx-1]) aux_dir+=3;
              }
              else if (mycounters.c_down==2 && filter.tdf_color!=1 && aux_dir<1 && body_down>50 && high[idx-1]>high[idx] && close[idx]<low[idx-1] && close[idx]<low[idx-2] && MAFast[idx]-close[idx]>30 && open[idx-1]-MAFast[idx-1]>30 && MA200[idx]<MA200[idx-1] && high[idx]<MA200[idx] && VWAP[idx]-low[idx]>50 && low[idx-1]>VWAP[idx-1]) {
                 if (Force[idx]<0 && RSI[idx]>32) aux_dir-=2;
                 if (high[idx-1]-high[idx]>10 && high[idx-1]-high[idx-2]>10) aux_dir-=1;
                 if (MAFast[idx]<MAFast[idx-1]) aux_dir-=3;
              }
           }
           if (date_candle.hour>9 && aux_abs>100 && aux_abs>3*aux_abslast && aux_abs<2*pts_size2 && vwap_distance<pts_maxsize) {
              if (body_up>100 && candle_lo<100 && close[idx]>high[idx-1] && MAFast[idx]-open[idx]>15 && close[idx]-MAFast[idx]>30 && low[idx]-low[idx-1]>40 && low[idx-2]-low[idx-1]>40) {
                 if (close[idx]>(open[idx-2]+close[idx-2])/2 && MathMin(open[idx-1],close[idx-1])-low[idx-1]>3*aux_abslast && open[idx-2]-MAFast[idx-2]>15 && MAFast[idx-2]-close[idx-2]>15) aux_dir+=5;
              }
              else if (body_down>100 && candle_hi<100 && close[idx]<low[idx-1] && open[idx]-MAFast[idx]>15 && MAFast[idx]-close[idx]>30 && high[idx-1]-high[idx]>40 && high[idx-1]-high[idx-2]>40) {
                 if (close[idx]<(open[idx-2]+close[idx-2])/2 && high[idx-1]-MathMax(open[idx-1],close[idx-1])>3*aux_abslast && MAFast[idx-2]-open[idx-2]>15 && close[idx-2]-MAFast[idx-2]>15) aux_dir-=5;
              }
           }
           if (pricestats.bars_day>5 && date_candle.hour<15 && idx-pricestats.vwap_idx<5) {
              if (body_down>100 && body_down>2*candle_lo && RSI[idx-1]>67 && low[idx]>VWAP[idx] && aux_abslast>pts_maxsize2 && high[idx]-low[idx-2]>600 && high[idx]>upBand[idx])
                 aux_dir-=14;
           }
        }
     }

     if (pricestats.bars_day>2 && filter.VWAPCROSS && date_candle.hour<12 && aux_abs<400) {
        if (!filter.VWAP_DOWN && date_candle.hour>9 && mycounters.c_up==1 && aux_dir<6 && body_up>100 && high[idx]-low[idx-2]<pts_maxsize && candle_hi<50 && candle_lo<30 && body_up>3*candle_hi && VWAP[idx]-open[idx]>10 && close[idx]-VWAP[idx]>10) {
           if ((type==1 || filter.HILO_BUY || (Force[idx]>0 && RSI[idx]>50)) && (close[idx]>HILO2[idx] || type==0) && close[idx]>open[idx-1] && close[idx]>MathMax(open[idx-2],close[idx-2]) && close[idx]>loBand[idx] && (close[idx-1]<loBand[idx-1] || close[idx-2]<loBand[idx-2])) aux_dir+=13;
        }
        else if (mycounters.c_down==1 && aux_dir>-6 && body_down>100 && high[idx-2]-low[idx]<pts_maxsize && body_down>3*candle_lo && open[idx]-VWAP[idx]>10 && VWAP[idx]-close[idx]>10) {
           if ((type==1 || filter.HILO_SELL || (Force[idx]<0 && RSI[idx]<50)) && close[idx]<open[idx-1] && close[idx]<MathMin(open[idx-2],close[idx-2]) && close[idx]<upBand[idx] && (close[idx-1]>upBand[idx-1] || close[idx-2]>upBand[idx-2])) aux_dir-=13;
        }
        if (idx>3 && pricestats.bars_day>6 && date_candle.hour==10 && aux_abs>2*aux_abslast && candle_hi<2*aux_abs && candle_lo<2*aux_abs) {
           if (BACK_DIR1 && filter.MED_UP && mycounters.sarbuy>0 && mycounters.sarbuy<10 && filter.tdf_color!=2 && RSI[idx]>55 && RSI[idx]<68 && body_up>100 && candle_hi<150 && close[idx]>high[idx-2] && high[idx]>high[idx-1] && high[idx-1]>high[idx-2]) {
              if (aux_dir>-8 && MAFast[idx]>miBand[idx] && close[idx-3]<VWAP[idx-3] && close[idx]-VWAP[idx]>50 && low[idx-1]-loBand[idx-1]<30) aux_dir+=12;
           }
           else if (BACK_DIR2 && filter.MED_DOWN && mycounters.sarsell>0 && mycounters.sarsell<10 && filter.tdf_color!=1 && RSI[idx]<44 && RSI[idx]>32 && body_down>100 && candle_lo<150 && close[idx]<low[idx-2] && low[idx]<low[idx-1] && low[idx-1]<low[idx-2]) {
              if (aux_dir<8 && MAFast[idx]<miBand[idx] && close[idx-3]>VWAP[idx-3] && VWAP[idx]-close[idx]>50 && upBand[idx-1]-high[idx-1]<30) aux_dir-=12;
           }
        }
     }
     if (filter.VWAP_CROSS && date_candle.hour<12 && aux_abs<pts_maxsize && aux_abslast<pts_maxsize && stdDev[idx]>50 && stdDev[idx]<2*pts_size2 && ATR[idx]<2*pts_size2) {
        if (type==1 && filter.VWAP_UP && filter.MIBAND_UP && mycounters.sarbuy>0 && mycounters.sarbuy<12 && filter.tdf_color!=2) {
           if (Force[idx]>0 && Force[idx]<3000000 && open[idx]>VWAP[idx] && VWAP[idx]-low[idx]>30 && close[idx]-VWAP[idx]>50 && low[idx-1]>VWAP[idx-1])
              if (body_up>50 && candle_hi<50 && candle_lo>3*candle_hi && body_up>2*candle_hi && MAFast[idx]>MAFast[idx-1] && MAFast[idx]>miBand[idx] && close[idx]>MAFast[idx])
                 aux_dir+=14;
        }
        else if (type==1 && pricestats.bars_day>6 && filter.VWAP_DOWN && filter.MIBAND_DOWN && mycounters.sarsell>0 && mycounters.sarsell<12 && filter.tdf_color!=1 && stdDev[idx]<150) {
           if (Force[idx]<0 && Force[idx]>-3000000 && open[idx]<VWAP[idx] && high[idx]-VWAP[idx]>30 && VWAP[idx]-close[idx]>50 && high[idx-1]<VWAP[idx-1])
              if (body_down>50 && candle_lo<50 && candle_hi>3*candle_lo && body_down>2*candle_lo && MAFast[idx]<MAFast[idx-1] && MAFast[idx]<miBand[idx] && close[idx]<MAFast[idx])
                 aux_dir-=14;
        }
     }
     if (VOLUME_UP && aux_abs>2*aux_abslast && candle_hi<50 && candle_lo<50) {
        if (date_candle.hour>10 && date_candle.hour<15) {
           if (mycounters.c_up<3 && open[idx]<VWAP[idx] && VWAP[idx]-VWAP[pricestats.first_bar]>pts_maxsize && VWAP[idx]-VWAP[pricestats.first_bar]<1000) {
              if (filter.tdf_color!=2 && aux_dir>-5 && body_up>60 && candle_hi<25 && body_up>2*candle_hi && open[idx-2]-close[idx-2]>2*aux_abslast && MathMin(open[idx-1],close[idx-1])-low[idx-1]>aux_abslast && close[idx]-high[idx-1]>30 && low[idx]-low[idx-1]>10 && low[idx-2]-low[idx-1]>10)
                 if (RSI[idx-1]<35 && RSI[idx]>40 && low[idx-2]<loBand[idx-2] && close[idx-1]>loBand[idx-1])
                    aux_dir+=12;
           }
           if (mycounters.c_down<3 && open[idx]>VWAP[idx] && VWAP[pricestats.first_bar]-VWAP[idx]>pts_maxsize && VWAP[pricestats.first_bar]-VWAP[idx]<1000) {
              if (filter.tdf_color!=1 && aux_dir<5 && body_down>60 && candle_lo<25 && body_down>2*candle_lo && close[idx-2]-open[idx-2]>2*aux_abslast && high[idx-1]-MathMax(open[idx-1],close[idx-1])>aux_abslast && low[idx-1]-close[idx]>30 && high[idx-1]-high[idx]>10 && high[idx-1]-high[idx-2]>10)
                 if (RSI[idx-1]>65 && RSI[idx]<60 && high[idx-2]>upBand[idx-2] && close[idx-1]<upBand[idx-1])
                    aux_dir-=12;
           }
        }
        if (BACK_DIR1 && date_candle.hour==16 && filter.tdf_color!=2 && VWAP[idx]-open[idx]>15 && close[idx]-VWAP[idx]>15 && high[idx-1]<VWAP[idx-1]) {
           if (Force[idx]>0 && MAFast[idx]>MAFast[idx-1] && MAFast[idx]-open[idx]>15 && close[idx]-MAFast[idx]>15 && low[idx]>MA200[idx] && buf_RSI[idx]<65 && buf_RSI[idx]-buf_RSI[idx-2]>10)
              if (body_up>100 && body_up<250 && body_up>3*candle_hi && high[idx]-low[idx-1]<2*pts_size2 && close[idx]>high[idx-1] && low[idx]>low[idx-1]) aux_dir+=10;
        }
     }
     if (idx>10 && date_candle.hour>10 && date_candle.hour<17 && filter.NO_VWAPCROSS && pricestats.vwap_idx>1 && sizeof(VWAP)>pricestats.vwap_idx && aux_abs>aux_abslast) {
        if (mycounters.c_up<3 && body_up>pts_size && candle_hi<pts_size/2 && body_up>3*candle_hi && close[idx]>high[idx-1] && close[idx]>open[idx-2]) {
           if (pricestats.vwap_lastidx>0 && VWAP[pricestats.vwap_idx]-low[idx]>pts_maxsize2 && MA200[idx]>MA200[idx-1] && low[idx-2]>MA200[idx-2] && low[idx-1]-MA200[idx-1]<10 && close[idx]-MA200[idx]>70) {
              if (aux_abs<pts_maxsize) aux_dir+=15;
              else aux_dir+=10;
           }
        }
        else if (mycounters.c_down<3 && RSI[idx-1]>70 && aux_abs>2*aux_abslast && body_down>pts_size && candle_lo<50 && body_down>3*candle_hi && close[idx]<low[idx-1] && close[idx]<open[idx-2]) {
           if (pricestats.vwap_idx>0 && high[idx]-VWAP[pricestats.vwap_idx]>pts_maxsize2 && MA200[idx]<MA200[idx-1] && high[idx-2]<MA200[idx-2] && MA200[idx-1]-high[idx-1]<10 && MA200[idx]-close[idx]>70) {
              if (aux_abs<pts_maxsize) aux_dir-=15;
              else aux_dir-=10;
           }
        }
     }

     if (date_candle.hour>9 && date_candle.hour<17 && (aux_abs<2*pts_size2 || type==0)) {
        if (date_candle.hour<16 && filter.VWAP_CROSS && ATR[idx]>240 && ATR[idx]<400) {
           if (filter.VWAP_CROSS && aux_abs<250 && stdDev[idx]>240 && stdDev[idx]<pts_maxsize2) {
              if (filter.VWAP_UP && !filter.MED_DOWN && body_down<50 && candle_hi<50 && candle_lo>50 && candle_lo>3*aux_abs && candle_lo>3*candle_hi) {
                 if (RSI[idx]>40 && MASlow[idx]-MAFast[idx]<50 && close[idx-1]>VWAP[idx-1] && MathMin(open[idx],close[idx])-VWAP[idx]>15 && VWAP[idx]-low[idx]>50 && close[idx]-VWAP[idx]>50)
                    aux_dir+=5;
              }
              else if (filter.VWAP_DOWN && !filter.MED_UP && body_up<50 &&  candle_lo<50 && candle_hi>50 && candle_hi>3*aux_abs && candle_hi>3*candle_lo) {
                 if (RSI[idx]<60 && MAFast[idx]-MASlow[idx]<50 && close[idx-1]<VWAP[idx-1] && VWAP[idx]-MathMax(open[idx],close[idx])>15 && high[idx]-VWAP[idx]>50 && VWAP[idx]-close[idx]>50)
                    aux_dir-=5;
              }
           }
           if (date_candle.hour<12 && filter.VWAPCROSS && ATR[idx]>260 && tick_volume[idx]>30000) {
              if (filter.MIBAND_DOWN && mycounters.c_down==1 && mycounters.sarsell>1 && aux_dir>-5 && body_down>pts_size && candle_lo<30 && body_down>5*candle_lo)
                 if (close[idx]<(open[idx-1]+close[idx-1])/2 && close[idx]<MAFast[idx] && aux_abslast>100 && open[idx-2]-close[idx-2]>50 && close[idx-1]-VWAP[idx-1]>30 && VWAP[idx]-close[idx]>50 && MAFast[idx]<miBand[idx])
                    aux_dir-=14;
           }
           if (filter.VWAPCROSS && date_candle.hour<12 && aux_abs>aux_abslast && stdDev[idx]>70 && stdDev[idx]<pts_maxsize) {
              if (filter.VWAP_UP && filter.MIBAND_UP && filter.MED_UP && Force[idx]>0 && body_up>100 && candle_hi<30 && pricestats.max_dayprice-close[idx]>2*pts_size2) {
                 if (close[idx]-VWAP[idx]>50 && MAFast[idx]>miBand[idx] && MAFast[idx]-miBand[idx]>MAFast[idx-1]-miBand[idx-1] && low[idx]<MAFast[idx] && close[idx]>MAFast[idx]) aux_dir+=12;
              }
              else if (filter.VWAP_DOWN && filter.MIBAND_DOWN && filter.MED_DOWN && Force[idx]<0 && body_down>100 && candle_lo<30 && close[idx]-pricestats.min_dayprice>2*pts_size2) {
                 if (VWAP[idx]-close[idx]>50 && MAFast[idx]<miBand[idx] && miBand[idx]-MAFast[idx]>miBand[idx-1]-MAFast[idx-1] && high[idx]>MAFast[idx] && close[idx]<MAFast[idx]) aux_dir-=12;
              }
           }
        }
        if (idx-pricestats.vwap_idx<24 && aux_dir<250) {
           if (BACK_DIR1 && filter.MED_UP && mycounters.sarbuy<11 && MA200[idx]>MA200[idx-1] && body_up>30 && candle_hi<70 && close[idx]-low[idx]>100) {
              if (close[idx]>high[idx-1] && open[idx-2]>MA200[idx-2] && low[idx-2]<MA200[idx-2] && close[idx-2]-MA200[idx-2]>30 && low[idx]-MA200[idx]<10 && close[idx]-MA200[idx]>50)
                 aux_dir+=8;
           }
           else if (BACK_DIR2 && filter.MED_DOWN && mycounters.sarsell<11 && MA200[idx]<MA200[idx-1] && body_down>30 && candle_lo<70 && high[idx]-close[idx]>100) {
              if (close[idx]<low[idx-1] && open[idx-2]<MA200[idx-2] && high[idx-2]>MA200[idx-2] && MA200[idx-2]-close[idx-2]>30 && MA200[idx]-high[idx]<10 && MA200[idx]-close[idx]>50)
                 aux_dir-=8;
           }
           if (BACK_DIR1 && filter.VWAP_CROSS && filter.VWAP_UP && candle_hi<70 && ATR[idx]<2*pts_size2 && open[idx-2]-VWAP[idx-2]>30 && VWAP[idx-2]-close[idx-2]>30 && high[idx-1]<VWAP[idx-1] && VWAP[idx]-open[idx]>30 && close[idx]-VWAP[idx]>60) aux_dir+=14;
           else if (BACK_DIR2 && filter.VWAP_CROSS && candle_lo<70 && RSI[idx]>30 && ATR[idx]<400 && VWAP[idx-2]-open[idx-2]>30 && close[idx-2]-VWAP[idx-2]>30 && low[idx-1]>VWAP[idx-1] && open[idx]-VWAP[idx]>30 && VWAP[idx]-close[idx]>50) aux_dir-=14;
        }
        if (stdDev[idx]>100 && vwap_distance<400 && aux_abs>2*candle_hi && aux_abs>2*candle_lo) {
           if (BACK_DIR1 && (filter.tdf_color!=2 || mycounters.c_up==2) && aux_dir<10 && body_up>60 && candle_hi<60 && close[idx]-open[idx-2]>15) {
              if (MAFast[idx]>miBand[idx] && (close[idx]>MAFast[idx] || (open[idx-1]-low[idx-1]>2*aux_abslast && open[idx-1]-low[idx-1]>3*(high[idx-1]-close[idx-1]))) && close[idx]>HILO2[idx] && low[idx]-low[idx-1]>35 && low[idx-2]-low[idx-1]>35 && MA200[idx]>=MA200[idx-1] && close[idx-2]>MA200[idx-2] && MA200[idx-1]-low[idx-1]>50 && close[idx-1]-MA200[idx-1]>50) aux_dir+=12;
           }
           else if (BACK_DIR2 && filter.tdf_color!=1 && mycounters.c_down==2 && aux_dir>-10 && body_down>60 && candle_lo<60 && open[idx-2]-close[idx]>15) {
              if (MAFast[idx]<miBand[idx] && close[idx]<MAFast[idx] && close[idx]<HILO2[idx] && high[idx-1]-high[idx]>35 && high[idx-1]-high[idx-2]>35 && MA200[idx]<=MA200[idx-1] && close[idx-2]<MA200[idx-2] && high[idx-1]-MA200[idx-1]>50 && MA200[idx-1]-close[idx-1]>50) aux_dir-=12;
           }
        }
        if (VOLUME_UP && filter.NO_VWAPCROSS && date_candle.hour>9 && date_candle.hour<14) {
           if (candle_hi>70 && low[idx]>VWAP[idx] && high[idx]-pricestats.vwap_lastcross>pts_maxsize2 && (pricestats.max_dayprice-high[idx]<50 || pricestats.max_dayprice-high[idx-1]<100)) {
              if (candle_lo<30 && candle_hi>3*candle_lo) {
                 if ((type==0 || body_down>50) && candle_hi>50) aux_dir--;
                 if (body_down>100) aux_dir-=12;
                 else if (date_candle.hour==10 && type==0 && apftrade.trade_dir==1 && RSI[idx-1]>71 && aux_abs<aux_abslast && candle_hi>100 && candle_hi>3*aux_abs && candle_hi>5*candle_lo && upBand[idx]-high[idx]<50 && pricestats.max_dayprice-high[idx]<10) aux_dir-=2;
              }
           }
        }
        if (pricestats.bars_day>5 && date_candle.hour>9 && stdDev[idx]>80 && stdDev[idx]<pts_maxsize && vwap_distance<pts_maxsize) {
           if (filter.tdf_color!=2 && filter.SAR_INVERTBUY && filter.MED_UP && aux_dir>-10 && RSI[idx]>45 && close[idx]-HILO2[idx]>30 && open[idx]<VWAP[idx] && close[idx]>MAFast[idx] && MAFast[idx]>miBand[idx]) {
              if (filter.VWAP_CROSS && close[idx]<VWAP[idx]);
              else if (((type==0 && filter.tdf_color==0 && ((date_candle.hour>14 && body_up>50 && close[idx]-VWAP[idx]>20) || aux_abslast>50) && low[idx-1]>low[idx-2]) || (type==1 && mycounters.c_up>1 && candle_hi<15 && close[idx]>high[idx-1] && pricestats.max_dayprice-close[idx]>pts_maxsize2 && high[idx]-low[idx-1]<2*pts_size2)) && close[idx]-low[idx]>70 && body_up>2*candle_hi && candle_hi<50)
                 aux_dir+=8;
           }
           if (filter.tdf_color!=1 && filter.SAR_INVERTSELL && filter.MED_DOWN && aux_dir<10 && RSI[idx]<55 && HILO2[idx]-close[idx]>30 && open[idx]>VWAP[idx] && close[idx]<MAFast[idx] && MAFast[idx]<miBand[idx]) {
              if (filter.VWAPCROSS && close[idx]>VWAP[idx]);
              else if (body_down>100 && ((type==0 && filter.tdf_color==0 && ((date_candle.hour>14 && VWAP[idx]-close[idx]>20) || aux_abslast>50) && high[idx-1]<high[idx-2]) || (type==1 && mycounters.c_down>1 && candle_lo<15 && close[idx]<low[idx-1] && close[idx]-pricestats.min_dayprice>pts_maxsize2 && high[idx-1]-low[idx]<2*pts_size2)) && high[idx]-close[idx]>70 && body_down>2*candle_lo && candle_lo<50)
                 aux_dir-=8;
           }
        }
        // VWAP V Cross
        if (date_candle.hour>9 && date_candle.hour<16 && date_candle.day_of_week<5 && filter.VWAP_CROSS && tick_volume[idx]>35000 && aux_abs>pts_size && aux_abs<250 && aux_abslast<150 && aux_abs>aux_abslast && stdDev[idx]>50 && stdDev[idx]<2*pts_size2) {
           if (filter.tdf_color!=2 && body_up>pts_size && candle_hi<150 && candle_lo<90 && body_up>candle_hi && low[idx]-low[idx-1]>30 && low[idx-2]>low[idx-1] && close[idx]-high[idx-1]>30 && close[idx]>(open[idx-2]+close[idx-2])/2) {
              if (pricestats.max_dayprice-high[idx]>2*pts_size2 && low[idx-1]-loBand[idx-1]<100 && close[idx]-VWAP[idx]>30 && VWAP[idx]-open[idx]>15 && close[idx-1]<VWAP[idx-1] && ((open[idx-2]-VWAP[idx-2]>15 && VWAP[idx-2]-close[idx-2]>15) || (open[idx-3]-VWAP[idx-3]>15 && VWAP[idx-3]-close[idx-3]>15))) {
                 aux_dir+=12;
                 set_force=1;
              }
           }
           if (filter.tdf_color!=1 && body_down>pts_size && candle_lo<150 && candle_hi<90 && body_down>candle_lo && high[idx-1]-high[idx]>30 && high[idx-1]>high[idx-2] && low[idx-1]-close[idx]>30 && close[idx]<(open[idx-2]+close[idx-2])/2) {
              if (low[idx]-pricestats.min_dayprice>2*pts_size2 && upBand[idx-1]-high[idx-1]<100 && VWAP[idx]-close[idx]>30 && open[idx]-VWAP[idx]>15 && close[idx-1]>VWAP[idx-1] && ((VWAP[idx-2]-open[idx-2]>15 && close[idx-2]-VWAP[idx-2]>15) || (VWAP[idx-3]-open[idx-3]>15 && close[idx-3]-VWAP[idx-3]>15))) {
                 aux_dir-=12;
                 set_force=1;
              }
           }
        }
     }
     if (type==1 && pricestats.bars_day>4 && date_candle.hour<15 && filter.VWAP_CROSS && stdDev[idx]>70 && aux_abs>2*aux_abslast && aux_abs<250) {
        // Mixed price action 1 (plus version)
        if (filter.HILO_BUY && filter.tdf_color!=2 && !filter.SAR_INVERTSELL && mycounters.c_up==1 && mycounters.sarbuy<11 && RSI[idx]>40 && RSI[idx]<69 && body_up>70 && body_up>3*candle_hi && candle_hi<50 && Force[idx]>0 && open[idx-1]-close[idx-1]>20 && close[idx]<upBand[idx]) {
           if (close[idx]>high[idx-1] && MAFast[idx]>miBand[idx] && close[idx]>VWAP[idx] && open[idx]<VWAP[idx] && VWAP[idx-1]-low[idx-1]>70 && MathMax(open[idx-1],close[idx-1])<VWAP[idx-1] && (price_stats.max_dayprice-close[idx]>80 || (filter.VWAP_CROSS && price_stats.max_dayprice-low[idx]>120))) {
              aux_dir+=4;
              set_force=1;
           }
        }
        else if (filter.HILO_SELL && filter.tdf_color!=1 && !filter.SAR_INVERTBUY && mycounters.c_down==1 && mycounters.sarsell<11 && RSI[idx]<60 && RSI[idx]>31 && body_down>70 && body_down>3*candle_lo && candle_lo<50 && Force[idx]<0 && close[idx-1]-open[idx-1]>20 && close[idx]>loBand[idx]) {
           if (close[idx]<low[idx-1] && MAFast[idx]<miBand[idx] && close[idx]<VWAP[idx] && open[idx]>VWAP[idx] && high[idx-1]-VWAP[idx-1]>70 && MathMin(open[idx-1],close[idx-1])>VWAP[idx-1] && (close[idx]-price_stats.min_dayprice>80 || (filter.VWAP_CROSS && high[idx]-price_stats.min_dayprice>120))) {
              aux_dir-=4;
              set_force=1;
           }
        }
     }
     if (filter.NO_VWAPCROSS && date_candle.hour>9 && date_candle.hour<16 && stdDev[idx]>pts_size && aux_abs>2*aux_abslast && candle_hi<100 && candle_lo<100) {
        if ((filter.SAR_INVERTBUY || mycounters.sarsell>4) && Force[idx]>-3000000 && body_up>35 && candle_hi<50 && body_up>3*candle_hi) {
           if (open[idx-2]-close[idx-2]>2*aux_abslast && open[idx-4]-open[idx-3]>33 && open[idx-3]-open[idx-2]>33 && open[idx-2]-open[idx-1]>33)
              if (price_stats.vwap_lastcross-low[idx-1]>pts_maxsize && VWAP[idx]-MA200[idx]>50 && MathAbs(close[idx-2]-close[idx-1])<25 && close[idx]-open[idx-1]>55 && close[idx]>open[idx-2] && pricestats.max_dayprice-close[idx]>pts_maxsize2)
                 aux_dir+=12;
        }
     }
     if (filter.NO_VWAPCROSS && date_candle.hour>11 && date_candle.hour<16 && idx>5 && aux_abs>35 && aux_abslast>35 && candle_hi<pts_size && candle_lo<pts_size && date_candle.day_of_week<5) {
        // HiLo 17 (plus version)
        if (filter.HILO_BUY && filter.MED_UP && filter.tdf_color!=2 && mycounters.sarbuy>0 && mycounters.sarbuy<6 && RSI[idx]>50 && buf_RSI[idx]<65 && close[idx]>HILO2[idx] && (close[idx-1]<HILO[idx-1] || close[idx-2]<HILO[idx-2]))
           if (mycounters.c_up>1 && mycounters.c_up<5 && body_up>35 && body_up>candle_hi && candle_hi<60 && close[idx]>high[idx-1] && close[idx]>high[idx-2] && high[idx-1]-close[idx-1]<60 && low[idx]>open[idx-1] && low[idx]>low[idx-1] && low[idx-1]>low[idx-2] && high[idx]>high[idx-1] && price_stats.max_dayprice-close[idx]>800)
              if (!filter.MIBAND_DOWN && VWAP[idx]-high[idx]>pts_size && open[idx]>buf_MAFast[idx] && close[idx-1]>MAFast[idx-1] && close[idx]-MAFast[idx]<250 && open[idx-2]<MAFast[idx-2] && MAFast[idx]-miBand[idx]>11 && MAFast[idx-1]>miBand[idx-1] && (miBand[idx-3]>MAFast[idx-3] || miBand[idx-4]>MAFast[idx-4]))
                 aux_dir+=8;

        if (date_candle.hour>9 && vwap_distance<pts_maxsize && aux_abslast>20) {
           if (mycounters.c_up==1 && filter.tdf_color!=2 && body_up>pts_size && body_up>3*candle_hi && body_up>2*aux_abslast && close[idx]>high[idx-1] && close[idx]>high[idx-2])
              if (close[idx]<VWAP[idx] && open[idx-2]-close[idx-2]>20)
                 aux_dir+=8;
        }
     }
     if (filter.VWAP_LASTCROSS && VOLUME_UP && pricestats.bars_day>4 && date_candle.hour<16) {
        if (!filter.VWAP_UP && mycounters.c_down==2 && Force[idx]<1000000 && RSI[idx-2]-RSI[idx]>10 && close[idx]-MAFast[idx]<150 && VWAP[idx-2]-VWAP[idx]>20 && VWAP[idx]-close[idx]>120 && body_down>80 && aux_abslast>60 && aux_abslast>3*(close[idx-1]-low[idx-1]) && body_down>5*candle_lo && candle_lo<50 && close[idx]<low[idx-1] && open[idx-1]-VWAP[idx-1]>10 && VWAP[idx-1]-close[idx-1]>10 && low[idx-2]<VWAP[idx-2]) {
           aux_dir-=3;
           if (type==1 && pricestats.bars_day>5 && date_candle.hour<14 && RSI[idx]>26 && body_down>100 && candle_lo<35 && high[idx-1]-low[idx]<400 && date_candle.day_of_week<5) aux_dir-=5;
        }
     }

     if (price_stats.bars_day>6 && aux_abs>pts_size && date_candle.hour<17) {
        if (filter.VWAP_CROSS && VOLUME_UP && date_candle.hour<11) {
           if (body_up>pts_size && candle_hi<25 && close[idx]>high[idx-1] && close[idx]>high[idx-2] && close[idx]-VWAP[idx]>60 && VWAP[idx]-open[idx]>10 && high[idx-1]<VWAP[idx-1] && high[idx-2]<VWAP[idx-2] && open[idx-3]-VWAP[idx-3]>10) aux_dir+=10;
           else if (body_down>pts_size && candle_lo<25 && close[idx]<low[idx-1] && close[idx]<low[idx-2] && VWAP[idx]-close[idx]>60 && open[idx]-VWAP[idx]>10 && low[idx-1]>VWAP[idx-1] && low[idx-2]>VWAP[idx-2] && VWAP[idx-3]-open[idx-3]>10) aux_dir-=10;
        }
        if (!date_candle.hour>13 && stdDev[idx-1]>250 && aux_abs>pts_size2 && MathAbs(open[idx-2]-close[idx-2])>pts_size && aux_abs-aux_abslast>55 && price_stats.max_dayprice-price_stats.min_dayprice>1100) {
           // HIGH probability reversal-volume2 plus version
           if (MA200[idx]-high[idx]<33 && MA200[idx]-close[idx]>33);
           else if (MAFast[idx]-high[idx]<33 && MAFast[idx]-close[idx]>33);
           else if (VOLUME_UP && mycounters.c_up==1 && body_up>pts_size2 && Force[idx]>0 && RSI[idx]>40 && RSI[idx]<65 && body_up>candle_hi && candle_hi<150 && close[idx]>high[idx-1] && close[idx]>high[idx-2])
              if (open[idx]>low[idx-1] && low[idx]-loBand[idx]<pts_size && upBand[idx]-close[idx]>pts_size2 && (price_stats.vwap_lastcross-low[idx]>800 || price_stats.vwap_lastcross-low[idx-1]>800)) {
                 aux_dir+=7;
                 if (aux_dir<8) set_force=1;
              }
        }
        if (date_candle.hour>13 && VOLUME_UP && filter.NO_VWAPCROSS && aux_abs<pts_maxsize && stdDev[idx]<150 && stdDev[idx]>55 && vwap_distance<pts_maxsize2) {
           // HIGH probability reversal-volume3 plus version
           if (date_candle.hour>11 && filter.VWAP_DOWN && candle_hi>11 && close[idx]-MA200[idx]<55 && upBand[idx]-high[idx]<150 && upBand[idx-1]-high[idx-1]>150);
           else if (filter.HILO_BUY && mycounters.sarbuy>1 && RSI[idx]<70 && body_up>pts_size && candle_hi<22 && open[idx]<VWAP[idx] && price_stats.max_dayprice-close[idx]>pts_maxsize2)
              if (HILO[idx-1]>close[idx-1] && close[idx]>high[idx-1] && close[idx]>high[idx-2] && MAFast[idx]>MAFast[idx-1] && MAFast[idx]-open[idx]>11 && close[idx]-MAFast[idx]>22 && miBand[idx]-open[idx]>11 && close[idx]-miBand[idx]>22) {
                 aux_dir+=7;
                 if (aux_dir<8) set_force=1;
              }
        }
     }
     if (filter.VWAP_CROSS && price_stats.bars_day>6 && date_candle.hour<15 && tick_volume[idx]>45000) {
        if (filter.VWAP_LASTCROSS && high[idx]-low[idx]<250) {
           //Price Action MA-CROSS 3 plus version
           if ((filter.VWAP_UP || filter.HILO_BUY) && mycounters.sarbuy>2 && mycounters.sarbuy<7 && mycounters.c_up==2 && RSI[idx]<65 && Force[idx]>0 && Force[idx]<1500000 && body_up>22 && low[idx-1]-loBand[idx-1]<pts_size && upBand[idx]-close[idx]>150) {
              if (close[idx]>high[idx-1] && candle_hi<50 && high[idx-1]-close[idx-1]<15 && open[idx]<MAFast[idx] && close[idx]>MAFast[idx] && high[idx]>miBand[idx] && low[idx]-low[idx-1]>33 && low[idx-1]>low[idx-2] && high[idx-4]-low[idx-2]>330) {
                 aux_dir+=5;
                 set_force=1;
              }
           }
           else if ((filter.VWAP_DOWN || filter.HILO_SELL) && mycounters.sarsell>2 && mycounters.sarsell<7 && mycounters.c_down==2 && RSI[idx]>35 && Force[idx]<0 && Force[idx]>-1500000 && body_down>22 && upBand[idx-1]-high[idx-1]<pts_size && close[idx]-loBand[idx]>150) {
              if (close[idx]<low[idx-1] && candle_lo<50 && high[idx-1]-close[idx-1]<15 && open[idx]>MAFast[idx] && close[idx]<MAFast[idx] && low[idx]<miBand[idx] && high[idx-1]-high[idx]>33 && high[idx-1]<high[idx-2] && high[idx-2]-low[idx-4]>330) {
                 aux_dir-=5;
                 set_force=1;
              }
           }
        }
     }
     if (date_candle.hour>9 && date_candle.hour<12 && filter.NO_VWAPCROSS && stdDev[idx]>pts_size && stdDev[idx]<2*pts_size2 && aux_abs<250) {
        // *Based* Price Action 31 plus version
        if (mycounters.c_up==2 && RSI[idx]-RSI[idx-1]>10 && Force[idx]>0 && Force[idx]<1000000 && RSI[idx]>45 && RSI[idx]<60 && low[idx-1]-loBand[idx-1]<15 && upBand[idx]-close[idx]>150) {
           if (body_up>pts_size && body_up>2*aux_abslast && aux_abslast<(open[idx-2]-close[idx-2])/2 && candle_lo<30 && candle_hi<pts_size && body_up>candle_hi && close[idx]>high[idx-1] && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>30 && close[idx]>MAFast[idx] && close[idx-1]<MAFast[idx-1])
              aux_dir+=12;
        }    
        else if (mycounters.c_down==2 && RSI[idx-1]-RSI[idx]>10 && Force[idx]<0 && Force[idx]>-1000000 && RSI[idx]<55 && RSI[idx]>40 && upBand[idx-1]-high[idx-1]<15 && close[idx]-loBand[idx]>150) {
           if (body_down>pts_size && body_down>2*aux_abslast && aux_abslast<(close[idx-2]-open[idx-2])/2 && candle_hi<30 && candle_lo<pts_size && body_down>candle_lo && close[idx]<low[idx-1] && high[idx-1]-high[idx]>30 && high[idx-1]-high[idx-2]>30 && close[idx]<MAFast[idx] && close[idx-1]>MAFast[idx-1])
              aux_dir-=12;
        }
     }
     if (price_stats.bars_day>7 && stdDev[idx]>50) {
        // VWA_P PRICE-MICROSS5 plus version
        if (filter.VWAP_CROSS && aux_abs<55 && aux_abslast<150) {
           if ((filter.VWAP_UP || filter.MIBAND_UP) && !filter.MED_DOWN && !filter.MIBAND_DOWN && !filter.VWAP_DOWN && buf_RSI[idx]>45 &&MAFast[idx]>miBand[idx] && open[idx]>VWAP[idx] && close[idx]>VWAP[idx] && close[idx-1]>VWAP[idx-1] && VWAP[idx]-low[idx]>30) {
              if (((upBand[idx]-loBand[idx]<upBand[idx-1]-loBand[idx-1]) || (high[idx]>MA200[idx] && low[idx]<MA200[idx])) &&RSI[idx]>61 && close[idx]<high[idx-1] && upBand[idx]-high[idx]<pts_size);
              else if (date_candle.hour>10 && filter.VWAPCROSS && body_down>0 && MathMax(open[idx],close[idx])<=high[idx-1]);
              else if (date_candle.hour>10 && filter.VWAPCROSS && !VOLUME_UP && stdDev[idx]<stdDev[idx-1] && (filter.HILO_SELL || mycounters.sarsell>1) && mycounters.sarsell>0 && date_candle.hour<15 && buf_RSI[idx]>60 && body_up<55 && aux_abs<aux_abslast/2 && close[idx-2]<VWAP[idx-2] && (candle_hi>2*aux_abs || candle_lo>2*aux_abs));
              else if (Force[idx]>0 && close[idx]>open[idx-1] && close[idx]>low[idx-2] && close[idx]>MAFast[idx] && aux_abs>candle_hi && candle_lo>2*aux_abs && candle_hi<22)
                 aux_dir+=8;
           }
        }
        if (filter.NO_VWAPCROSS && VOLUME_UP && date_candle.hour>9 && date_candle.hour<12 && aux_abs<250 && aux_abslast>10 && stdDev[idx]>pts_size && idx-price_stats.vwap_idx>6 && vwap_distance<pts_maxsize2) {
           // Price Action RSI-MIBAND3 plus version
           if (RSI[idx]>RSI[idx-1] && (filter.MED_UP || filter.HILO_BUY) && mycounters.c_up>1 && mycounters.c_up<4 && Force[idx]>0 && RSI[idx]>45 && RSI[idx]<65 && RSI[idx-mycounters.c_up]<28 && price_stats.max_dayprice-low[idx-count.c_up]>800) {
              if (body_up>pts_size && aux_abslast>pts_size && candle_hi<30 && close[idx]>high[idx-1] && high[idx-1]-close[idx-1]<55 && low[idx]>low[idx-1] && upBand[idx]-close[idx]>pts_size && high[idx]<upBand[idx])
                 if (VWAP[idx]-high[idx]>pts_size && stdDev[idx-count.c_up]>250 && MAFast[idx]>MAFast[idx-1] && ((MAFast[idx]-low[idx]>11 && close[idx]-MAFast[idx]>22) || (miBand[idx]-low[idx]>11 && close[idx]-miBand[idx]>22)))
                    aux_dir+=10;
           }
           if (RSI[idx]<RSI[idx-1] && (filter.MED_DOWN || filter.HILO_SELL) && mycounters.c_down>1 && mycounters.c_down<4 && Force[idx]<0 && RSI[idx]<55 && RSI[idx]>35 && RSI[idx-mycounters.c_down]>72 && high[idx-count.c_down]-price_stats.min_dayprice>800) {
              if (body_down>pts_size && aux_abslast>pts_size && candle_lo<30 && close[idx]<low[idx-1] && close[idx-1]-low[idx-1]<55 && high[idx]<high[idx-1] && close[idx]-loBand[idx]>pts_size && low[idx]>loBand[idx])
                 if (low[idx]-VWAP[idx]>pts_size && stdDev[idx-count.c_down]>250 && MAFast[idx]<MAFast[idx-1] && ((high[idx]-MAFast[idx]>11 && MAFast[idx]-close[idx]>22) || (high[idx]-miBand[idx]>11 && miBand[idx]-close[idx]>22)))
                    aux_dir-=10;
           }
        }
     }
     // MA-Fast 4 plus version
     if (date_candle.hour>11 && aux_abs>pts_size && aux_abslast>50 && MathAbs(MAFast[idx]-MA25[idx])<pts_size && VOLUME_UP) {
        if (!filter.MED_DOWN && filter.tdf_color!=2 && aux_dir>=0 && aux_dir<5 && VWAP[idx-1]-VWAP[idx]<5 && Force[idx]>0 && Force[idx]<1500000 && body_up>pts_size && body_up>aux_abslast && candle_hi<body_up && low[idx]-loBand[idx]<60 && close[idx]>loBand[idx]) {
           if (filter.VWAP_DOWN && body_up>pts_size2 && open[idx]<VWAP[idx] && VWAP[idx]-close[idx]<30);
           else if (filter.NO_VWAPCROSS && filter.VWAP_DOWN && (filter.HILO_SELL || filter.MIBAND_DOWN) && date_candle.hour>15 && mycounters.c_up<2 && filter.tdf_color!=1 && stdDev[idx]<stdDev[idx-1] && stdDev[idx]<pts_size && idx-price_stats.vwap_idx>12 && candle_hi>15 && VWAP[idx]-high[idx]>pts_size && upBand[idx]-high[idx]<150 && open[idx-2]-close[idx]>35);
           else if (low[idx]>low[idx-1] && RSI[idx]>48 && RSI[idx]<65 && RSI[idx]-RSI[idx-1]>10 && high[idx-1]<VWAP[idx-1] && close[idx]>high[idx-1] && close[idx]>MAFast[idx] && low[idx]<MAFast[idx] && open[idx]<miBand[idx] && close[idx]>miBand[idx])
              aux_dir+=12;
        }
     }
     if (pricestats.bars_day>7 && date_candle.hour<16 && stdDev[idx]>60 && stdDev[idx]<pts_maxsize2 && ATR[idx]<2*pts_size2 && aux_abs<400) {
        if (date_candle.hour>10 && stdDev[idx]>80 && stdDev[idx]<400) {
           if (mycounters.c_up<3 && Force[idx]>0 && body_up>130 && candle_hi<30 && body_up>2*candle_lo && candle_lo<80 && high[idx]-low[idx-1]<pts_maxsize2 && close[idx]>high[idx-1] && close[idx]>high[idx-2])
              if (open[idx]<VWAP[idx] && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>60 && open[idx]<miBand[idx] && close[idx]>miBand[idx] && open[idx]<HILO2[idx] && close[idx]-HILO2[idx]>60 && MAFast[idx]>HILO2[idx] && low[idx-1]-loBand[idx-1]<50 && high[idx]<upBand[idx])
                 aux_dir+=10;
        }
        if (filter.VWAPCROSS && date_candle.hour<14 && date_candle.day_of_week<5 && aux_abs>2*aux_abslast && candle_hi<90 && candle_lo<90) {
           if (filter.tdf_color!=2 && mycounters.c_up<3 && aux_dir<3 && RSI[idx]<70 && Force[idx]<3000000 && body_up>120 && high[idx]-low[idx-2]<pts_maxsize2 && pricestats.max_dayprice-high[idx]>100)
              if (MathMin(open[idx-2],close[idx-2])<VWAP[idx-2] && VWAP[idx]-MA200[idx]>pts_size && high[idx-2]>VWAP[idx-2] && low[idx-2]<VWAP[idx-2] && MAFast[idx]-MAFast[idx-1]>15 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>30 && close[idx]-VWAP[idx]>50 && close[idx]>high[idx-1] && close[idx]>high[idx-2] && low[idx]-low[idx-1]>10) aux_dir+=11;
        }
     }
     if (date_candle.hour>9 && date_candle.hour<15 && aux_abs<pts_maxsize2) {
        if (date_candle.hour<14 && filter.NO_VWAPCROSS && tick_volume[idx]>15000 && idx-pricestats.vwap_idx<8 && aux_abs<pts_maxsize && aux_abs>2*aux_abslast && candle_hi<100 && candle_lo<100) {
           if (RSI[idx]>42 && body_up>pts_size && body_up>3*candle_hi && body_up>2*candle_lo &&  low[idx-1]<loBand[idx-1] && low[idx]>loBand[idx])
              if (close[idx]>high[idx-1] && MathMin(open[idx-1],close[idx-1])-low[idx-1]>100 && low[idx]-low[idx-1]>50 && low[idx-2]-low[idx-1]>50 && pricestats.max_dayprice-close[idx]>pts_maxsize)
                 aux_dir+=11;
        }
        if (mycounters.c_down>1 && mycounters.c_down<4 && filter.tdf_color!=1 && aux_dir>-8 && RSI[idx]<55 && RSI[idx]>32 && VWAP[idx]-close[idx]<200)
           if (body_down>90 && aux_abslast>60 && body_down>aux_abslast/2 && close[idx]<MathMin(open[idx-3],close[idx-3]) && low[idx-2]>VWAP[idx-2] && close[idx]-pricestats.min_dayprice>pts_maxsize && upBand[idx-2]-high[idx-2]<50)
              if (MAFast[idx]-close[idx]>15 && open[idx-1]>MAFast[idx-1] && high[idx-2]-high[idx-1]>35 && high[idx-2]-high[idx-3]>35 && MathAbs(open[idx-2]-close[idx-2])<MathAbs(open[idx-1]-close[idx-1])/3 && MathAbs(open[idx-2]-close[idx-2])<MathAbs(open[idx-3]-close[idx-3])/3)
                 aux_dir-=15;

        if (stdDev[idx]>70 && stdDev[idx]<400 && ATR[idx]<2*pts_size2 && tick_volume[idx]>5000 && aux_abs>2*aux_abslast && candle_hi<50 && candle_lo<50 && vwap_distance<pts_maxsize && idx-pricestats.vwap_idx<16) {
           if (mycounters.c_up<3 && RSI[idx]>45 && RSI[idx]<68 && body_up>90 && candle_hi<35 && low[idx]-low[idx-1]>15 && low[idx-2]-low[idx-1]>15 && close[idx]<upBand[idx])
              if (aux_dir>-1 && close[idx]-high[idx-1]>35 && close[idx]>(open[idx-2]+close[idx-2])/2 && MA25[idx]-MA50[idx]>30 && MA50[idx]-MA100[idx]>30 && open[idx]<VWAP[idx] && open[idx-2]>MAFast[idx-2] && high[idx-1]<MAFast[idx-1] && close[idx]-MAFast[idx]>15 && MA200[idx]>MA200[idx-1] && low[idx]>MA200[idx]) {
                 if (MA25[idx]-MAFast[idx]>pts_size2 || (stdDev[idx]<pts_size && filter.tdf_color==1 && mycounters.c_up>1));
                 else aux_dir+=13;
              }
        }
     }

     if (date_candle.hour>9 && date_candle.hour<17 && filter.VWAPCROSS && aux_dir==0 && aux_abs<250 && aux_abslast<250 && candle_hi<90 && candle_lo<90) {
        if (date_candle.day_of_week<5 && stdDev[idx]<2*pts_size2 && ATR[idx]>pts_size2 && ATR[idx]<2*pts_size2 && stdDev[idx]>pts_size && vwap_distance<pts_maxsize) {
           if (mycounters.c_up==2 && filter.VWAPCROSS && filter.tdf_color!=2 && Force[idx]>0 && Force[idx]<3000000 && RSI[idx]<68 && RSI[idx]>46 && RSI[idx]-RSI[idx-2]>10 && close[idx]-VWAP[idx]>50 && upBand[idx]-high[idx]>90)
              if (open[idx-2]-close[idx-2]>100 && close[idx]-low[idx-2]>pts_size && close[idx]>high[idx-1] && low[idx]>low[idx-1] && body_up>60 && body_up>3*candle_hi && body_up>2*candle_lo && high[idx-2]>VWAP[idx-2] && high[idx]-low[idx-1]<450 && high[idx]-pricestats.min_dayprice<1000)
                 if (close[idx]-MAFast[idx]>30 && open[idx]<MAFast[idx] && low[idx]>MA200[idx] && MA25[idx]-MA50[idx]>30 && MA50[idx]-MA100[idx]>30 && MA200[idx]>MA200[idx-1]) aux_dir+=11;
        }
        if (date_candle.hour<16 && tick_volume[idx]>15000) {
           if (filter.tdf_color!=2 && !filter.VWAP_DOWN && mycounters.c_up<3 && RSI[idx]>45 && RSI[idx]<72 && body_up>70 && candle_hi<10) {
              if (Force[idx]>0 && Force[idx]<3000000 && close[idx]<upBand[idx] && close[idx-2]-open[idx-2]>15 && low[idx-2]<VWAP[idx-2] && open[idx-2]>VWAP[idx-2] && aux_abslast>50 && body_up-aux_abslast>30)
                 aux_dir+=5;
           }
           else if (filter.tdf_color!=1 && !filter.VWAP_UP && mycounters.c_down<3 && RSI[idx]<55 && RSI[idx]>28 && body_down>70 && candle_lo<10) {
              if (Force[idx]<0 && Force[idx]>3000000 && close[idx]>loBand[idx] && open[idx-2]-close[idx-2]>15 && high[idx-2]>VWAP[idx-2] && open[idx-2]<VWAP[idx-2] && aux_abslast>50 && body_down-aux_abslast>30)
                 aux_dir-=5;
           }
        }
     }

     // PRIO PREVENT-FILTER25 plus version
     if (date_candle.hour>10 && !filter.VWAP_CROSS && idx-pricestats.vwap_idx<16 && aux_abs>55 && aux_abs<200 && candle_hi<150 && candle_lo<150 && stdDev[idx]>120 && vwap_distance>pts_size) {
        if (RSI[idx]<50 && mycounters.c_up<3 && body_up>55 && body_up>aux_abslast/2 && HILO[idx-1]-low[idx-1]>2*pts_size2 && close[idx]>MathMax(open[idx-1],close[idx-1])) {
           if (filter.HILO_SELL && filter.MIBAND_DOWN && mycounters.sarsell>1 && high[idx]>MA200[idx] && low[idx]<MA200[idx] && candle_hi>11 && open[idx-2]>VWAP[idx-2] && high[idx]<VWAP[idx] && open[idx-2]-close[idx]>pts_size && high[idx]<MAFast[idx] && MAFast[idx]<miBand[idx]) aux_dir=0;
           else if (candle_hi<pts_size && Force[idx-1]<-3000000 && Force[idx]-Force[idx-1]>2000000 && upBand[idx-1]-loBand[idx-1]>pts_maxsize2 && loBand[idx-1]-low[idx-1]>55 && low[idx]>loBand[idx] && MA25[idx-1]-MAFast[idx-1]<55)
              aux_dir+=12;
        }
        else if (RSI[idx]>50 && mycounters.c_down<3 && body_down>55 && body_down>aux_abslast/2 && high[idx-1]-HILO[idx-1]>2*pts_size2 && close[idx]<MathMin(open[idx-1],close[idx-1])) {
           if (filter.HILO_BUY && filter.MIBAND_UP && mycounters.sarbuy>1 && high[idx]>MA200[idx] && low[idx]<MA200[idx] && candle_lo>11 && open[idx-2]<VWAP[idx-2] && low[idx]>VWAP[idx] && close[idx]-open[idx-2]>pts_size && low[idx]>MAFast[idx] && MAFast[idx]>miBand[idx]) aux_dir=0;
           else if (candle_lo<150 && Force[idx-1]>3000000 && Force[idx-1]-Force[idx]>2000000 && upBand[idx-1]-loBand[idx-1]>pts_maxsize2 && high[idx-1]-upBand[idx-1]>55 && high[idx]<upBand[idx] && MAFast[idx-1]-MA25[idx-1]<55)
              aux_dir-=12;
        }
     }
     if (type==1 && pricestats.bars_day>5 && date_candle.hour<17 && date_candle.day_of_week<5 && candle_hi<pts_size && candle_lo<pts_size && stdDev[idx]>70) {
        if (date_candle.hour<16 && candle_hi<35 && candle_lo<35 && stdDev[idx]>90 && stdDev[idx]<pts_maxsize2) {
           if (filter.VWAP_UP && (mycounters.c_up==1 || (date_candle.hour>10 && mycounters.c_up<3)) && VWAP[idx]-VWAP[idx-2]>10 && body_up>pts_size && body_up>3*candle_hi && body_up>3*candle_lo) {
              if (MAFast[idx]-open[idx]>pts_size/3 && close[idx]-MAFast[idx]>pts_size/3 && open[idx]>VWAP[idx] && open[idx]-VWAP[idx]<pts_size/3 && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1])
                 aux_dir+=8;
           }
           if (filter.VWAP_DOWN && (mycounters.c_down==1 || (date_candle.hour>10 && mycounters.c_down<3)) && VWAP[idx-2]-VWAP[idx]>10 && body_down>pts_size && body_down>3*candle_lo && body_down>3*candle_hi) {
              if (open[idx]-MAFast[idx]>pts_size/3 && MAFast[idx]-close[idx]>pts_size/3 && open[idx]<VWAP[idx] && VWAP[idx]-open[idx]<pts_size/3 && high[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1])
                 aux_dir-=8;
           }
        }
        if (aux_abs<pts_maxsize2 && vwap_distance<pts_maxsize) {
           if (filter.tdf_color!=2 && mycounters.c_up<3 && body_up>pts_size && high[idx]-low[idx-1]<2*pts_maxsize2 && candle_hi<pts_size/2 && body_up>3*candle_hi && close[idx]-MAFast[idx]>15)
              if ((filter.VWAP_CROSS || filter.VWAP_LASTCROSS || filter.HILO_BUY || filter.MIBAND_UP || filter.SAR_INVERTBUY) && aux_dir<8 && aux_dir>=0 && RSI[idx]<70 && MFI[idx]>MFI[idx-1] && MFI[idx]>65 && MFI[idx]<80 && MAFast[idx]>MAFast[idx-1] && idx-pricestats.vwap_idx<24) aux_dir+=8;
        }
     }

     // First bars LONG trade with VWAP and RSI plus version
     if (pricestats.bars_day>3 && pricestats.bars_day<6 && aux_abs<150 && stdDev[idx]<2*pts_size2)
        if (filter.VWAP_UP && mycounters.c_up<4 && (filter.MED_UP || (close[idx]>close[idx-1] && close[idx-1]>=close[idx-2])) && body_up>50 && candle_lo>30 && candle_hi<25 && RSI[idx]>RSI[idx-1] && RSI[idx-1]>=RSI[idx-2] && buf_RSI[idx]<50 && close[idx]>close[idx-1] && candle_lo>candle_hi && close[idx]-close[price_stats.first_bar]<pts_maxsize2 && low[idx]>MathMin(open[idx-1],close[idx-1]))
           aux_dir+=8;

     // Moving Average strategy
     if (pricestats.bars_day>5 && date_candle.hour<16 && idx-pricestats.vwap_idx<15 && stdDev[idx]>50 && stdDev[idx]<pts_maxsize2) {
        if (type==1 && aux_dir<5 && !filter.VWAP_DOWN && filter.tdf_color!=2 && (MAFast[idx]>MAFast[idx-1] && (MA25[idx]>MA25[idx-1] || close[idx]>MAFast[idx]))) {
           if (mycounters.c_up<3 && MA25[idx]>MA100[idx] && MA25[idx]-MA50[idx]>15 && MA50[idx]-MA100[idx]>15 && body_up>70 && candle_hi<2*body_up)
              if (RSI[idx]>45 && RSI[idx]<69 && low[idx]<MA100[idx] && close[idx]-MA25[idx]>15 && high[idx]-low[idx-1]<pts_maxsize) {
                 aux_dir+=5;
                 set_force=1;
              }
        }
        else if (type==1 && aux_dir>-5 && !filter.VWAP_UP && filter.tdf_color!=1 && (MAFast[idx]<MAFast[idx-1] && (MA25[idx]<MA25[idx-1] || close[idx]<MAFast[idx]))) {
           if (mycounters.c_down<3 && MA100[idx]>MA25[idx] && MA50[idx]-MA25[idx]>15 && MA100[idx]-MA50[idx]>15 && body_down>70 && candle_lo<2*body_down)
              if (RSI[idx]<55 && RSI[idx]>30 && high[idx]>MA100[idx] && MA25[idx]-close[idx]>15 && high[idx-1]-low[idx]<pts_maxsize) {
                 aux_dir-=5;
                 set_force=1;
              }
        }
        if (tick_volume[idx]>30000 && vwap_distance<pts_maxsize2 && pricestats.max_dayprice-pricestats.min_dayprice>pts_maxsize2) {
           if (mycounters.c_up<3 && RSI[idx]<70 && RSI[idx]>48 && RSI[idx]-RSI[idx-1]>10 && body_up>pts_size && candle_hi<35 && close[idx]>high[idx-1] && low[idx]-low[idx-1]>35 && pricestats.max_dayprice-high[idx]>pts_maxsize2) {
              if (VWAP[idx]-close[idx]>pts_size2 && MAFast[idx]-MAFast[idx-1]>10 && (open[idx]<MA100[idx] || open[idx]<MA200[idx]) && (close[idx]>MA100[idx] || close[idx]>MA200[idx]) && MAFast[idx]-open[idx]>15 && close[idx]-MAFast[idx]>50 && open[idx-2]>MAFast[idx-2] && close[idx-2]<MAFast[idx-2])
                 aux_dir+=10;
           }
           else if (mycounters.c_down<3 && RSI[idx]>30 && RSI[idx]<52 && RSI[idx-1]-RSI[idx]>10 && body_down>pts_size && candle_lo<35 && close[idx]<low[idx-1] && high[idx-1]-high[idx]>35 && low[idx]-pricestats.min_dayprice>pts_maxsize2) {
              if (close[idx]-VWAP[idx]>pts_size2 && MAFast[idx-1]-MAFast[idx]>10 && (open[idx]>MA100[idx] || open[idx]>MA200[idx]) && (close[idx]<MA100[idx] || close[idx]<MA200[idx]) && open[idx]-MAFast[idx]>15 && MAFast[idx]-close[idx]>50 && open[idx-2]<MAFast[idx-2] && close[idx-2]>MAFast[idx-2])
                 aux_dir-=10;
           }
        }
        if (date_candle.hour>9 && filter.VWAP_CROSS) {
           if (date_candle.hour<12 && ATR[idx]<400 && candle_hi<100 && candle_lo<100 && pricestats.max_dayprice-pricestats.min_dayprice>pts_maxsize2 && tick_volume[idx]>20000) {
              // Short high probability
              if (aux_dir<5 && aux_dir>-9 && mycounters.c_down<3 && filter.tdf_color!=1 && mycounters.sarsell<6 && Force[idx]<0 && Force[idx]>-9000000 && RSI[idx]>35 && RSI[idx]<52 && body_down>pts_size && candle_lo<50 && high[idx-2]-high[idx-1]>35 && high[idx-2]-high[idx-3]>35 && low[idx]-MA50[idx]>100 && close[idx]<low[idx-1] && low[idx-1]>VWAP[idx-1] && open[idx]-VWAP[idx]>25 && VWAP[idx]-close[idx]>50 && open[idx]-MAFast[idx]>25 && MAFast[idx]-close[idx]>50 && low[idx]-pricestats.min_dayprice>200) {
                 aux_dir-=5;
                 set_force=1;
              }
           }
           if (date_candle.hour==10 && tick_volume[idx]>15000 && stdDev[idx]<pts_maxsize) {
              if (filter.tdf_color!=1 && mycounters.c_down==1 && Force[idx]<0 && MFI[idx]>20 && RSI[idx]<RSI[idx-1] && RSI[idx]<55 && RSI[idx]>30 && candle_lo<pts_size/3)
                 if ((!filter.VWAP_UP || (type==0 && date_candle.day>7 && VOLUME_UP && close[idx]<low[idx-1] && close[idx]<low[idx-2] && RSI[idx-1]-RSI[idx]>12)) && body_down>pts_size/2 && high[idx]-close[idx]>pts_size && body_down>5*candle_lo)
                    if (high[idx-1]-low[idx]<2*pts_size2 && high[idx]-MAFast[idx]>pts_size/2 && MAFast[idx]-close[idx]>pts_size/3 && high[idx]-VWAP[idx]>pts_size/2 && VWAP[idx]-close[idx]>pts_size/2) aux_dir-=8;
           }
        }
        if (date_candle.hour==10 && apftrade.trade_ct<4 && stdDev[idx]>pts_size && stdDev[idx]<pts_maxsize2 && tick_volume[idx]>20000 && !filter.VWAP_CROSS && vwap_distance<pts_maxsize2) {
           if (aux_dir<3 && mycounters.c_down<5 && mycounters.sarsell<6 && high[idx-1]-low[idx]<pts_maxsize2 && body_down>pts_size && candle_lo<pts_size && close[idx]<low[idx-1] && MFI[idx]>20 && RSI[idx]>35 && RSI[idx]<65 && low[idx]>VWAP[idx])
              if (open[idx]>MAFast[idx] && close[idx]<MAFast[idx] && open[idx]-MA25[idx]>pts_size && close[idx]-pricestats.min_dayprice>pts_size2 && (RSI[idx-1]>62 || MFI[idx-1]>82 || body_down>2*aux_abslast) && (low[idx-1]>MAFast[idx-1] || (body_down>2*aux_abslast && body_down>3*candle_lo && candle_lo<pts_size/3)))
                 aux_dir-=12;
        }
     }
     if (date_candle.hour>9 && date_candle.hour<16 && tick_volume[idx]>15000 && stdDev[idx]>pts_size/2 && stdDev[idx]<pts_maxsize2 && aux_abs<pts_maxsize && aux_abslast>10 && vwap_distance<pts_maxsize) {
        if (type==1) {
           if (candle_hi>aux_abs/2 && candle_lo>aux_abs/2);
           else {
              if ((filter.HILO_BUY || filter.VWAP_UP || filter.SAR_INVERTBUY) && filter.tdf_color!=2 && mycounters.c_up<3 && mycounters.sarbuy<6 && aux_dir>-3 && close[idx]>VWAP[idx] && body_up>pts_size && candle_hi<body_up && close[idx]>high[idx-1]) {
                 if (high[idx]-low[idx-1]>pts_maxsize2 || (filter.MIBAND_DOWN && filter.VWAP_DOWN));
                 else if (RSI[idx]<65 && RSI[idx]>38 && MFI[idx]<85 && Force[idx]>0 && MAFast[idx]>MA25[idx] && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>pts_size/2 && open[idx]<MA50[idx] && close[idx]>MA50[idx] && pricestats.max_dayprice-high[idx]>pts_size)
                    aux_dir+=3;
              }
              else if ((filter.HILO_SELL || filter.VWAP_DOWN || filter.SAR_INVERTSELL) && filter.tdf_color!=1 && mycounters.c_down<3 && mycounters.sarsell<6 && aux_dir<3 && close[idx]<VWAP[idx] && body_down>pts_size && candle_lo<body_down && close[idx]<low[idx-1]) {
                if (high[idx-1]-low[idx]>pts_maxsize2 || (filter.MIBAND_UP && filter.VWAP_UP));
                 else if (RSI[idx]<62 && RSI[idx]>35 && MFI[idx]>15 && Force[idx]<0 && MAFast[idx]<MA25[idx] && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>pts_size/2 && open[idx]>MA50[idx] && close[idx]<MA50[idx] && low[idx]-pricestats.min_dayprice>pts_size)
                    aux_dir-=2;
              }
           }
        }
        if (date_candle.hour>10 && date_candle.hour<15 && tick_volume[idx]>30000 && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize && aux_abs>aux_abslast)
           if (RSI[idx]>35 && MFI[idx]>35 && MA25[idx]>MA50[idx] && MA50[idx]>MA100[idx] && MA100[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && open[idx]<VWAP[idx]) {
              if (high[idx]>high[idx-1] && low[idx]<low[idx-1] && body_up>pts_size2 && candle_lo>pts_size && candle_lo>candle_hi && pricestats.max_dayprice-open[idx]>pts_maxsize2) aux_dir+=11;
           }
     }
     if (pricestats.bars_day>3 && date_candle.hour<17 && ATR[idx]<pts_maxsize2 && aux_abslast<pts_maxsize2) {
        if (idx-pricestats.vwap_idx<16 && pricestats.max_dayprice-pricestats.min_dayprice>pts_maxsize && stdDev[idx]>pts_size/2 && tick_volume[idx]>15000 && candle_hi<pts_size2 && candle_lo<pts_size2) {
           if (mycounters.c_down<3 && MA200[idx]-MA50[idx]>pts_size2 && Force[idx]>-3000000 && RSI[idx]>35 && close[idx]>loBand[idx] && (MFI[idx-1]>90 || MFI[idx-2]>90 || MFI[idx-3]>90))
              if (body_down>pts_size && body_down>3*candle_lo && candle_lo<pts_size/2 && high[idx-1]-low[idx]<pts_maxsize+pts_maxsize2 && open[idx]-MA200[idx]>10 && MA200[idx]-close[idx]>10)
                 aux_dir-=14;
        }
        if (filter.VWAP_CROSS && date_candle.hour>9 && date_candle.hour<16 && date_candle.day_of_week<5 && aux_abs>aux_abslast/2 && stdDev[idx]>pts_size/2 && stdDev[idx]<pts_maxsize && vwap_distance<pts_maxsize2) {
           if (mycounters.c_up<3 && filter.tdf_color!=2 && !filter.VWAP_DOWN && mycounters.sarbuy<14 && aux_dir>-3 && RSI[idx]>35 && MFI[idx]>35 && MFI[idx]<80 && body_up>pts_size/2 && body_up>3*candle_hi && candle_hi<pts_size/4 && close[idx]>high[idx-1] && close[idx]>(high[idx-2]+low[idx-1])/2 && pricestats.max_dayprice-close[idx]>pts_maxsize2) {
              if (high[idx]>MA200[idx] && close[idx]<MA200[idx]);
              else if (high[idx]>MA100[idx] && close[idx]<MA100[idx]);
              else if (high[idx]>MA50[idx] && close[idx]<MA50[idx]);
              else if (high[idx]-MAFast[idx]>pts_size/2 && close[idx]<MAFast[idx]);
              else if (MA100[idx]>MA50[idx] && MA50[idx]>MA25[idx]);
              else if (high[idx]>miBand[idx] && close[idx]<miBand[idx]);
              else if (VWAP[idx]<VWAP[idx-1] && VWAP[idx-1]<VWAP[idx-2]);
              else if (MAFast[idx]>MA50[idx] && MAFast[idx]>VWAP[idx] && low[idx]<VWAP[idx] && MA50[idx]>VWAP[idx] && low[idx-1]<VWAP[idx-1] && close[idx]-VWAP[idx]>pts_size/2 && close[idx]-MA50[idx]>pts_size/2 && MA50[idx]-low[idx]>pts_size/2 && high[idx]<upBand[idx])
                aux_dir+=12;
           }
           if (type==1 && mycounters.c_down==1 && MA200[idx]<MA200[idx-1] && MA200[idx-1]<MA200[idx-2])
              if (open[idx]<MA100[idx] && high[idx]>MA100[idx] && MA100[idx]-MA50[idx]>pts_size/2 && MA50[idx]>MAFast[idx])
                 if (body_down>pts_size && VWAP[idx]-close[idx]>pts_size/3 && MAFast[idx]-close[idx]>pts_size/3) aux_dir-=13;
        }

        // Perfect wave
        if (date_candle.hour>9 && stdDev[idx]<pts_maxsize && vwap_distance<pts_maxsize2 && candle_hi<pts_size/2 && candle_lo<pts_size/2) {
           if (date_candle.hour==10 && date_candle.min<20);
           else {
              if (filter.VWAP_UP && mycounters.sarbuy>0 && mycounters.sarbuy<6 && mycounters.c_up<4 && Force[idx]>0 && Force[idx]<5000000 && body_up>pts_size) {
                 if (RSI[idx]<84 && MA50[idx]>VWAP[idx] && MAFast[idx]>MA25[idx] && MA25[idx]>MA50[idx] && MA50[idx]>MA100[idx] && MA100[idx]>MA200[idx] && close[idx]>MAFast[idx])
                    aux_dir+=8;
              }
              else if (filter.VWAP_DOWN && filter.tdf_color==2 && mycounters.sarsell>0 && mycounters.sarsell<6 && mycounters.c_down<4 && Force[idx]<0 && Force[idx]>-5000000 && body_down>pts_size) {
                 if (RSI[idx]>27 && MA50[idx]<VWAP[idx] && MAFast[idx]<MA25[idx] && MA25[idx]<MA50[idx] && MA50[idx]<MA100[idx] && MA100[idx]<MA200[idx] && close[idx]<MAFast[idx] && close[idx]<low[idx-1])
                    aux_dir-=8;
              }
           }
        }
     }


     double ATR_auxper=pricestats.ATR_per;
     if (price_stats.ATR_max-price_stats.ATR_min>0) ATR_auxper=((100*ATR[idx])/price_stats.ATR_max);
     if (filter.HILO_BUY || filter.tdf_color==1 || aux_dir<-12) {
        bool CHECK_LONG=((type==0 && (mycounters.c_up>1 || filter.MED_UP)) || (type==1 && date_candle.hour<17));
        if (type==1 || apftrade.bars_trade>bars_pos_search || aux_dir>8 || (filter.VWAP_CROSS && filter.VWAP_DOWN)) {
           if (BACK_DIR1 && !filter.VWAP_DOWN) aux_dir+=4;
           if (body_up>1 && filter.tdf_color==1) aux_dir++;
        }
        if (CHECK_LONG && BACK_DIR1 && (filter.MED_UP || (filter.VWAP_CROSS && close[idx-1]<VWAP[idx-1]))) aux_dir+=2;
        if (CHECK_LONG && BACK_DIR1 && close[idx]>high[idx-1] && body_up>3*candle_lo) aux_dir+=2;
        if (CHECK_LONG && BACK_DIR1 && filter.HILO_BUY && filter.VWAP_UP && date_candle.hour<13 && close[idx]>high[idx-1] && body_up>3*candle_lo) aux_dir++;
        //if (CHECK_LONG && BACK_DIR1 && filter.HILO_INVERTBUY && close[idx]>HILO2[idx]) aux_dir+=3;
        if ((pricestats.bars_day>5 || date_candle.hour>9) && filter.VWAPCROSS && !filter.VWAP_DOWN && close[idx]>open[idx-1] && open[idx]<VWAP[idx] && close[idx]-VWAP[idx]>30 && low[idx-2]>buf_VWAP[idx]) aux_dir+=5;
        if (type==0 && apftrade.bars_trade>1 && filter.VWAPCROSS && mycounters.c_up>1 && body_up>250 && high[idx-2]<VWAP[idx-2] && high[idx]-low[idx-2]>2*pts_size2 && high[idx]-MA200[idx]>pts_maxsize2) aux_dir+=3;
        if (type==0 && apftrade.bars_trade>2 && date_candle.hour>12 && apftrade.trade_dir==1 && filter.HILO_BUY && aux_dir>-10 && idx-pricestats.vwap_idx>3 && low[idx]>VWAP[idx] && RSI[idx]>52 && body_down<150 && close[idx]>apftrade.trade_open) aux_dir+=5;
        //if (type==1 && filter.MED_UP && filter.HILO_BUY && filter.tdf_color!=2 && date_candle.hour>10 && date_candle.hour<14 && idx-pricestats.vwap_idx>10 && RSI[idx]<65 && RSI[idx]>45 && SAR[idx]<low[idx] && high[idx]<VWAP[idx] && body_up>50 && candle_hi<40 && candle_lo<60 && MAFast[idx]>MA200[idx] && MAFast[idx]>MAFast[idx-1] && close[idx]-MAFast[idx]>50 && open[idx-2]<MAFast[idx-2] && close[idx]>high[idx-1] && high[idx-1]>high[idx-2] && pricestats.max_dayprice-high[idx]>600) aux_dir+=9;
        if (CHECK_LONG && BACK_DIR1 && body_up>50 && candle_hi<50 && open[idx-2]<MA200[idx-2] && close[idx-2]-MA200[idx-2]>30 && close[idx-1]<MA200[idx-1] && close[idx]-MA200[idx]>50) aux_dir+=3;
        if (CHECK_LONG && BACK_DIR1 && filter.VWAP_UP && filter.tdf_color!=2 && aux_dir>0 && date_candle.hour>9 && date_candle.hour<14 && body_up>50 && body_up<250 && candle_lo>90 && candle_hi<25 && body_up>3*candle_hi && open[idx]-VWAP[idx]>30 && low[idx-1]>VWAP[idx-1] && VWAP[idx]-low[idx]>15 && open[idx-1]>MAFast[idx-1]) aux_dir+=6;
        if (CHECK_LONG && BACK_DIR1 && date_candle.hour>9 && date_candle.hour<14 && filter.HILO_INVERTBUY && filter.MED_UP && filter.MIBAND_UP && filter.tdf_color!=2 && body_up>60 && candle_hi<10 && candle_lo<50 && body_up>3*candle_hi && close[idx]>HILO2[idx] && MAFast[idx]>miBand[idx] && open[idx]>MAFast[idx] && low[idx-1]<MAFast[idx-1] && idx-pricestats.vwap_idx>12) aux_dir++;
        if (CHECK_LONG && BACK_DIR1 && date_candle.hour>9 && date_candle.hour<15 && filter.VWAPCROSS && (filter.HILO_INVERTBUY || (idx>2 && filter.HILO_BUY && MAFast[idx]>miBand[idx] && MAFast[idx-2]<miBand[idx-2])) && mycounters.c_up==1 && close[idx]>HILO2[idx] && body_up>pts_size && body_up<2*pts_size2 && aux_abslast>50 && close[idx-2]-open[idx-2]>50 && close[idx]-high[idx-1]>10 && VWAP[idx]-open[idx]>15 && close[idx]-VWAP[idx]>30 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir+=3;
        if (CHECK_LONG && BACK_DIR1 && pricestats.bars_day>5 && date_candle.hour<15 && filter.VWAP_CROSS && filter.HILO_BUY && filter.tdf_color==1 && stdDev[idx]>pts_size && RSI[idx]>45 && RSI[idx]<70 && body_up>100 && body_up>2*candle_hi && MathAbs(close[idx]-MA200[idx])>pts_size2 && open[idx]<VWAP[idx] && close[idx]-VWAP[idx]>50) aux_dir+=2;
        if (pricestats.bars_day>5 && date_candle.hour>11 && date_candle.hour<16 && filter.VWAP_CROSS && filter.MED_UP && mycounters.sarbuy>0 && mycounters.sarbuy<6 && body_up>pts_size && body_up>3*candle_hi && candle_hi<pts_size/3 && close[idx]>high[idx-1] && VWAP[idx-2]-low[idx-2]>pts_size/2 && close[idx]-VWAP[idx]>pts_size/2 && MAFast[idx]>MA25[idx] && close[idx]>MAFast[idx] && high[idx]-low[idx-2]<pts_maxsize2) aux_dir+=3;
        if (pricestats.bars_day>5 && date_candle.hour<16 && filter.VWAP_CROSS && filter.tdf_color!=2 && VOLUME_UP && RSI[idx]<70 && RSI[idx]>45 && Force[idx]>0 && Force[idx]<3000000 && body_up>pts_size && body_up>candle_hi && candle_lo<50 && close[idx]>high[idx-1] && high[idx]-low[idx-1]<pts_maxsize && close[idx]>VWAP[idx] && high[idx-1]<VWAP[idx-1] && MAFast[idx]>miBand[idx] && MAFast[idx-1]<miBand[idx-1] && MA200[idx]>MA200[idx-1] && close[idx]-MAFast[idx]>15 && MAFast[idx]-open[idx]>30) aux_dir+=5;
        if (pricestats.bars_day>5 && date_candle.hour<14 && date_candle.day_of_week<5 && filter.tdf_color!=2 && filter.VWAP_CROSS && filter.HILO_BUY && mycounters.sarbuy>0 && mycounters.sarbuy<10 && body_up>10 && candle_hi<90 && open[idx]-VWAP[idx]>30 && close[idx]-VWAP[idx]>50 && VWAP[idx]-low[idx]>15 && vwap_distance<pts_maxsize && MA200[idx]>MA200[idx-1] && low[idx]>MA200[idx] && MA25[idx]>MA50[idx] && MA50[idx]>MA100[idx]) aux_dir+=5;
        if (pricestats.bars_day<5 && filter.VWAPCROSS && candle_hi>body_up && candle_lo>body_up && candle_hi>50 && high[idx-1]-high[idx]>30) aux_dir=0;
        if (date_candle.hour>9 && date_candle.hour<15 && date_candle.day_of_week<5 && filter.tdf_color!=2 && !filter.VWAP_DOWN && !filter.MED_DOWN && filter.HILO_BUY && mycounters.c_up>1 && mycounters.c_up<4 && tick_volume[idx]>35000 && Force[idx]>0 && Force[idx]<9000000 && RSI[idx]>50 && RSI[idx]<65 && stdDev[idx]<pts_maxsize && body_up>50 && body_up>candle_hi && high[idx-2]<VWAP[idx-2] && close[idx]-VWAP[idx]>50 && VWAP[idx-1]-open[idx-1]>50 && MAFast[idx]-MA25[idx]>30 && close[idx]-MAFast[idx]>30 && MAFast[idx-1]-open[idx-1]>30 && vwap_distance<pts_maxsize && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-pricestats.min_dayprice<pts_maxsize2) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<15 && date_candle.day_of_week<5 && filter.tdf_color!=2 && filter.VWAP_UP && filter.HILO_BUY && mycounters.c_up<3 && mycounters.sarbuy<15 && RSI[idx]>45 && RSI[idx]<68 && Force[idx]<3000000 && aux_dir<6 && body_up>pts_size && body_up>3*candle_hi && body_up>2*candle_lo && candle_hi<90 && candle_lo<90 && idx-pricestats.vwap_idx<16 && close[idx]>VWAP[idx] && vwap_distance<pts_maxsize2 && MAFast[idx]>MA25[idx] && MA50[idx]-MA100[idx]>50 && open[idx]<MA50[idx] && close[idx]-MA50[idx]>30 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>30 && low[idx]>MA200[idx] && high[idx]-low[idx-1]<2*pts_size2 && close[idx]<upBand[idx] && pricestats.max_lastdayprice-high[idx]>600) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.NO_VWAPCROSS && filter.HILO_BUY && (filter.HILO_INVERTBUY || filter.SAR_INVERTBUY) && filter.tdf_color!=2 && mycounters.c_up==1 && VOLUME_UP && RSI[idx]<68 && stdDev[idx]>60 && stdDev[idx]<400 && body_up>pts_size && candle_hi<30 && body_up>2*aux_abslast && body_up>3*candle_hi && body_up>3*candle_lo && high[idx]-low[idx-1]<pts_maxsize2 && open[idx]<VWAP[idx] && close[idx]>high[idx-1] && close[idx]>high[idx-2] && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>30 && close[idx]-miBand[idx]>30 && pricestats.max_dayprice-high[idx]>pts_maxsize && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2) aux_dir+=3;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTBUY && filter.tdf_color!=2 && stdDev[idx]>70 && stdDev[idx]<400 && tick_volume[idx]>25000 && idx-pricestats.vwap_idx>5 && Force[idx]>100000 && RSI[idx]>45 && high[idx]>high[idx-1] && body_up>30 && body_up>candle_hi/3 && close[idx]>MAFast[idx] && MAFast[idx]>miBand[idx] && HILO2[idx]>MAFast[idx] && HILO2[idx-1]<MAFast[idx-1] && VWAP[idx]-high[idx]>pts_size2 && upBand[idx]-close[idx]>60) aux_dir+=3;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTBUY && filter.tdf_color!=2 && stdDev[idx]>70 && stdDev[idx]<400 && tick_volume[idx]>25000 && ATR[idx]<2*pts_size2 && idx-pricestats.vwap_idx>5 && Force[idx]>100000 && Force[idx]<3000000 && RSI[idx]>45 && RSI[idx]<68 && high[idx]>high[idx-1] && body_up>30 && candle_hi<100 && candle_lo<100 && body_up>candle_hi/3 && close[idx]>MAFast[idx] && MAFast[idx]>miBand[idx] && HILO2[idx]>MAFast[idx] && HILO2[idx-1]<MAFast[idx-1] && VWAP[idx]-high[idx]>pts_size2 && VWAP[idx]-high[idx]<360 && pricestats.max_dayprice-high[idx]>pts_maxsize2 && upBand[idx]-close[idx]>80) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<15 && vwap_distance<pts_maxsize2 && body_up>50 && close[idx-2]-open[idx-2]>50 && candle_hi<60 && body_up>2*candle_hi && aux_abslast<10 && high[idx-1]-(MathMax(open[idx-1],close[idx-1]))>2*aux_abslast && MathMin(open[idx-1],close[idx-1])-low[idx-1]>2*aux_abslast && close[idx]>MAFast[idx] && upBand[idx]-high[idx]>50) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<16 && filter.VWAP_CROSS && filter.MED_UP && mycounters.c_up<4 && RSI[idx]<65 && RSI[idx]>40 && body_up>pts_size && candle_hi<50 && body_up>3*candle_lo && body_up>3*candle_hi && close[idx]>high[idx-1] && VWAP[idx]-open[idx]>10 && close[idx]-VWAP[idx]>30 && open[idx]<MA200[idx] && close[idx]-MA200[idx]>15) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<15 && VOLUME_UP && filter.VWAPCROSS && filter.HILO_INVERTBUY && mycounters.sarbuy>0 && mycounters.sarbuy<10 && stdDev[idx]>90 && close[idx]>high[idx-1] && body_up>2*aux_abslast && body_up>100 && body_up<pts_maxsize && candle_hi<30 && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>15 && close[idx]>MAFast[idx] && open[idx]<VWAP[idx] && close[idx]-VWAP[idx]>70) aux_dir+=2;
        if (date_candle.hour>9 && date_candle.hour<16 && (VOLUME_UP || (date_candle.hour>11 && high[idx-2]<VWAP[idx-2])) && filter.VWAP_CROSS && mycounters.c_up<4 && stdDev[idx]>70 && RSI[idx]<80 && ATR[idx]<250 && body_up>100 && close[idx]>high[idx-1] && close[idx-1]<VWAP[idx-1] && close[idx]-VWAP[idx]>50 && open[idx-1]<MA200[idx-1] && close[idx]>MA200[idx] && pricestats.max_dayprice-close[idx]>2*pts_size2) aux_dir++;
        if (date_candle.hour>9 && date_candle.hour<16 && date_candle.day_of_week<5 && mycounters.c_up==1 && mycounters.sarbuy>1 && VOLUME_UP && filter.HILO_BUY && filter.VWAP_UP && filter.tdf_color!=2 && stdDev[idx]<2*pts_size2 && Force[idx]>0 && Force[idx]<3000000 && RSI[idx]<68 && tick_volume[idx]>35000 && body_up>pts_size2 && body_up<2*pts_size2 && aux_abslast>pts_size2 && body_up>2*candle_hi && body_up>2*candle_lo && close[idx]>(open[idx-1]+close[idx-1])/2 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>30 && pricestats.max_dayprice-high[idx]>100) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<15 && mycounters.c_up==1 && stdDev[idx]<400 && body_up>50 && candle_hi<30 && body_up>2*candle_hi && MathAbs(aux_abs-aux_abslast)<100 && aux_abslast>(open[idx-2]-close[idx-2])/2 && close[idx]>(open[idx-1]+close[idx-1])/2 && open[idx-1]-MA200[idx-1]>15 && MA200[idx]-open[idx]>15 && close[idx]-MA200[idx]>30 && idx-pricestats.vwap_idx<6) aux_dir+=14;
        if (date_candle.hour>9 && date_candle.hour<16 && filter.tdf_color!=2 && filter.HILO_BUY && filter.VWAP_CK_CROSS && (filter.MED_UP || filter.MIBAND_UP) && mycounters.sarbuy>0 && mycounters.sarbuy<10 && mycounters.c_up>2 && Force[idx]>0 && body_up>50 && body_up>2*candle_hi && candle_hi<35 && high[idx]-low[idx-1]<pts_maxsize && RSI[idx]<70 && stdDev[idx]>90 && vwap_distance<pts_maxsize && open[idx]>VWAP[idx] && open[idx-2]<VWAP[idx-2] && close[idx]-VWAP[idx]>100 && MAFast[idx]>miBand[idx]) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<16 && aux_dir<8 && filter.tdf_color!=2 && filter.VWAP_CROSS && filter.VWAP_UP && mycounters.c_up==1 && stdDev[idx]>50 && RSI[idx]<69 && Force[idx]>0 && body_up>100 && candle_hi<15 && close[idx]>high[idx-1] && close[idx]>MA200[idx] && low[idx-1]<MA25[idx-1] && open[idx]<MA25[idx] && close[idx]-MA25[idx]>25 && MA200[idx]-VWAP[idx]>25) aux_dir+=3;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTBUY && mycounters.sarbuy>0 && mycounters.sarbuy<16 && filter.tdf_color!=2 && tick_volume[idx]>10000 && close[idx]>HILO2[idx] && body_up>35 && candle_hi<90 && candle_lo<90 && MAFast[idx]-MA25[idx]>5 && MAFast[idx-2]<MA25[idx-2] && close[idx]-MAFast[idx]>15 && close[idx]-miBand[idx]>15 && low[idx]<MAFast[idx] && low[idx]<miBand[idx] && idx-pricestats.vwap_idx>6 && idx-pricestats.vwap_idx<42 && open[idx]<VWAP[idx] && vwap_distance<pts_maxsize2 && pricestats.max_dayprice-close[idx]>pts_maxsize && MA25[idx]-MA100[idx]<550) aux_dir+=3;
        if (date_candle.hour>9 && mycounters.c_up<3 && ATR[idx]<2*pts_size2 && stdDev[idx]>70 && RSI[idx]>50 && RSI[idx]<68 && body_up>pts_size && candle_hi<50 && candle_lo<50 && body_up>3*candle_hi && low[idx]>low[idx-1] && low[idx-2]>low[idx-1] && open[idx]<MA25[idx] && close[idx]-MA25[idx]>30 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>15 && MAFast[idx]-MA25[idx]>15 && low[idx-3]>VWAP[idx-3] && VWAP[idx-1]-low[idx-1]>30 && close[idx]-VWAP[idx]>150) aux_dir+=3;
        if (date_candle.hour>9 && date_candle.hour<17 && filter.VWAP_CROSS && filter.VWAP_UP && filter.MIBAND_UP && tick_volume[idx]>35000 && ATR[idx]<pts_maxsize && RSI[idx]>50 && RSI[idx]<75 && stdDev[idx]<pts_maxsize && body_up>50 && candle_hi<100 && body_up>candle_hi && high[idx-1]-high[idx]<50 && open[idx-2]<VWAP[idx-2] && close[idx]-VWAP[idx]>pts_size && open[idx-2]<MAFast[idx-2] && close[idx]-MAFast[idx]>pts_size && low[idx]<MAFast[idx] && MAFast[idx]-MAFast[idx-1]>15 && MAFast[idx]-MA25[idx]>30 && MAFast[idx]>miBand[idx] && close[idx]>miBand[idx] && vwap_distance<pts_maxsize) aux_dir+=5;
        if (date_candle.hour>9 && date_candle.hour<13 && date_candle.day_of_week<5 && filter.VWAP_UP && tick_volume[idx]>35000 && stdDev[idx]<pts_maxsize2 && stdDev[idx]>pts_size && RSI[idx]>48 && RSI[idx]<68 && body_up>2*aux_abslast && open[idx-2]-close[idx-2]>2*aux_abslast && close[idx]>high[idx-1] && body_up>pts_size && MAFast[idx]-open[idx]>15 && close[idx]-MAFast[idx]>30 && close[idx]-VWAP[idx]>50 && VWAP[idx-1]-low[idx-1]>30 && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>30 && vwap_distance<pts_maxsize) aux_dir+=5;
        if (date_candle.hour==10 && BACK_DIR1 && filter.tdf_color!=2 && (filter.VWAP_CROSS || open[idx-1]<VWAP[idx-1] || (open[idx]-low[idx-1]>25 && MathMin(open[idx-2],close[idx-2])-low[idx-1]>25)) && mycounters.sarbuy>0 && mycounters.sarbuy<7 && stdDev[idx]>80 && vwap_distance<2*pts_size2 && body_up>70 && body_up<250 && body_up>aux_abslast && body_up>3*candle_lo && body_up>3*candle_hi && candle_hi<60 && close[idx]>high[idx-1] && close[idx]>high[idx-2] && close[idx]>MAFast[idx] && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && high[idx]-upBand[idx]<100 && idx-pricestats.vwap_idx<24) aux_dir+=5;
        if (date_candle.hour==12 && (date_candle.min>=0 && date_candle.min<30) && mycounters.c_up<3 && mycounters.sarbuy>0 && filter.tdf_color!=2 && idx-pricestats.vwap_idx<32 && RSI[idx]>45 && body_up>pts_size && body_up>candle_hi && candle_hi<pts_size && candle_lo<pts_size && high[idx]-low[idx-1]<2*pts_maxsize2 && close[idx]>high[idx-1] && close[idx]-VWAP[idx]>pts_size/2 && close[idx]-MAFast[idx]>pts_size/2 && vwap_distance<pts_maxsize2 && (MAFast[idx]>MA25[idx] || MA25[idx]>MA50[idx])) aux_dir+=8;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTBUY && VOLUME_UP && mycounters.sarbuy>0 && stdDev[idx]<150 && idx-pricestats.vwap_idx>12 && body_up>pts_size && body_up<400 && (close[idx]-high[idx-1]>35 || close[idx]-high[idx-2]>35) && MAFast[idx]>miBand[idx] && close[idx]>MAFast[idx] && close[idx-1]<MAFast[idx-1]) aux_dir+=7;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTBUY && body_up>100 && body_up>2*candle_hi && high[idx]-low[idx-1]<400 && VWAP[idx-1]-open[idx-1]>50 && close[idx]-VWAP[idx]>70 && MA200[idx-1]-open[idx-1]>50 && close[idx]-MA200[idx]>50 && close[idx]>MAFast[idx]) aux_dir+=2;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTBUY && filter.SAR_INVERTBUY && tick_volume[idx]>35000 && body_up>80 && candle_hi<50 && body_up>2*candle_hi && high[idx]-low[idx-2]<pts_maxsize2 && close[idx]>high[idx-1] && close[idx]<upBand[idx] && pricestats.max_dayprice-high[idx]>330 && close[idx]>MAFast[idx] && VWAP[idx]-high[idx]>100 && vwap_distance<pts_maxsize) aux_dir++;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTBUY && filter.SAR_INVERTBUY && tick_volume[idx]>35000 && body_up>80 && candle_hi<50 && body_up>2*candle_hi && high[idx]-low[idx-2]<pts_maxsize2 && close[idx]>high[idx-1] && close[idx]<upBand[idx] && pricestats.max_dayprice-high[idx]>330 && MAFast[idx]>miBand[idx] && MAFast[idx-1]<miBand[idx-1] && VWAP[idx]-high[idx]>100 && vwap_distance<pts_maxsize) aux_dir++;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.VWAP_CROSS && MFI[idx]<90 && RSI[idx]<72 && body_up>pts_size && candle_hi<pts_size && close[idx]-VWAP[idx]>pts_size/2 && close[idx]>MAFast[idx] && MAFast[idx]>MA25[idx] && (MAFast[idx-1]<MA25[idx-1] || MAFast[idx-2]<MA25[idx-2]) && MAFast[idx]>MA200[idx] && MAFast[idx-1]<MA200[idx-1]) aux_dir+=5;
        if (date_candle.hour>12 && ((type==0 && (mycounters.c_up>1 || filter.MED_UP)) || (type==1 && date_candle.day_of_week<5 && filter.tdf_color!=2 && Force[idx]<3000000 && date_candle.hour<17 && body_up<2*pts_size2 && candle_hi<body_up && mycounters.c_up<3 && pricestats.max_dayprice-high[idx]>pts_maxsize)) && filter.HILO_BUY && filter.NO_VWAPCROSS && VOLUME_UP && stdDev[idx]>90 && idx-pricestats.vwap_idx>8 && Force[idx]>0 && body_up>30 && candle_hi<90 && candle_lo<90 && high[idx]<VWAP[idx] && vwap_distance<pts_maxsize2 && RSI[idx]>45 && MAFast[idx]-miBand[idx]>3 && MAFast[idx-2]<miBand[idx-2] && MAFast[idx]>MA25[idx] && MAFast[idx-2]<MA25[idx-2] && close[idx]>MAFast[idx] && close[idx]>MA25[idx]) aux_dir+=8;
        if (date_candle.hour>13 && CHECK_LONG && filter.HILO_INVERTBUY && mycounters.c_up==1 && body_up>100 && idx-pricestats.vwap_idx>6 && close[idx]>HILO2[idx] && close[idx]-MAFast[idx]>30 && MAFast[idx]-low[idx]>30 && close[idx]>high[idx-1]) aux_dir+=5;
        if (type==1 && pricestats.bars_day<4 && filter.VWAPCROSS && filter.MIBAND_UP && mycounters.c_up==2 && stdDev[idx]<pts_maxsize && close[idx]-VWAP[idx]>50 && VWAP[idx]-VWAP[pricestats.first_bar]>20 && high[idx]-low[pricestats.first_bar]<450 && body_up>90 && aux_abslast>50 && candle_hi<50 && candle_lo<50 && close[idx-1]-low[idx-1]<50 && body_up>3*candle_hi && body_up>3*candle_lo && close[idx]>high[idx-1] && (VOLUME_UP || aux_abs>aux_abslast)) aux_dir+=3;
        if (type==1 && date_candle.hour==11 && filter.NO_VWAPCROSS && mycounters.sarbuy>7 && mycounters.c_up>1 && aux_dir<12 && aux_dir>5 && Force[idx]>3000000 && RSI[idx]>68 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize && low[idx]>VWAP[idx] && pricestats.max_dayprice-high[idx]<50) aux_dir-=5;
        if (type==1 && date_candle.hour>9 && date_candle.hour<15 && filter.HILO_BUY && mycounters.c_up==1 && RSI[idx]>45 && RSI[idx]<65 && high[idx-2]-low[idx-1]>2*pts_size2 && body_up>30 && close[idx-1]-low[idx-1]>100 && high[idx-1]-open[idx-1]<30 && low[idx]-low[idx-1]>50 && open[idx]<VWAP[idx] && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && MAFast[idx]>miBand[idx]) aux_dir+=8;
        if (type==1 && date_candle.hour>9 && date_candle.hour<17 && filter.HILO_BUY && filter.VWAPCROSS && filter.tdf_color!=2 && VOLUME_UP && body_up>70 && body_up<2*pts_size2 && body_up>2*aux_abslast && body_up>2*candle_hi && high[idx]-low[idx-1]<400 && close[idx]>high[idx-1] && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>30 && close[idx]-VWAP[idx]>50 && open[idx-2]-VWAP[idx-2]>40 && open[idx]<MAFast[idx] && close[idx]>MAFast[idx]) aux_dir+=5;
        if (type==1 && date_candle.hour>11 && date_candle.hour<15 && filter.HILO_BUY && filter.VWAPCROSS && mycounters.c_up==1 && filter.tdf_color!=2 && stdDev[idx]<200 && Force[idx]>0 && Force[idx]<3000000 && RSI[idx]>50 && RSI[idx]<65 && body_up>100 && candle_hi<80 && body_up>2*candle_hi && aux_abs<250 && aux_abslast>10 && high[idx]-low[idx-1]<pts_maxsize && close[idx]>high[idx-2] && close[idx]>MAFast[idx] && VWAP[idx]-open[idx]>10 && close[idx]-VWAP[idx]>50 && VWAP[idx-1]-MathMin(open[idx-1],close[idx-1])>30) aux_dir+=5;
        if (type==1 && filter.HILO_BUY && filter.MIBAND_UP && !filter.VWAP_DOWN && date_candle.hour>9 && date_candle.hour<16 && mycounters.sarbuy>0 && RSI[idx]>45 && ATR_auxper>80 && vwap_distance<pts_maxsize && candle_lo>2*candle_hi && MAFast[idx]>MASlow[idx] && low[idx]-loBand[idx]<50 && upBand[idx-1]-low[idx]>pts_maxsize && low[idx-1]>VWAP[idx-1] && low[idx]<VWAP[idx] && close[idx]>VWAP[idx]) aux_dir+=8;
        if (date_candle.hour>12 && date_candle.hour<16 && mycounters.c_up<3 && tick_volume[idx]>35000 && body_up>pts_size && candle_hi<35 && body_up>3*candle_hi && close[idx]>high[idx-1] && ATR[idx]<2*pts_size2 && stdDev[idx]<150 && stdDev[idx]>50 && open[idx]<miBand[idx] && close[idx]>miBand[idx] && MAFast[idx]-open[idx]>25 && close[idx]-MAFast[idx]>50 && MathMax(open[idx-1],close[idx-1])>MAFast[idx-1] && MathMin(open[idx-1],close[idx-1])<MAFast[idx-1] && vwap_distance<pts_maxsize2 && high[idx]<VWAP[idx] && (filter.MIBAND_UP || MA200[idx]>=MA200[idx-1])) aux_dir+=5;
        if (BACK_DIR1 && filter.VWAP_UP && filter.NO_VWAPCROSS && date_candle.hour>9 && date_candle.hour<15 && filter.tdf_color!=2 && filter.HILO_INVERTBUY && mycounters.c_up<5 && body_up>15 && candle_hi<50 && high[idx]-low[idx-1]<pts_maxsize && candle_hi<3*body_up && ATR[idx]<200 && Force[idx]>0 && Force[idx]<3000000 && RSI[idx]>45 && RSI[idx]<65 && low[idx]>VWAP[idx] && MAFast[idx]>MASlow[idx] && MAFast[idx-1]>MASlow[idx-1] && close[idx]>MAFast[idx] && close[idx]>HILO2[idx] && low[idx]>MA200[idx] && upBand[idx]-loBand[idx]<pts_maxsize2 && idx-pricestats.vwap_lastidx<48 && MathAbs(stdDev[idx]-stdDev[idx-1])>5) aux_dir+=6;
        if (filter.HILO_BUY && filter.tdf_color!=2 && Force[idx]>0 && RSI[idx]>45 && date_candle.hour>10 && mycounters.sarbuy>0 && mycounters.c_up>1 && close[idx]>high[idx-1] && body_up>60 && aux_abslast>50 && candle_hi<100 && body_up>3*candle_hi && open[idx-1]<VWAP[idx-1] && idx-pricestats.vwap_idx>6 && MAFast[idx]-MAFast[idx-1]>30 && open[idx-1]<MAFast[idx-1] && close[idx]>MAFast[idx] && high[idx-1]<HILO[idx-1] && close[idx]>HILO[idx] && close[idx]>HILO2[idx]) {
           if (type==0 && apftrade.trade_open-high[idx]<150) aux_dir+=2;
           else if (body_up<200 && date_candle.hour<16 && aux_dir>1 && stdDev[idx]>pts_size && stdDev[idx]<400 && RSI[idx]<65 && vwap_distance<pts_maxsize && close[idx]>miBand[idx] && high[idx-2]<HILO[idx-2] && high[idx-2]<HILO2[idx-2] && pricestats.max_dayprice-close[idx]>pts_maxsize2) aux_dir+=10;
        }
        if (idx-pricestats.vwap_idx<20) {
           if (MAFast[idx]>miBand[idx] && MAFast[idx-2]<miBand[idx-2]) aux_dir+=3;
        }

        if (type==1) {
           // Prevent open position
           //if (body_down>20) aux_dir-=2;
           if (body_down>50 && candle_lo>body_down) aux_dir-=2;
           if (body_down>100 && high[idx-1]-high[idx]>50 && high[idx-1]-high[idx-2]>50 && body_down>2*candle_lo) aux_dir--;
           if (body_down>100 && candle_lo<30 && body_down>2*candle_hi && body_down>2*candle_lo) aux_dir--;
           if (filter.VWAP_CROSS && mycounters.c_up>1 && aux_dir>1 && open[idx]<close[idx-1] && open[idx]>VWAP[idx]) aux_dir--;
           if (aux_abs<aux_abslast/3) aux_dir--;
           if (aux_dir>0 && RSI[idx]<55 && pricestats.ATR_per>80) aux_dir--;
           if (aux_dir>0 && RSI[idx]<55 && pricestats.ATR_per>75 && MAFast[idx]<MASlow[idx] && MAFast[idx-1]<MASlow[idx-1]) aux_dir--;
           if (aux_dir<0 && pricestats.bars_day<4 && high[idx]-low[idx-1]>pts_maxsize && candle_hi>30 && high[idx]<MA200[idx] && MA200[idx]-VWAP[idx]>150) aux_dir--;
           if (high[idx]-low[idx-1]>600 && candle_hi>0) aux_dir--;
           if (high[idx]-low[idx-1]>400 && date_candle.hour>11 && filter.VWAP_CROSS && aux_dir<15 && upBand[idx]-high[idx]<30 && low[idx-2]-loBand[idx-2]<30) aux_dir-=5;
           if (high[idx]-low[idx-1]>pts_maxsize && filter.VWAP_CROSS && aux_dir<12 && body_up>200 && candle_hi>30 && upBand[idx]-high[idx]<30 && upBand[idx]-close[idx]>50) aux_dir--;
           if (mycounters.sarbuy>6 && aux_dir>2 && candle_hi>10 && RSI[idx]>65 && high[idx]-low[idx-mycounters.sarbuy]>600 && high[idx]>upBand[idx] && open[idx]<MA200[idx] && MA200[idx]-high[idx]<100 && close[idx]<MA200[idx]) aux_dir-=2;
           if (date_candle.hour>11 && mycounters.c_up>1 && filter.NO_VWAPCROSS && aux_dir<10 && stdDev[idx]<150 && MathAbs(stdDev[idx]-stdDev[idx-1])<9 && close[idx]>HILO2[idx] && (RSI[idx]>60 || idx-pricestats.vwap_idx>32) && low[idx]>VWAP[idx] && high[idx]-open[pricestats.first_bar]>3*pts_maxsize2) aux_dir--;
           if (date_candle.hour>11 && date_candle.hour<15 && mycounters.c_up>2 && aux_dir>3 && stdDev[idx]<120 && candle_hi>30 && candle_hi>2*candle_lo && idx>idx-pricestats.first_bar+3 && high[idx]-low[idx-mycounters.c_up]>250 && VWAP[idx]-VWAP[idx-pricestats.first_bar+3]>pts_maxsize2 && low[idx]>VWAP[idx] && upBand[idx]-high[idx]<50 && low[idx-mycounters.c_up]-loBand[idx-mycounters.c_up]<50) aux_dir-=3;
           if (date_candle.hour>12 && mycounters.c_up>2 && filter.tdf_color!=1 && filter.VWAP_CROSS && !filter.VWAP_UP && aux_dir>5 && aux_dir<15 && RSI[idx]>60 && high[idx]-low[idx-mycounters.c_up]>2*pts_size2) aux_dir-=5;
           if (date_candle.hour>12 && mycounters.c_up>2 && mycounters.sarsell>0 && filter.tdf_color!=1 && filter.VWAPCROSS && stdDev[idx]<120 && aux_dir>0 && RSI[idx]>61 && body_up<aux_abslast/1.5) aux_dir--;
           if (date_candle.hour>12 && mycounters.sarbuy>5 && mycounters.c_up==1 && aux_dir>5 && aux_dir<12 && body_up<150 && stdDev[idx]<pts_size && tick_volume[idx]<35000 && open[idx]>VWAP[idx] && high[idx]<MA200[idx] && candle_hi>20 && high[idx]-pricestats.min_dayprice>pts_maxsize2) aux_dir-=5;
           if (date_candle.hour>12 && mycounters.c_up==1 && filter.tdf_color!=1 && filter.NO_VWAPCROSS && aux_dir>3 && aux_dir<12 && body_up<150 && stdDev[idx]<pts_size && tick_volume[idx]<30000 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && MA200[idx]-VWAP[idx]>pts_size2 && open[idx]-VWAP[idx]>15 && candle_hi>15 && high[idx]-pricestats.min_dayprice>700) aux_dir-=3;
           if (date_candle.hour>10 && mycounters.c_up>1 && mycounters.sarbuy>5 && candle_hi>30 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && low[idx]>VWAP[idx] && low[idx]>MAFast[idx] && high[idx]>upBand[idx]) aux_dir--;
           if (date_candle.hour>10 && mycounters.c_up>1 && mycounters.sarbuy>5 && filter.NO_VWAPCROSS && aux_dir>5 && aux_dir<15 && RSI[idx]>70 && candle_hi>15 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && low[idx]-VWAP[idx]>pts_size2 && low[idx]>MA25[idx] && close[idx]>upBand[idx] && pricestats.max_dayprice-high[idx]<100) aux_dir-=5;
           if (date_candle.hour>10 && date_candle.hour<13 && mycounters.sarbuy>10 && high[idx-1]-high[idx]>30 && body_down>30 && upBand[idx-1]-high[idx-1]<30 && MAFast[idx]-miBand[idx]<30) aux_dir-=3;
           if (date_candle.hour>10 && mycounters.c_up>1 && aux_dir>0 && idx>mycounters.c_up && high[idx]-low[idx-mycounters.c_up]>2*pts_maxsize2) aux_dir--;
           if (date_candle.hour<10 && filter.VWAP_CK_CROSS && aux_dir>5 && high[idx]>MA200[idx] && close[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1] && pricestats.max_dayprice-high[idx]<2*pts_size2) aux_dir-=8;
           if (filter.VWAPCROSS && body_up>250 && high[idx]-low[idx-2]>250 && high[idx]-MA200[idx]>pts_maxsize2 && candle_hi>15) aux_dir=0;
           if (pricestats.bars_day<4 && filter.VWAPCROSS && RSI[idx]>80 && Force[idx]>6000000 && candle_hi>aux_abs/2 && (candle_hi>30 || candle_lo>30)) aux_dir-=2;
           if (pricestats.bars_day<5 && close[idx]>VWAP[idx] && high[idx]-low[idx-1]>600 && candle_hi>10) aux_dir-=1;
           if (filter.VWAP_DOWN && Force[idx]<0 && body_down>50 && candle_lo>15 && candle_hi>15) aux_dir-=1;
           if (!filter.VWAP_UP && date_candle.hour>16 && filter.tdf_color!=1 && candle_hi>10) aux_dir-=3;
           if (body_up<candle_hi && candle_hi>pts_size && candle_hi>2*candle_lo) aux_dir-=2;
           if (date_candle.hour>14 && idx-pricestats.vwap_idx>24) aux_dir--;
           if (filter.NO_VWAPCROSS && mycounters.c_up>2 && mycounters.sarbuy>10 && RSI[idx]>68 && low[idx]>VWAP[idx] && candle_hi>0 && idx-pricestats.vwap_idx>10 && VWAP[idx]-VWAP[pricestats.vwap_lastidx]>100) aux_dir-=3;
           if (filter.VWAPCROSS && !VOLUME_UP && (RSI[idx]>69 || open[idx-1]-close[idx]>30) && candle_hi>20 && body_up<aux_abslast && close[idx]<open[idx-1] && open[idx-1]-close[idx-1]>150) aux_dir-=1;
           if (high[idx-1]<VWAP[idx-1] && high[idx]-open[idx]>pts_maxsize && candle_hi>35) aux_dir-=5;
           if (!filter.VWAPCROSS && !VOLUME_UP && date_candle.hour<13 && candle_hi>25 && RSI[idx]>68 && low[idx]>VWAP[idx] && high[idx]-low[idx-3]>pts_maxsize2 && upBand[idx]-high[idx]<60) aux_dir-=2;
           if (filter.VWAPCROSS && aux_dir>5 && body_up<aux_abslast && candle_hi>15 && close[idx]-VWAP[idx]<100 && high[idx-1]>VWAP[idx-1] && close[idx-1]<VWAP[idx-1] && MA200[idx]<MA200[idx-1] && high[idx]<MA200[idx]) aux_dir-=6;
           if (filter.VWAP_CROSS && mycounters.sarsell>2 && aux_dir>2 && aux_dir<12 && high[idx]-low[idx-1]>2*pts_size2 && high[idx-1]<VWAP[idx-1] && VWAP[idx-3]-VWAP[idx-1]>50 && high[idx]-VWAP[idx]>50 && close[idx]-VWAP[idx]<10) aux_dir-=2;
           if (date_candle.hour<10 && filter.VWAPCROSS && mycounters.c_up>2 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && high[idx-1]-close[idx-1]>body_up && (candle_hi>50 || candle_lo>50)) aux_dir=0;
           if (date_candle.hour<11 && filter.NO_VWAP_CROSS && mycounters.sarbuy>5 && apftrade.trade_ct<1 && mycounters.c_up>2 && aux_dir>2 && aux_dir<12 && Force[idx]>5000000 && RSI[idx]>75 && low[idx]>VWAP[idx] && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && (candle_hi>90 || candle_lo>90)) aux_dir-=2;
           if (date_candle.hour>9 && date_candle.hour<14 && filter.HILO_BUY && filter.VWAP_UP && filter.tdf_color==1 && mycounters.c_up==1 && Force[idx]<5000000 && RSI[idx]<68 && RSI[idx]>55 && low[idx-2]>VWAP[idx-2] && low[idx-1]-VWAP[idx-1]<50 && open[idx]>VWAP[idx] && close[idx]-VWAP[idx]>pts_size && close[idx]>high[idx-1] && body_up>pts_size && candle_hi<90 && candle_lo<90 && body_up>2*candle_hi && low[idx]>MA200[idx] && MA200[idx]>MA200[idx] && MA25[idx]-MA50[idx]>30 && MA50[idx]-MA100[idx]>30) aux_dir+=5;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.NO_VWAPCROSS && mycounters.c_up>2 && mycounters.sarbuy>6 && RSI[idx]>75 && low[idx]>VWAP[idx] && idx-pricestats.vwap_idx>10 && low[idx]-VWAP[idx]>pts_maxsize2 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2) aux_dir--;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.NO_VWAPCROSS && apftrade.trade_ct<1 && Force[idx]>3000000 && RSI[idx]>65 && high[idx]-pricestats.min_dayprice>1200 && idx-pricestats.vwap_idx>24 && low[idx]>VWAP[idx] && vwap_distance>pts_maxsize2) aux_dir--;
           if (date_candle.hour>12 && stdDev[idx]<pts_size && close[idx]>upBand[idx] && candle_hi>2*candle_lo && candle_hi>50 && RSI[idx]>66) aux_dir-=4;
           if (date_candle.hour>12 && mycounters.c_up>2 && high[idx]-low[idx-mycounters.c_up]>510 && RSI[idx]>70 && candle_hi>50 && candle_hi>candle_lo && candle_hi>body_up/2 && VWAP[idx-1]<VWAP[idx-2] && (filter.HILO_SELL || MA200[idx]>high[idx])) aux_dir-=5;
           if (date_candle.hour>12 && filter.VWAPCROSS && !filter.VWAP_UP && candle_hi>5 && high[idx-1]-VWAP[idx-1]>10 && close[idx-1]<VWAP[idx-1]) aux_dir--;
           if (date_candle.hour>14 && filter.VWAPCROSS && !filter.VWAP_UP && stdDev[idx]<90 && high[idx-1]>VWAP[idx-1] && close[idx-1]<VWAP[idx-1] && aux_dir>0 && aux_dir<12 && (candle_hi>35 || candle_lo>35)) aux_dir--;
           if (date_candle.hour>14 && filter.VWAPCROSS && mycounters.sarsell>1 && aux_dir>1 && open[idx-1]-close[idx]>30 && high[idx]<HILO2[idx]) aux_dir--;
           if (date_candle.hour>14 && mycounters.c_up>2 && (mycounters.sarsell>1 || stdDev[idx]<stdDev[idx-1]) && stdDev[idx]<130 && candle_hi>3 && open[idx]>VWAP[idx] && high[idx]-low[idx-mycounters.c_up]>2*pts_size2 && high[idx]<MA200[idx] && high[idx]-pricestats.min_dayprice>pts_maxsize) aux_dir--;
           if (date_candle.hour>14 && candle_hi>50 && candle_hi>3*candle_lo && candle_hi>aux_abs/2 && high[idx]>upBand[idx] && MA200[idx]<MA200[idx-1] && MA200[idx-1]<MA200[idx-2] && high[idx]<MA200[idx]) aux_dir-=3;
           if (date_candle.hour>15 && filter.VWAP_CK_CROSS && candle_hi>2*candle_lo && aux_dir>1 && aux_dir<12 && RSI[idx]>71 && tick_volume[idx]<20000 && candle_hi>30 && close[idx]-VWAP[idx]>100 && MA200[idx]-VWAP[idx]>2*(close[idx]-VWAP[idx]) && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && upBand[idx]-high[idx]<100 && high[idx]-pricestats.min_dayprice>550) aux_dir--;
           if (date_candle.hour>16 && candle_hi>10 && stdDev[idx]<pts_size && upBand[idx]-high[idx]<50 && low[idx-1]-loBand[idx-1]<50 && MA200[idx]<MA200[idx-1] && MA200[idx-1]<MA200[idx-2] && high[idx]<MA200[idx]) aux_dir-=5;
           if (date_candle.hour>16 && date_candle.min>30 && stdDev[idx]<pts_size && candle_hi>30 && candle_hi>2*candle_lo && open[idx]>VWAP[idx]) aux_dir-=2;
           if (filter.tdf_color!=1) {
              if (filter.SAR_INVERTSELL) aux_dir-=5;
              if (filter.VWAP_CROSS) {
                 if (!filter.VWAP_UP && close[idx-1]<VWAP[idx-1] && candle_hi>pts_size) aux_dir-=5;
                 if (filter.VWAPCROSS && candle_hi>30 && high[idx]>upBand[idx] && close[idx]<upBand[idx]) aux_dir-=2;
                 if (RSI[idx]>65 && close[idx-1]<VWAP[idx-1] && high[idx-2]<VWAP[idx-2] && high[idx]>upBand[idx]) aux_dir-=4;
              }
           }
           if (filter.VWAPCROSS && aux_dir>2 && aux_dir<10 && body_down>100 && body_down>2*candle_lo && close[idx]<(open[idx-1]+close[idx-1])/2) aux_dir--;
        }
     }
     else if (filter.HILO_SELL || filter.tdf_color==2 || aux_dir>12) {
        bool CHECK_SHORT=((type==0 && (mycounters.c_down>1 || filter.MED_DOWN)) || (type==1 && date_candle.hour<17));
        if (type==1 || apftrade.bars_trade>bars_pos_search || aux_dir<-8 || (filter.VWAP_CROSS && filter.VWAP_UP)) {
           if (!filter.VWAP_UP || filter.tdf_color==2 || (Force[idx]<0 && candle_lo<30 && tick_volume[idx]>tick_volume[idx-1])) aux_dir-=4;
           if (body_down>1 && filter.tdf_color==2) aux_dir--;
        }
        if (BACK_DIR2 && (filter.MED_DOWN || (filter.VWAP_CROSS && close[idx-1]>VWAP[idx-1]))) aux_dir-=2;
        if (BACK_DIR2 && (Force[idx]>-3500000 || type==0) && close[idx]<low[idx-1] && body_down>3*candle_hi) aux_dir-=2;
        if (BACK_DIR2 && date_candle.hour<13 && filter.MED_DOWN && filter.VWAP_CROSS && close[idx]<low[idx-1] && close[idx]<low[idx-2] && low[idx-1]>VWAP[idx-1] && VWAP[idx]-close[idx]>30 && body_down>3*candle_hi) aux_dir--;
        if (filter.VWAPCROSS && !filter.VWAP_UP && close[idx]<open[idx-1] && open[idx]>VWAP[idx] && VWAP[idx]-close[idx]>30 && high[idx-2]<buf_VWAP[idx]) aux_dir-=5;
        if (type==0 && apftrade.bars_trade>1 && filter.VWAPCROSS && mycounters.c_down>1 && body_down>250 && low[idx-2]>VWAP[idx-2] && high[idx-2]-low[idx]>2*pts_size2 && MA200[idx]-low[idx]>pts_maxsize2) aux_dir-=3;
        if (type==0 && apftrade.bars_trade>2 && date_candle.hour>12 && apftrade.trade_dir==2 && filter.HILO_SELL && aux_dir<10 && idx-pricestats.vwap_idx>3 && high[idx]<VWAP[idx] && RSI[idx]<48 && body_up<150 && close[idx]<apftrade.trade_open) aux_dir-=5;
        if (CHECK_SHORT && BACK_DIR2 && body_down>50 && candle_lo<50 && open[idx-2]>MA200[idx-2] && MA200[idx-2]-close[idx-2]>30 && close[idx-1]>MA200[idx-1] && MA200[idx]-close[idx]>50) aux_dir-=3;
        if (CHECK_SHORT && BACK_DIR2 && filter.MED_DOWN && filter.HILO_SELL && filter.tdf_color!=1 && date_candle.hour>10 && date_candle.hour<14 && idx-pricestats.vwap_idx>10 && RSI[idx]>35 && RSI[idx]<55 && SAR[idx]>high[idx] && low[idx]>VWAP[idx] && body_down>50 && candle_lo<40 && candle_hi<60 && MAFast[idx]<MA200[idx] && MAFast[idx]<MAFast[idx-1] && MAFast[idx]-close[idx]>50 && open[idx-2]>MAFast[idx-2] && close[idx]<low[idx-1] && low[idx-1]<low[idx-2] && low[idx]-pricestats.min_dayprice>600) aux_dir-=9;
        if (CHECK_SHORT && BACK_DIR2 && filter.VWAP_DOWN && filter.tdf_color!=1 && aux_dir<0 && date_candle.hour>9 && date_candle.hour<14 && body_down>50 && body_down<250 && candle_hi>90 && candle_lo<25 && body_down>3*candle_lo && VWAP[idx]-open[idx]>30 && high[idx-1]<VWAP[idx-1] && high[idx]-VWAP[idx]>15 && open[idx-1]<MAFast[idx-1]) aux_dir-=6;
        if (CHECK_SHORT && BACK_DIR2 && date_candle.hour>9 && date_candle.hour<14 && filter.HILO_INVERTSELL && filter.MED_DOWN && filter.MIBAND_DOWN && filter.tdf_color!=1 && body_down>60 && candle_lo<10 && candle_hi<50 && body_down>3*candle_lo && close[idx]<HILO2[idx] && MAFast[idx]<miBand[idx] && open[idx]<MAFast[idx] && high[idx-1]>MAFast[idx-1] && idx-pricestats.vwap_idx>12) aux_dir--;
        if (CHECK_SHORT && BACK_DIR2 && date_candle.hour>9 && date_candle.hour<15 && filter.VWAPCROSS && (filter.HILO_INVERTSELL || (idx>2 && filter.HILO_SELL && MAFast[idx]<miBand[idx] && MAFast[idx-2]>miBand[idx-2])) && mycounters.c_down==1 && close[idx]<HILO2[idx] && body_down>pts_size && body_down<2*pts_size2 && aux_abslast>50 && open[idx-2]-close[idx-2]>50 && low[idx-1]-close[idx]>10 && open[idx]-VWAP[idx]>15 && VWAP[idx]-close[idx]>30 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir-=3;
        if (CHECK_SHORT && BACK_DIR2 && pricestats.bars_day>5 && date_candle.hour<15 && filter.VWAP_CROSS && filter.HILO_SELL && filter.tdf_color==2 && stdDev[idx]>70 && RSI[idx]<60 && RSI[idx]>30 && body_down>100 && body_down>2*candle_lo && MathAbs(close[idx]-MA200[idx])>pts_size2 && open[idx]>VWAP[idx] && VWAP[idx]-close[idx]>50) aux_dir-=2;
        if (pricestats.bars_day>5 && date_candle.hour>11 && date_candle.hour<16 && filter.VWAP_CROSS && filter.MED_DOWN && mycounters.sarsell>0 && mycounters.sarsell<6 && body_down>pts_size && body_down>3*candle_lo && candle_lo<pts_size/3 && close[idx]<low[idx-1] && high[idx-2]-VWAP[idx-2]>pts_size/2 && VWAP[idx]-close[idx]>pts_size/2 && MAFast[idx]<MA25[idx] && close[idx]<MAFast[idx] && high[idx-2]-low[idx]<pts_maxsize2) aux_dir-=3;
        if (pricestats.bars_day>5 && date_candle.hour<16 && filter.VWAP_CROSS && filter.tdf_color!=1 && VOLUME_UP && RSI[idx]>30 && RSI[idx]<55 && Force[idx]<0 && Force[idx]>-3000000 && body_down>pts_size && body_down>candle_lo && candle_hi<50 && close[idx]<low[idx-1] && high[idx-1]-low[idx]<pts_maxsize && close[idx]<VWAP[idx] && low[idx-1]>VWAP[idx-1] && MAFast[idx]<miBand[idx] && MAFast[idx-1]>miBand[idx-1] && MA200[idx]<MA200[idx-1] && MAFast[idx]-close[idx]>15 && open[idx]-MAFast[idx]>30) aux_dir-=5;
        if (pricestats.bars_day>5 && date_candle.hour<14 && date_candle.day_of_week<5 && filter.tdf_color!=1 && filter.VWAP_CROSS && filter.HILO_SELL && mycounters.sarsell>0 && mycounters.sarsell<10 && body_down>10 && candle_lo<90 && VWAP[idx]-open[idx]>30 && VWAP[idx]-close[idx]>50 && high[idx]-VWAP[idx]>15 && vwap_distance<pts_maxsize && MA200[idx]<MA200[idx-1] && high[idx]<MA200[idx] && MA100[idx]>MA50[idx] && MA50[idx]>MA25[idx]) aux_dir-=5;
        if (pricestats.bars_day<5 && filter.VWAPCROSS && candle_hi>body_down && candle_lo>body_down && candle_lo>50 && low[idx]>low[idx-1]) aux_dir=0;
        if (date_candle.hour>9 && date_candle.hour<15 && date_candle.day_of_week<5 && filter.tdf_color!=1 && !filter.VWAP_UP && !filter.MED_UP && filter.HILO_SELL && mycounters.c_down>1 && mycounters.c_down<4 && mycounters.sarsell>0 && tick_volume[idx]>35000 && Force[idx]<0 && Force[idx]>-9000000 && RSI[idx]<50 && RSI[idx]>35 && stdDev[idx]<pts_maxsize && body_down>pts_size && body_down>candle_lo && candle_lo<pts_size && low[idx-2]>VWAP[idx-2] && VWAP[idx]-close[idx]>50 && open[idx-1]-VWAP[idx-1]>50 && MA25[idx]-MAFast[idx]>30 && MAFast[idx]-close[idx]>30 && open[idx-1]-MAFast[idx-1]>30 && vwap_distance<pts_maxsize && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && pricestats.max_dayprice-high[idx]<pts_maxsize2) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<15 && date_candle.day_of_week<5 && filter.tdf_color!=1 && filter.VWAP_DOWN && filter.HILO_SELL && mycounters.c_down<3 && mycounters.sarsell<15 && RSI[idx]<55 && RSI[idx]>32 && Force[idx]>-3000000 && aux_dir>-6 && body_down>pts_size && body_down>3*candle_lo && body_down>2*candle_hi && candle_hi<90 && candle_lo<90 && idx-pricestats.vwap_idx<16 && close[idx]<VWAP[idx] && vwap_distance<pts_maxsize2 && MAFast[idx]<MA25[idx] && MA100[idx]-MA50[idx]>50 && open[idx]>MA50[idx] && MA50[idx]-close[idx]>30 && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>30 && high[idx]<MA200[idx] && high[idx-1]-low[idx]<2*pts_size2 && close[idx]>loBand[idx] && low[idx]-pricestats.min_lastdayprice>600) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_SELL && (filter.HILO_INVERTSELL || filter.SAR_INVERTSELL) && filter.tdf_color!=1 && mycounters.c_down==1 && VOLUME_UP && RSI[idx]>31 && stdDev[idx]>60 && stdDev[idx]<400 && body_down>pts_size && candle_lo<30 && body_down>2*aux_abslast && body_down>3*candle_lo && body_down>3*candle_hi && high[idx-1]-low[idx]<pts_maxsize2 && open[idx]>VWAP[idx] && close[idx]<low[idx-1] && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>30 && miBand[idx]-close[idx]>30 && low[idx]-pricestats.min_dayprice>pts_maxsize && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2) aux_dir-=3;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTSELL && mycounters.sarsell>0 && mycounters.sarsell<16 && filter.tdf_color!=1 && tick_volume[idx]>10000 && close[idx]<HILO2[idx] && body_down>35 && candle_hi<90 && candle_lo<90 && MA25[idx]-MAFast[idx]>5 && MAFast[idx-2]>MA25[idx-2] && MAFast[idx]-close[idx]>15 && miBand[idx]-close[idx]>15 && high[idx]>MAFast[idx] && high[idx]>miBand[idx] && idx-pricestats.vwap_idx>6 && idx-pricestats.vwap_idx<42 && open[idx]>VWAP[idx] && vwap_distance<pts_maxsize2 && close[idx]-pricestats.min_dayprice>pts_maxsize && MA100[idx]-MA25[idx]<550) aux_dir-=2;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTSELL && filter.tdf_color!=1 && stdDev[idx]>70 && idx-pricestats.vwap_idx>5 && RSI[idx]<55 && low[idx]<low[idx-1] && body_down>16 && body_down>candle_lo/3 && close[idx]<MAFast[idx] && MAFast[idx]<miBand[idx] && HILO2[idx]<MAFast[idx] && HILO2[idx-1]>MAFast[idx-1] && low[idx]-VWAP[idx]>150) aux_dir-=3;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_INVERTSELL && filter.tdf_color!=1 && stdDev[idx]>70 && ATR[idx]<2*pts_size2 && idx-pricestats.vwap_idx>5 && Force[idx]>-3000000 && RSI[idx]<55 && RSI[idx]>30 && low[idx]<low[idx-1] && body_down>16 && body_down>candle_lo/3 && close[idx]<MAFast[idx] && HILO2[idx]<MAFast[idx] && HILO2[idx-1]>MAFast[idx-1] && low[idx]-VWAP[idx]>pts_size2 && low[idx]-VWAP[idx]<360 && low[idx]-pricestats.min_dayprice>pts_maxsize2) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<15 && vwap_distance<pts_maxsize2 && body_down>50 && open[idx-2]-close[idx-2]>50 && candle_lo<60 && body_down>2*candle_lo && aux_abslast<10 && high[idx-1]-(MathMax(open[idx-1],close[idx-1]))>2*aux_abslast && MathMin(open[idx-1],close[idx-1])-low[idx-1]>2*aux_abslast && close[idx]<MAFast[idx] && low[idx]-loBand[idx]>50) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<16 && filter.VWAP_CROSS && filter.MED_DOWN && mycounters.c_down<4 && RSI[idx]>35 && RSI[idx]<60 && body_down>pts_size && candle_lo<50 && body_down>3*candle_lo && body_down>3*candle_hi && close[idx]<low[idx-1] && open[idx]-VWAP[idx]>10 && VWAP[idx]-close[idx]>30 && open[idx]>MA200[idx] && MA200[idx]-close[idx]>15) aux_dir-=5;
        if (date_candle.hour>9 && mycounters.c_down<3 && ATR[idx]<2*pts_size2 && stdDev[idx]>70 && RSI[idx]<50 && RSI[idx]>32 && body_down>pts_size && candle_hi<50 && candle_lo<50 && body_down>3*candle_lo && high[idx-1]>high[idx] && high[idx-1]>high[idx-2] && open[idx]>MA25[idx] && MA25[idx]-close[idx]>30 && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>15 && MA25[idx]-MAFast[idx]>15 && high[idx-3]<VWAP[idx-3] && high[idx-1]-VWAP[idx-1]>30 && VWAP[idx]-close[idx]>150) aux_dir-=3;
        if (CHECK_SHORT && date_candle.hour>9 && filter.VWAPCROSS && filter.HILO_INVERTSELL && mycounters.sarsell>0 && mycounters.sarsell<10 && close[idx]<low[idx-1] && body_down>2*aux_abslast && body_down>100 && body_down<pts_maxsize && candle_lo<50 && high[idx-1]-high[idx]>15 && high[idx-1]-high[idx-2]>15) aux_dir-=2;
        if (date_candle.hour>9 && date_candle.hour<16 && (VOLUME_UP || (date_candle.hour>11 && low[idx-2]>VWAP[idx-2])) && filter.VWAP_CROSS && mycounters.c_down<4 && stdDev[idx]>70 && RSI[idx]>20 && ATR[idx]<250 && body_down>100 && close[idx]<low[idx-1] && close[idx-1]>VWAP[idx-1] && VWAP[idx]-close[idx]>50 && open[idx-1]>MA200[idx-1] && close[idx]<MA200[idx] && close[idx]-pricestats.min_dayprice>2*pts_size2) aux_dir--;
        if (date_candle.hour>9 && date_candle.hour<16 && BACK_DIR2 && filter.tdf_color!=1 && (filter.VWAP_CROSS || open[idx-1]>VWAP[idx-1] || (high[idx-1]-open[idx]>25 && high[idx-1]-MathMax(open[idx-2],close[idx-2])>25)) && mycounters.sarsell>0 && mycounters.sarsell<12 && vwap_distance<2*pts_size2 && body_down>70 && body_down<250 && body_down>aux_abslast && body_down>3*candle_lo && body_down>3*candle_hi && close[idx]<low[idx-1] && close[idx]<low[idx-2] && close[idx]<MAFast[idx] && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && loBand[idx]-low[idx]<100 && idx-pricestats.vwap_idx<24) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<16 && date_candle.day_of_week<5 && mycounters.c_down==1 && mycounters.sarsell>1 && VOLUME_UP && filter.HILO_SELL && filter.VWAP_DOWN && filter.tdf_color!=1 && stdDev[idx]<2*pts_size2 && Force[idx]<0 && Force[idx]>-3000000 && RSI[idx]>32 && tick_volume[idx]>35000 && body_down>pts_size2 && body_down<2*pts_size2 && aux_abslast>pts_size2 && body_down>2*candle_hi && body_down>2*candle_lo && close[idx]<(open[idx-1]+close[idx-1])/2 && open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>30 && low[idx]-pricestats.min_dayprice>100) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<15 && filter.HILO_SELL && mycounters.c_down==1 && stdDev[idx]<400 && body_down>50 && candle_lo<50 && body_down>2*candle_lo && MathAbs(aux_abs-aux_abslast)<100 && aux_abslast<(close[idx-2]-open[idx-2])/2 && close[idx]<(open[idx-1]+close[idx-1])/2 && MA200[idx-1]-open[idx-1]>15 && open[idx]-MA200[idx]>15 && MA200[idx]-close[idx]>30 && idx-pricestats.vwap_idx<6) aux_dir-=15;
        if (date_candle.hour>9 && date_candle.hour<16 && filter.tdf_color!=1 && filter.HILO_SELL && filter.VWAP_CK_CROSS && (filter.MED_DOWN || filter.MIBAND_DOWN) && mycounters.sarsell>0 && mycounters.c_down>2 && Force[idx]<0 && body_down>50 && body_down>2*candle_lo && candle_lo<35 && high[idx-1]-low[idx]<pts_maxsize && RSI[idx]>30 && stdDev[idx]>90 && vwap_distance<pts_maxsize && open[idx]<VWAP[idx] && open[idx-2]>VWAP[idx-2] && VWAP[idx]-close[idx]>100 && MAFast[idx]<miBand[idx]) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<16 && aux_dir>-8 && filter.tdf_color!=1 && filter.VWAP_CROSS && filter.VWAP_DOWN && mycounters.c_down==1 && stdDev[idx]>50 && RSI[idx]>31 && Force[idx]<0 && body_down>100 && candle_lo<15 && candle_hi<100 && close[idx]<low[idx-1] && close[idx]<MA200[idx] && high[idx-1]>MA25[idx-1] && open[idx]>MA25[idx] && MA25[idx]-close[idx]>25 && VWAP[idx]-MA200[idx]>25) aux_dir-=3;
        //if (date_candle.hour>9 && date_candle.hour<17 && filter.VWAP_CROSS && filter.VWAP_DOWN && filter.MIBAND_DOWN && tick_volume[idx]>35000 && ATR[idx]<pts_maxsize && RSI[idx]<50 && RSI[idx]>25 && stdDev[idx]<pts_maxsize && body_down>100 && candle_lo<100 && body_down>candle_lo && low[idx]<low[idx-1] && open[idx-2]>VWAP[idx-2] && VWAP[idx]-close[idx]>pts_size && open[idx-2]>MAFast[idx-2] && MAFast[idx]-close[idx]>pts_size && high[idx]>MAFast[idx] && MAFast[idx-1]-MAFast[idx]>15 && MA25[idx]-MAFast[idx]>30 && (MAFast[idx-2]>MA25[idx-2] || MAFast[idx-3]>MA25[idx-3]) && MAFast[idx]<miBand[idx] && close[idx]<miBand[idx] && vwap_distance<pts_maxsize) aux_dir-=5;
        if (date_candle.hour>9 && date_candle.hour<13 && date_candle.day_of_week<5 && filter.VWAP_DOWN && tick_volume[idx]>35000 && stdDev[idx]<pts_maxsize2 && stdDev[idx]>pts_size && RSI[idx]<52 && RSI[idx]>32 && body_down>2*aux_abslast && close[idx-2]-open[idx-2]>2*aux_abslast && close[idx]<low[idx-1] && body_down>pts_size && open[idx]-MAFast[idx]>15 && MAFast[idx]-close[idx]>30 && VWAP[idx]-close[idx]>50 && high[idx-1]-VWAP[idx-1]>30 && high[idx-1]-high[idx]>30 && high[idx-1]-high[idx-2]>30 && vwap_distance<pts_maxsize) aux_dir-=5;
        if (date_candle.hour==12 && (date_candle.min>=0 && date_candle.min<30) && mycounters.c_down<3 && mycounters.sarsell>0 && filter.tdf_color!=1 && idx-pricestats.vwap_idx<32 && RSI[idx]<55 && body_down>pts_size && body_down>candle_lo && candle_hi<pts_size && candle_lo<pts_size && high[idx-1]-low[idx]<2*pts_maxsize2 && close[idx]<low[idx-1] && VWAP[idx]-close[idx]>pts_size/2 && MAFast[idx]-close[idx]>pts_size/2 && high[idx-1]-high[idx]>30 && high[idx-1]-high[idx-2]>30 && vwap_distance<pts_maxsize2 && (MAFast[idx]<MA25[idx] || MA25[idx]<MA50[idx])) aux_dir-=8;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTSELL && VOLUME_UP && mycounters.sarsell>0 && stdDev[idx]<150 && idx-pricestats.vwap_idx>12 && body_down>pts_size && body_down<400 && body_down>2*candle_lo && (low[idx-1]-close[idx]>35 || low[idx-2]-close[idx]>35) && MAFast[idx]<miBand[idx] && close[idx]<MAFast[idx] && close[idx-1]>MAFast[idx-1]) aux_dir-=7;
        //if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTSELL && body_down>100 && body_down>2*candle_lo && high[idx-2]-low[idx]<pts_maxsize2 && open[idx-1]-MA200[idx-1]>50 && MA200[idx]-close[idx]>50 && close[idx]<MAFast[idx]) aux_dir-=2;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTSELL && body_down>50 && body_down>candle_lo && open[idx-1]-MA200[idx-1]>50 && MA200[idx]-close[idx]>50 && close[idx]<MAFast[idx]) aux_dir-=2;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTSELL && filter.SAR_INVERTSELL && tick_volume[idx]>35000 && body_down>80 && candle_lo<50 && body_down>2*candle_lo && high[idx-2]-low[idx]<pts_maxsize2 && close[idx]<low[idx-1] && close[idx]>loBand[idx] && low[idx]-pricestats.min_dayprice>330 && close[idx]<MAFast[idx] && low[idx]-VWAP[idx]>100 && vwap_distance<pts_maxsize) aux_dir--;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.HILO_INVERTSELL && filter.SAR_INVERTSELL && tick_volume[idx]>35000 && body_down>80 && candle_lo<50 && body_down>2*candle_lo && high[idx-2]-low[idx]<pts_maxsize2 && close[idx]<low[idx-1] && close[idx]<loBand[idx] && low[idx]-pricestats.min_dayprice>330 && MAFast[idx]<miBand[idx] && MAFast[idx-1]>miBand[idx-1] && low[idx]-VWAP[idx]>100 && vwap_distance<pts_maxsize) aux_dir--;
        if (date_candle.hour>11 && date_candle.hour<16 && filter.VWAP_CROSS && MFI[idx]>10 && RSI[idx]>28 && body_down>pts_size && candle_lo<pts_size && VWAP[idx]-close[idx]>pts_size/2 && close[idx]<MAFast[idx] && MAFast[idx]<MA25[idx] && (MAFast[idx-1]>MA25[idx-1] || MAFast[idx-2]>MA25[idx-2]) && MAFast[idx]<MA200[idx] && MAFast[idx-1]>MA200[idx-1]) aux_dir-=5;
        if (date_candle.hour>12 && ((type==0 && (mycounters.c_down>1 || filter.MED_DOWN)) || (type==1 && date_candle.day_of_week<5 && filter.tdf_color!=1 && Force[idx]>-3000000 && date_candle.hour<17 && body_down<2*pts_size2 && candle_lo<body_down && mycounters.c_down<3 && low[idx]-pricestats.min_dayprice>pts_maxsize)) && filter.HILO_SELL && filter.NO_VWAPCROSS && VOLUME_UP && stdDev[idx]>90 && idx-pricestats.vwap_idx>8 && Force[idx]<0 && body_down>30 && candle_lo<90 && candle_hi<90 && low[idx]>VWAP[idx] && vwap_distance<pts_maxsize2 && RSI[idx]<55 && miBand[idx]-MAFast[idx]>3 && MAFast[idx-2]>miBand[idx-2] && MAFast[idx]<MA25[idx] && MAFast[idx-2]>MA25[idx-2] && close[idx]<MAFast[idx] && close[idx]<MA25[idx]) aux_dir-=8;
        if (date_candle.hour>13 && CHECK_SHORT && filter.HILO_INVERTSELL && mycounters.c_down==1 && body_down>100 && idx-pricestats.vwap_idx>6 && close[idx]<HILO2[idx] && MAFast[idx]-close[idx]>30 && high[idx]-MAFast[idx]>30 && close[idx]<low[idx-1] && close[idx]-pricestats.min_dayprice>pts_maxsize2) aux_dir-=5;
        if (date_candle.hour==16 && filter.MIBAND_DOWN && filter.HILO_SELL && filter.tdf_color==2 && ATR[idx]<200 && close[idx]<HILO2[idx] && close[idx]<low[idx-1] && high[idx]<MAFast[idx] && close[idx]-VWAP[idx]>pts_maxsize) aux_dir=-12;
        if (type==1 && pricestats.bars_day<4 && filter.VWAPCROSS && filter.MIBAND_DOWN && mycounters.c_down==2 && stdDev[idx]<pts_maxsize && VWAP[idx]-close[idx]>50 && VWAP[pricestats.first_bar]-VWAP[idx]>20 && high[pricestats.first_bar]-low[idx]<450 && body_down>90 && aux_abslast>50 && candle_hi<50 && candle_lo<50 && high[idx-1]-open[idx-1]<50 && body_down>3*candle_hi && body_down>3*candle_lo && close[idx]<low[idx-1]&& (VOLUME_UP || aux_abs>aux_abslast)) aux_dir-=3;
        if (type==1 && date_candle.hour>10 && date_candle.hour<13 && filter.NO_VWAPCROSS && mycounters.sarsell>7 && mycounters.c_down>1 && aux_dir>-12 && aux_dir<-5 && Force[idx]<-6000000 && RSI[idx]<32 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize && high[idx]<VWAP[idx] && low[idx]-pricestats.min_dayprice<30) aux_dir+=5;
        if (type==1 && date_candle.hour>9 && date_candle.hour<15 && filter.HILO_SELL && mycounters.c_down==1 && RSI[idx]<55 && RSI[idx]>35 && high[idx-1]-low[idx-2]>2*pts_size2 && body_down>30 && high[idx-1]-close[idx-1]>100 && open[idx-1]-low[idx-1]<30 && high[idx-1]-high[idx]>50 && open[idx]>VWAP[idx] && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && (MAFast[idx]<miBand[idx] || MAFast[idx]<MASlow[idx])) aux_dir-=8;
        if (type==1 && date_candle.hour>9 && filter.HILO_SELL && filter.VWAPCROSS && filter.tdf_color!=1 && body_down>70 && body_down>2*candle_lo && high[idx-1]-low[idx]<400 && close[idx]<low[idx-1] && high[idx-1]-high[idx]>10 && high[idx-1]-high[idx-2]>10 && VWAP[idx]-close[idx]>50 && VWAP[idx-2]-open[idx-2]>40 && open[idx]>MAFast[idx] && close[idx]<MAFast[idx]) aux_dir-=5;
        if (type==1 && date_candle.hour>11 && date_candle.hour<15 && filter.HILO_SELL && filter.VWAPCROSS && mycounters.c_down==1 && filter.tdf_color!=1 && stdDev[idx]<200 && Force[idx]<0 && Force[idx]>-3000000 && RSI[idx]<50 && RSI[idx]>35 && body_down>100 && candle_lo<80 && body_down>2*candle_lo && aux_abs<250 && aux_abslast>10 && high[idx-1]-low[idx]<pts_maxsize && close[idx]<low[idx-2] && close[idx]<MAFast[idx] && open[idx]-VWAP[idx]>10 && VWAP[idx]-close[idx]>50 && MathMax(open[idx-1],close[idx-1])-VWAP[idx-1]>30) aux_dir-=5;
        if (type==1 && filter.HILO_SELL && filter.MIBAND_DOWN && !filter.VWAP_UP && date_candle.hour>9 && date_candle.hour<16 && mycounters.sarsell>0 && RSI[idx]<55 && ATR_auxper>80 && vwap_distance<pts_maxsize && MAFast[idx]<MASlow[idx] && upBand[idx]-high[idx]<50 && high[idx]-loBand[idx-1]>pts_maxsize && high[idx-1]<VWAP[idx-1] && close[idx]<VWAP[idx]) aux_dir-=8;
        if (date_candle.hour>12 && date_candle.hour<16 && mycounters.c_down<3 && tick_volume[idx]>35000 && body_down>pts_size && candle_lo<35 && body_down>3*candle_lo && close[idx]<low[idx-1] && ATR[idx]<2*pts_size2 && stdDev[idx]<150 && stdDev[idx]>50 && open[idx]>miBand[idx] && close[idx]<miBand[idx] && open[idx]-MAFast[idx]>25 && MAFast[idx]-close[idx]>50 && MathMax(open[idx-1],close[idx-1])>MAFast[idx-1] && MathMin(open[idx-1],close[idx-1])<MAFast[idx-1] && vwap_distance<pts_maxsize2 && low[idx]>VWAP[idx] && (filter.MIBAND_DOWN || MA200[idx]<=MA200[idx-1])) aux_dir-=5;
        if (BACK_DIR1 && filter.VWAP_DOWN && filter.NO_VWAPCROSS && !filter.MED_UP && date_candle.hour>9 && date_candle.hour<15 && filter.tdf_color!=1 && filter.HILO_INVERTSELL && filter.SAR_INVERTSELL && mycounters.c_down<5 && body_down>15 && candle_lo<50 && high[idx-1]-low[idx]<pts_maxsize && candle_lo<3*body_down && ATR[idx]<200 && Force[idx]<0 && Force[idx]>-3000000 && RSI[idx]<55 && RSI[idx]>35 && high[idx]<VWAP[idx] && MAFast[idx]<MASlow[idx] && MAFast[idx-1]<MASlow[idx-1] && close[idx]<MAFast[idx] && close[idx]<HILO2[idx] && high[idx]<MA200[idx] && upBand[idx]-loBand[idx]<pts_maxsize2 && idx-pricestats.vwap_lastidx<48 && MathAbs(stdDev[idx]-stdDev[idx-1])>5) aux_dir--;
        if (idx-pricestats.vwap_idx<20) {
           if (MAFast[idx]<miBand[idx] && MAFast[idx-2]>miBand[idx-2]) aux_dir-=3;
        }

        if (type==1) {
           // Prevent open position
           if (body_up>10) aux_dir+=2;
           //if (body_up>50 && candle_hi>body_up) aux_dir+=1;
           if (body_up>100 && mycounters.c_up==1 && low[idx]-low[idx-1]>50 && low[idx-2]-low[idx-1]>50 && body_up>2*candle_hi) aux_dir++;
           if (body_up>100 && candle_hi<30 && body_up>2*candle_hi && body_up>2*candle_lo) aux_dir++;
           if (filter.VWAP_CROSS && mycounters.c_down>1 && aux_dir<-1 && open[idx]>close[idx-1] && open[idx]<VWAP[idx]) aux_dir++;
           if (aux_abs<aux_abslast/3 && candle_lo>2*aux_abs) aux_dir++;
           if (aux_dir<0 && RSI[idx]>45 && pricestats.ATR_per>80) aux_dir++;
           if (aux_dir>0 && RSI[idx]>45 && pricestats.ATR_per>75 && MAFast[idx]>MASlow[idx] && MAFast[idx-1]>MASlow[idx-1]) aux_dir++;
           if (aux_dir<0 && pricestats.bars_day<4 && high[idx-1]-low[idx]>pts_maxsize && candle_lo>30 && low[idx]>MA200[idx] && VWAP[idx]-MA200[idx]>150) aux_dir++;
           if (high[idx-1]-low[idx]>400 && date_candle.hour>11 && filter.VWAP_CROSS && stdDev[idx]<stdDev[idx-1] && aux_dir>-15 && body_down>250 && low[idx]-loBand[idx]<30 && upBand[idx-2]-high[idx-2]<30) aux_dir+=5;
           if (high[idx-1]-low[idx]>pts_maxsize && filter.VWAP_CROSS && date_candle.hour<11 && aux_dir>-8 && body_down>200 && candle_lo>30 && low[idx]-loBand[idx]<30 && close[idx]-loBand[idx]>50) aux_dir++;
           //if (mycounters.sarsell>6 && aux_dir<-2 && candle_lo>10 && RSI[idx]<29 && high[idx-mycounters.sarsell]-low[idx]>600 && low[idx]<loBand[idx] && open[idx]>MA200[idx] && low[idx]-MA200[idx]<100 && close[idx]>MA200[idx]) aux_dir+=2;
           if (date_candle.hour>11 && mycounters.c_down>1 && filter.NO_VWAPCROSS && aux_dir>-10 && stdDev[idx]<150 && MathAbs(stdDev[idx]-stdDev[idx-1])<9 && close[idx]<HILO2[idx] && (RSI[idx]<30 || idx-pricestats.vwap_idx>32) && high[idx]<VWAP[idx] && open[pricestats.first_bar]-low[idx]>3*pts_maxsize2) aux_dir++;
           if (date_candle.hour>11 && date_candle.hour<15 && mycounters.c_down>2 && aux_dir<-3 && stdDev[idx]<120 && candle_lo>30 && candle_lo>2*candle_hi && idx>idx-pricestats.first_bar+3 && high[idx-mycounters.c_down]-low[idx]>250 && VWAP[idx-pricestats.first_bar+3]-VWAP[idx]>pts_maxsize2 && high[idx]<VWAP[idx] && low[idx]-loBand[idx]<50 && upBand[idx-mycounters.c_down]-high[idx-mycounters.c_down]<50) aux_dir+=3;
           if (filter.VWAPCROSS && body_down>250 && high[idx-2]-low[idx]>250 && MA200[idx]-low[idx]>pts_maxsize2 && candle_lo>15) aux_dir=0;
           if (pricestats.bars_day<4 && filter.VWAPCROSS && RSI[idx]<20 && Force[idx]<-6000000 && candle_lo>aux_abs/2 && (candle_hi>30 || candle_lo>30)) aux_dir+=2;
           if (pricestats.bars_day<5 && close[idx]<VWAP[idx] && high[idx-1]-low[idx]>600 && candle_lo>10) aux_dir+=2;
           //if (filter.VWAP_UP && Force[idx]>0 && body_up>50 && candle_lo>20 && candle_hi>20) aux_dir+=1;
           if (filter.SAR_INVERTBUY) aux_dir+=5;
           if (body_down<candle_lo && candle_lo>pts_size) aux_dir+=2;
           if (date_candle.hour>12 && mycounters.c_down>2 && filter.tdf_color!=2 && filter.VWAP_CROSS && !filter.VWAP_DOWN && aux_dir<-5 && aux_dir>-15 && RSI[idx]<40 && high[idx-mycounters.c_down]-low[idx]>2*pts_size2) aux_dir+=5;
           if (date_candle.hour>12 && mycounters.c_down>2 && mycounters.sarbuy>0 && filter.tdf_color!=2 && filter.VWAPCROSS && stdDev[idx]<120 && aux_dir<0 && RSI[idx]<39 && body_down<aux_abslast/1.5) aux_dir++;
           if (date_candle.hour>12 && mycounters.sarsell>5 && aux_dir<-5 && aux_dir>-12 && body_down<150 && stdDev[idx]<pts_size && tick_volume[idx]<35000 && open[idx]<VWAP[idx] && low[idx]>MA200[idx] && candle_lo>20 && pricestats.max_dayprice-low[idx]>pts_maxsize2) aux_dir+=5;
           if (date_candle.hour>12 && mycounters.c_down==1 && filter.tdf_color!=2 && filter.NO_VWAPCROSS && aux_dir<-3 && aux_dir>-12 && body_down<150 && stdDev[idx]<pts_size && tick_volume[idx]<30000 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && VWAP[idx]-MA200[idx]>pts_size2 && VWAP[idx]-open[idx]>15 && candle_lo>15 && pricestats.max_dayprice-low[idx]>700) aux_dir+=3;
           if (date_candle.hour>14 && idx-pricestats.vwap_idx>24) aux_dir+=1;
           if (date_candle.hour>14 && filter.NO_VWAPCROSS && mycounters.c_down>2 && mycounters.sarsell>10 && RSI[idx]<32 && high[idx]<VWAP[idx] && candle_lo>10 && idx-pricestats.vwap_idx>12 && VWAP[pricestats.vwap_lastidx]-VWAP[idx]>100) aux_dir+=3;
           if (date_candle.hour>10 && mycounters.c_down>2 && mycounters.sarsell>5 && candle_lo>30 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && high[idx]<VWAP[idx] && high[idx]<MAFast[idx] && low[idx]<loBand[idx]) aux_dir++;
           if (date_candle.hour>10 && mycounters.c_down>1 && mycounters.sarsell>5 && filter.NO_VWAPCROSS && aux_dir<-5 && aux_dir>-15 && RSI[idx]<30 && candle_lo>15 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && VWAP[idx]-high[idx]>pts_size2 && high[idx]<MA25[idx] && close[idx]<loBand[idx] && low[idx]-pricestats.min_dayprice<100) aux_dir+=5;
           if (date_candle.hour>10 && mycounters.sarsell>10 && low[idx]-low[idx-1]>30 && body_up>30 && low[idx-1]-loBand[idx-1]<30 && miBand[idx]-MAFast[idx]<30) aux_dir+=3;
           if (date_candle.hour>10 && mycounters.c_down>1 && aux_dir<0 && idx>mycounters.c_down && high[idx-mycounters.c_down]-low[idx]>2*pts_maxsize2) aux_dir++;
           if (date_candle.hour<10 && filter.VWAP_CK_CROSS && aux_dir<-5 && low[idx]<MA200[idx] && close[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1]) aux_dir+=8;
           if (filter.VWAPCROSS && (RSI[idx]<30 || close[idx]-open[idx-1]>30) && body_down<aux_abslast && close[idx]>open[idx-1] && close[idx-1]-open[idx-1]>100) aux_dir+=2;
           if (!filter.VWAP_DOWN && date_candle.hour>16 && filter.tdf_color!=2 && candle_lo>10) aux_dir+=3;
           if (low[idx-1]>VWAP[idx-1] && open[idx]-low[idx]>pts_maxsize && candle_lo>35) aux_dir+=5;
           if (!filter.VWAPCROSS && !VOLUME_UP && date_candle.hour<13 && candle_lo>25 && RSI[idx]<32 && high[idx]<VWAP[idx] && high[idx-3]-low[idx]>pts_maxsize2 && low[idx]-loBand[idx]<60) aux_dir+=2;
           if (filter.VWAPCROSS && aux_dir<-5 && body_down<aux_abslast && candle_lo>15 && VWAP[idx]-close[idx]<100 && low[idx-1]<VWAP[idx-1] && close[idx-1]>VWAP[idx-1] && MA200[idx]>MA200[idx-1] && low[idx]>MA200[idx]) aux_dir+=6;
           if (filter.VWAP_CROSS && mycounters.sarbuy>2 && aux_dir<-2 && aux_dir>-12 && high[idx-1]-low[idx]>2*pts_size2 && low[idx-1]>VWAP[idx-1] && VWAP[idx-1]-VWAP[idx-3]>50 && VWAP[idx]-low[idx]>50 && VWAP[idx]-close[idx]<10) aux_dir+=2;
           if (date_candle.hour<10 && filter.VWAPCROSS && mycounters.c_down>2 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && close[idx-1]-low[idx-1]>body_down && (candle_hi>50 || candle_lo>50)) aux_dir=0;
           if (date_candle.hour<11 && filter.NO_VWAP_CROSS && mycounters.sarsell>5 && apftrade.trade_ct<1 && mycounters.c_down>2 && aux_dir<-2 && aux_dir>-12 && Force[idx]<-5000000 && RSI[idx]<25 && high[idx]<VWAP[idx] && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && (candle_hi>90 || candle_lo>90)) aux_dir+=2;
           if (date_candle.hour>9 && date_candle.hour<14 && filter.HILO_SELL && filter.VWAP_DOWN && filter.tdf_color==2 && mycounters.c_down==1 && Force[idx]>-5000000 && RSI[idx]>32 && RSI[idx]<45 && high[idx-2]<VWAP[idx-2] && VWAP[idx-1]-high[idx-1]<50 && open[idx]<VWAP[idx] && VWAP[idx]-close[idx]>pts_size && close[idx]<low[idx-1] && body_down>pts_size && candle_hi<90 && candle_lo<90 && body_down>2*candle_lo && high[idx]<MA200[idx] && MA100[idx]-MA50[idx]>30 && MA50[idx]-MA25[idx]>30) aux_dir-=5;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.NO_VWAPCROSS && mycounters.c_down>2 && mycounters.sarsell>6 && RSI[idx]<25 && high[idx]<VWAP[idx] && idx-pricestats.vwap_idx>10 && VWAP[idx]-high[idx]>pts_maxsize2 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2) aux_dir++;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.NO_VWAPCROSS && apftrade.trade_ct<1 && Force[idx]<-3000000 && RSI[idx]<35 && pricestats.max_dayprice-low[idx]>1200 && idx-pricestats.vwap_idx>24 && high[idx]<VWAP[idx] && vwap_distance>pts_maxsize2) aux_dir++;
           if (date_candle.hour>12 && stdDev[idx]<pts_size && close[idx]<loBand[idx] && candle_lo>2*candle_hi && candle_lo>50 && RSI[idx]<34) aux_dir+=4;
           if (date_candle.hour>12 && mycounters.c_down>2 && high[idx-mycounters.c_down]-low[idx]>510 && RSI[idx]<30 && candle_lo>50 && candle_lo>candle_hi && candle_lo>body_down/2 && VWAP[idx-1]>VWAP[idx-2] && (filter.HILO_BUY || MA200[idx]<low[idx])) aux_dir+=5;
           if (date_candle.hour>12 && filter.VWAPCROSS && !filter.VWAP_DOWN && candle_lo>5 && VWAP[idx-1]-low[idx-1]>10 && close[idx-1]>VWAP[idx-1]) aux_dir++;
           if (date_candle.hour>14 && filter.VWAPCROSS && !filter.VWAP_DOWN && stdDev[idx]<90 && low[idx-1]<VWAP[idx-1] && close[idx-1]>VWAP[idx-1] && aux_dir<0 && aux_dir>-12 && (candle_hi>35 || candle_lo>35)) aux_dir++;
           if (date_candle.hour>14 && filter.VWAPCROSS && mycounters.sarbuy>1 && aux_dir<1 && close[idx]-open[idx-1]>30 && low[idx]>HILO2[idx]) aux_dir++;
           if (date_candle.hour>14 && mycounters.c_down>2 && (mycounters.sarbuy>1 || stdDev[idx]<stdDev[idx-1]) && stdDev[idx]<130 && candle_lo>3 && open[idx]<VWAP[idx] && high[idx-mycounters.c_down]-low[idx]>2*pts_size2 && low[idx]>MA200[idx] && pricestats.max_dayprice-low[idx]>pts_maxsize) aux_dir++;
           if (date_candle.hour>14 && candle_lo>50 && candle_lo>3*candle_hi && candle_lo>aux_abs/2 && low[idx]<loBand[idx] && MA200[idx]>MA200[idx-1] && MA200[idx-1]>MA200[idx-2]) aux_dir+=3;
           if (date_candle.hour>15 && filter.VWAP_CK_CROSS && candle_lo>2*candle_hi && aux_dir<-1 && aux_dir>-12 && RSI[idx]<29 && tick_volume[idx]<20000 && candle_lo>30 && VWAP[idx]-close[idx]>100 && VWAP[idx]-MA200[idx]>2*(VWAP[idx]-close[idx]) && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-loBand[idx]<100 && pricestats.max_dayprice-low[idx]>550) aux_dir++;
           if (date_candle.hour>16 && candle_lo>10 && stdDev[idx]<pts_size && low[idx]-loBand[idx]<30 && upBand[idx-1]-high[idx-1]<30 && MA200[idx]>MA200[idx-1] && MA200[idx-1]>MA200[idx-2] && low[idx]>MA200[idx]) aux_dir+=5;
           if (date_candle.hour>16 && date_candle.min>30 && stdDev[idx]<pts_size && candle_lo>30 && open[idx]<VWAP[idx]) aux_dir+=2;
           if (filter.tdf_color!=2) {
              if (filter.VWAP_CROSS) {
                 if (!filter.VWAP_DOWN && close[idx-1]>VWAP[idx-1] && candle_lo>pts_size) aux_dir+=5;
                 if (filter.VWAPCROSS && candle_lo>30 && candle_lo>candle_hi && low[idx]<loBand[idx] && close[idx]>loBand[idx]) aux_dir+=2;
                 if (RSI[idx]<35 && low[idx-2]>VWAP[idx-2] && VWAP[idx-1]-VWAP[idx-3]>10 && low[idx]<loBand[idx]) aux_dir+=4;
              }
           }
           if (filter.VWAPCROSS && aux_dir<-2 && aux_dir>-10 && body_up>pts_size && body_up>2*candle_hi && close[idx]>(open[idx-1]+close[idx-1])/2) aux_dir++;
        }
     }
     if (type==1 && aux_abs<400 && pricestats.bars_day>3) {
        if (aux_abs<2*pts_size2) {
           if (date_candle.hour<12 && VOLUME_UP && aux_abs<250 && aux_abs>aux_abslast && aux_abslast>30) {
              if (filter.VWAP_UP && filter.HILO_BUY && aux_dir>1 && RSI[idx]<72 && Force[idx]<3000000) {
                if (MAFast[idx]>VWAP[idx] && open[idx]>VWAP[idx] && low[idx]-VWAP[idx]<50 && open[idx]>MAFast[idx] && MAFast[idx]-low[idx]>15 && close[idx]-MAFast[idx]>50)
                   if (body_up>50 && candle_lo>100 && candle_lo>3*candle_hi && candle_hi<30 && high[idx-1]-high[idx]<30)
                      aux_dir+=7;
              }
              if (filter.VWAP_DOWN && filter.HILO_SELL && aux_dir<-1 && RSI[idx]>28 && Force[idx]>-3000000) {
                if (MAFast[idx]<VWAP[idx] && open[idx]<VWAP[idx] && VWAP[idx]-high[idx]<50 && open[idx]<MAFast[idx] && high[idx]-MAFast[idx]>10 && MAFast[idx]-close[idx]>50)
                   if (body_down>50 && candle_hi>100 && candle_hi>3*candle_lo && candle_lo<30 && low[idx]-low[idx-1]<30)
                      aux_dir-=7;
              }
           }
           if (date_candle.hour==10 && filter.NO_VWAPCROSS && tick_volume[idx]>50000 && aux_abslast>50 && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2) {
              if (mycounters.c_up==1 && body_up>pts_size2 && candle_hi<50 && close[idx]>(open[idx-1]+close[idx-1])/2 && MAFast[idx]-high[idx]>50 && close[idx-1]<loBand[idx-1]) aux_dir+=15;
              else if (mycounters.c_down==1 && body_down>pts_size2 && candle_lo<50 && close[idx]<(open[idx-1]+close[idx-1])/2 && low[idx]-MAFast[idx]>50 && close[idx-1]>upBand[idx-1]) aux_dir-=15;
           }
        }
        if (filter.VWAP_CROSS) {
           if (filter.VWAPCROSS && aux_abs<2*pts_size2) {
              if (filter.VWAP_UP && filter.tdf_color!=2 && mycounters.c_up==1 && close[idx-1]>VWAP[idx-1] && VWAP[idx]-low[idx]>10 && open[idx]-VWAP[idx]>10 && body_up>pts_size && aux_abslast>pts_maxsize && body_up>3*candle_hi && aux_abs>aux_abslast/2) aux_dir+=14;
              else if (filter.VWAP_DOWN && filter.tdf_color!=1 && mycounters.c_down==1 && close[idx-1]<VWAP[idx-1] && high[idx]-VWAP[idx]>10 && VWAP[idx]-open[idx]>10 && body_down>pts_size && aux_abslast>pts_maxsize && body_down>3*candle_lo && aux_abs>aux_abslast/2) aux_dir-=14;
           }
           if (filter.HILO_INVERTBUY && MA200[idx]>MA200[idx-1] && open[idx]>MA200[idx] && low[idx]-MA200[idx]<150) {
              if (body_up>100 && candle_hi<50 && open[idx-1]-close[idx-1]>30 && open[idx-2]-close[idx-2]>5 && close[idx]>high[idx-2])  aux_dir+=8;
           }
           else if (filter.HILO_INVERTSELL && MA200[idx]<MA200[idx-1] && open[idx]<MA200[idx] && MA200[idx]-high[idx]<150) {
              if (body_down>100 && candle_lo<50 && close[idx-1]-open[idx-1]>30 && close[idx-2]-open[idx-2]>5 && close[idx]<low[idx-2])  aux_dir-=8;
           }
        }
     }

     if (date_candle.hour>9 && date_candle.hour<17 && tick_volume[idx]>15000) {
        if (date_candle.hour>10 && date_candle.hour<16 && tick_volume[idx]>30000 && aux_abs>pts_size && MathAbs(stdDev[idx]-stdDev[idx-1])>20) {
           if (Force[idx]<-500 && RSI[idx]<58 && MathMax(open[idx-1],close[idx-1])>VWAP[idx-1] && VWAP[idx]-VWAP[idx-1]<27 && body_down>pts_size && candle_lo<90 && body_down>candle_lo && close[idx-1]-VWAP[idx-1]>pts_size && open[idx]-MAFast[idx]>15 && MAFast[idx]-close[idx]>30 && low[idx]-pricestats.min_dayprice>pts_maxsize2) {
              if ((mycounters.c_down>1 && aux_abslast>pts_size) || (filter.VWAP_CROSS && close[idx]<VWAP[idx] && MAFast[idx]-MA25[idx]<25)) aux_dir-=5;
              if (aux_dir<1 && filter.VWAP_CROSS && vwap_distance<pts_maxsize && ATR[idx]<450 && Force[idx]<-900 && Force[idx]>-3000000 && RSI[idx]<50 && RSI[idx]>29 && stdDev[idx]>60 && stdDev[idx]<pts_maxsize && date_candle.day_of_week<5 && body_down>2*candle_lo && close[idx]<VWAP[idx] && MAFast[idx]-MA25[idx]<25 && open[idx]>MA25[idx] && close[idx]<MA25[idx] && high[idx-1]-low[idx]<pts_maxsize) {
                 if (filter.tdf_color!=1) aux_dir-=5;
                 if (type==1 && candle_lo<50 && open[idx]>VWAP[idx]) aux_dir-=5;
              }
           }
        }
        if (type==1 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx<16 && vwap_distance<pts_maxsize2 && stdDev[idx-1]>200) {
           if (mycounters.c_up<3 && aux_dir<8 && aux_dir>-8 && RSI[idx-1]<38 && candle_hi<100 && low[idx]-low[idx-1]>50 && low[idx-2]-low[idx-1]>50 && pricestats.max_dayprice-high[idx]>pts_maxsize2) {
              if (high[idx-1]-MathMax(open[idx-1],close[idx-1])<50 && MathMin(open[idx-1],close[idx-1])-low[idx-1]>3*aux_abslast)
                 if (VWAP[idx]-high[idx]>pts_size2 && MA25[idx]-high[idx]>50 && MA200[idx]>MA200[idx-1] && MA200[idx-1]>MA200[idx-2] && close[idx-2]>MA200[idx-2] && low[idx-1]-MA200[idx-1]<50 && close[idx]-MA200[idx]>150)
                    aux_dir+=12;
           }
           else if (mycounters.c_down<3 && aux_dir>-8 && aux_dir<8 && RSI[idx-1]>62 && candle_lo<100 && high[idx-1]-high[idx]>50 && high[idx-1]-high[idx-2]>50 && low[idx]-pricestats.min_dayprice>pts_maxsize2) {
              if (MathMin(open[idx-1],close[idx-1])-low[idx-1]<50 && high[idx-1]-MathMax(open[idx-1],close[idx-1])>3*aux_abslast)
                 if (low[idx]-VWAP[idx]>pts_size2 && low[idx]-MA25[idx]>50 && MA200[idx]<MA200[idx-1] && MA200[idx-1]<MA200[idx-2] && close[idx-2]<MA200[idx-2] && MA200[idx-1]-high[idx-1]<50 && MA200[idx]-close[idx]>150)
                    aux_dir-=12;
           }
        }
        if (date_candle.hour>12 && date_candle.hour<16 && aux_abs>pts_size2 && aux_abslast>30 && stdDev[idx]<2*pts_size2 && ATR[idx]>pts_size2 && MathAbs(MAFast[idx]-MA25[idx])<pts_size && VOLUME_UP && idx-pricestats.vwap_idx<40 && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2) {
           if ((filter.SAR_INVERTBUY || filter.HILO_INVERTBUY) && !filter.MED_DOWN && filter.tdf_color!=2 && mycounters.c_up<3 && body_up>pts_size && body_up>aux_abslast && candle_hi<body_up && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>30 && pricestats.max_dayprice-high[idx]>pts_maxsize2) {
              if (idx-pricestats.vwap_idx>32 && VWAP[idx]-high[idx]>pts_size2 && MAFast[idx]<MA25[idx]);
              else if (RSI[idx]>48 && RSI[idx]<65 && RSI[idx]-RSI[idx-1]>14 && high[idx-1]<VWAP[idx-1] && close[idx]>high[idx-1] && close[idx]>high[idx-3] && close[idx-1]<MAFast[idx-1] && MAFast[idx]-open[idx]>15 && close[idx]>MAFast[idx] && open[idx]<MA25[idx] && close[idx]>MA25[idx] && low[idx]<MAFast[idx] && open[idx]<miBand[idx] && close[idx]>miBand[idx]) {
                 aux_dir+=11;
                 set_force=1;
              }
           }
           else if ((filter.SAR_INVERTSELL || filter.HILO_INVERTSELL) && !filter.MED_UP && filter.tdf_color!=1 && mycounters.c_down<3 && body_down>pts_size && body_down>aux_abslast && candle_lo<body_down && high[idx-1]-low[idx]<pts_maxsize && high[idx-1]-high[idx]>30 && high[idx-1]-high[idx-2]>30 && low[idx]-pricestats.min_dayprice>pts_maxsize2) {
              if (filter.VWAP_UP && idx-pricestats.vwap_idx>32 && low[idx]-VWAP[idx]>pts_size2 && MAFast[idx]>MA25[idx]);
              else if (RSI[idx]<52 && RSI[idx]>35 && RSI[idx-1]-RSI[idx]>14 && low[idx-1]>VWAP[idx-1] && close[idx]<low[idx-1] && close[idx]<low[idx-3] && close[idx-1]>MAFast[idx-1] && open[idx]-MAFast[idx]>15 && close[idx]<MAFast[idx] && open[idx]>MA25[idx] && close[idx]<MA25[idx] && high[idx]>MAFast[idx] && open[idx]>miBand[idx] && close[idx]<miBand[idx]) {
                 aux_dir-=11;
                 set_force=1;
              }
           }
        }
     }

     // Mandatory prevent position
     if (aux_dir>0) {
        if ((filter.VWAP_DOWN || filter.HILO_SELL)) {
           if (filter.HILO_SELL && close[idx]<HILO2[idx]) aux_dir--;
           if ((filter.VWAP_DOWN || filter.tdf_color!=1) && filter.NO_VWAPCROSS && mycounters.c_up<2 && idx-pricestats.vwap_idx>32 && high[idx-2]>high[idx-1] && VWAP[idx]-high[idx]>2*pts_size2) aux_dir=0;
           if ((date_candle.hour>11 || aux_dir<8) && filter.VWAP_DOWN && RSI[idx-1]<40 && candle_hi>50 && high[idx-1]<VWAP[idx-1] && VWAP[idx]-high[idx]<15 && high[idx]-VWAP[idx]<30 && VWAP[idx]-close[idx]>50) aux_dir=0;
           if (type==1 && date_candle.hour>15 && filter.VWAP_CROSS && candle_hi>2*candle_lo && high[idx-1]<VWAP[idx-1] && VWAP[idx]-open[idx]>close[idx]-VWAP[idx] && candle_hi>100 && stdDev[idx]<100) aux_dir=0;
           if (type==1 && aux_dir>3 && filter.VWAP_CROSS && filter.HILO_SELL && (filter.VWAP_DOWN || Force[idx]<0) && mycounters.sarsell>0 && candle_hi>body_up/2 && high[idx-1]<VWAP[idx-1] && close[idx]-VWAP[idx]<10 && close[idx]<miBand[idx] && MAFast[idx]<miBand[idx]) aux_dir-=2;
        }
        if (type==1 && date_candle.hour>9 && date_candle.hour<13 && filter.VWAP_CROSS && MA200[idx]<MA200[idx-1] && MA200[idx-1]<MA200[idx-2] && MA200[idx]-high[idx]>aux_abs && MAFast[idx]<MA25[idx] && high[idx]-low[idx-1]>pts_size2 && candle_hi>3 && candle_lo>pts_size/3 && (candle_hi>pts_size/2 || candle_lo>pts_size/2)) aux_dir=0;
        if (type==1 && date_candle.hour<13 && (date_candle.hour>10 || (date_candle.hour==10 && date_candle.min>30)) && mycounters.c_up>1 && (mycounters.sarsell>1 || filter.HILO_SELL) && ATR[idx]>2*pts_size2 && open[idx]>VWAP[idx] && high[idx-2]<VWAP[idx-2] && high[idx]-low[idx-2]>pts_maxsize2 && low[idx]>MA25[idx] && (candle_hi>50 || candle_lo>50)) aux_dir=0; 
        if (type==1 && !set_force) {
           if ((filter.VWAP_CROSS || filter.VWAP_LASTCROSS || filter.MIBAND_DOWN || filter.HILO_SELL) && aux_dir<9 && body_down>pts_size/3 && candle_hi>body_down/2 && MAFast[idx]<MA25[idx] && MA50[idx]-MA25[idx]>pts_size && MA100[idx]-MA50[idx]>pts_size) aux_dir=0;
           if (MFI[idx]>93 && RSI[idx]>68 && aux_dir>3 && (filter.VWAP_DOWN || stdDev[idx]<pts_size2 || VWAP[idx]<MA200[idx]) && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2 && high[idx]-pricestats.min_dayprice>pts_maxsize2) aux_dir-=3;
           if (MFI[idx]>84 && RSI[idx]>65 && mycounters.sarbuy>5 && (filter.VWAP_DOWN || filter.MIBAND_DOWN || filter.VWAP_CROSS || stdDev[idx]<pts_size2 || VWAP[idx]<MA200[idx]) && pricestats.max_dayprice-high[idx]<pts_size && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2 && pricestats.max_lastdayprice-pricestats.max_dayprice<pts_size && high[idx]-pricestats.min_dayprice>pts_maxsize) aux_dir=0;
           if (date_candle.hour<11 && !VOLUME_UP && RSI[idx]>66 && aux_dir>0 && aux_dir<10 && low[idx]<MathMin(open[idx-1],close[idx-1]) && candle_hi>15 && candle_lo>15 && high[idx]>upBand[idx] && close[idx]<upBand[idx] && pricestats.max_dayprice-high[idx]<100) aux_dir--;
           if (date_candle.hour<12 && filter.VWAP_CROSS && (filter.HILO_SELL || mycounters.sarsell>1) && aux_dir<13 && MA100[idx]>MA50[idx] && MA50[idx]>MA25[idx] && MathAbs(VWAP[idx]-MAFast[idx])<pts_size/2 && candle_hi>pts_size/3 && candle_lo>pts_size/3) aux_dir=0;
           if (date_candle.hour<13 && date_candle.hour>10 && (date_candle.day_of_week==1 || date_candle.day_of_week==5) && (filter.VWAP_CROSS || filter.VWAP_LASTCROSS) && mycounters.c_up<2 && ATR[idx]>2*pts_size && MFI[idx]>48 && MFI[idx]<52 && close[idx-1]<MAFast[idx-1] && candle_hi>pts_size/3 && MathAbs(MAFast[idx]-VWAP[idx])<pts_size/3) aux_dir=0;
           if (aux_dir>3 && date_candle.hour==9 && date_candle.min==55 && mycounters.sarbuy>10 && candle_hi>30 && RSI[idx]>68 && high[idx]-pricestats.min_dayprice>450) aux_dir-=2;
           if (aux_dir>3 && aux_abs<50 && candle_hi>70 && candle_hi>2*aux_abs && candle_hi>100 && candle_hi>4*candle_lo && ((high[idx]>MA200[idx] && close[idx]<MA200[idx]) || (high[idx]>VWAP[idx] && close[idx]<VWAP[idx]))) aux_dir--;
           if (mycounters.c_up>1 && candle_hi>50 && candle_hi>2*(close[idx]-VWAP[idx]) && close[idx-1]<VWAP[idx-1] && high[idx]>MA25[idx] && close[idx]<MA50[idx]) aux_dir=0;
           if (filter.VWAP_CROSS && mycounters.sarsell>1 && aux_dir>0 && aux_dir<12 && body_down>pts_size/2 && (candle_hi>pts_size/2 || candle_lo>pts_size/2)) aux_dir-=3;
           if (filter.VWAP_CK_CROSS && !filter.MED_UP && mycounters.c_up<3 && pricestats.bars_day<7 && tick_volume[idx]<60000 && stdDev[idx]>pts_maxsize2 && RSI[idx]>76 && high[idx]-SAR[idx]>2*pts_maxsize2 && pricestats.max_dayprice-high[idx]<50) aux_dir-=5;
           if (filter.NO_VWAPCROSS && mycounters.sarbuy>4 && MFI[idx]>99 && RSI[idx]>75 && low[idx]>VWAP[idx] && idx-pricestats.vwap_idx>4 && high[idx]-pricestats.min_dayprice>pts_maxsize2 && high[idx]>upBand[idx] && aux_dir>0) aux_dir=0;
           //if (date_candle.hour>10 && filter.VWAP_CROSS && aux_dir>15 && RSI[idx]<59 && MathAbs(stdDev[idx]-stdDev[idx-1])<12 && high[idx]-MA200[idx]>250 && high[idx]-low[idx-1]>2*pts_size2) aux_dir=0;
           if (pricestats.bars_day<5 && mycounters.c_up>1 && aux_dir>2 && aux_dir<12 && candle_hi>50 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && open[idx]>VWAP[idx]) aux_dir-=2;
           if (pricestats.bars_day<5 && mycounters.c_up>1 && aux_dir>2 && aux_dir<12 && body_up<aux_abslast/2 && candle_hi>15 && candle_hi>body_up && high[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1]) aux_dir=0;
           if (pricestats.bars_day<10 && filter.NO_VWAPCROSS && mycounters.c_up>2 && MFI[idx]>80 && low[idx]>VWAP[idx] && MA200[idx]>high[idx] && MA200[idx]<MA200[idx-1] && MAFast[idx]<MA25[idx] && MAFast[idx-1]<MA25[idx-1] && aux_dir>3) aux_dir-=3;
           if (date_candle.day_of_week==3 && mycounters.c_up>1 && aux_dir>0 && aux_dir<15 && set_force==0 && candle_hi>15 && (candle_hi>30 || tick_volume[idx]<tick_volume[idx-1]) && VWAP[idx]<MA200[idx] && close[idx]>VWAP[idx] && VWAP[idx-1]-open[idx-1]>pts_size && high[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1] && high[idx]-low[idx-1]>pts_maxsize2 && high[idx]-MAFast[idx]>pts_size2 && high[idx]>upBand[idx]) aux_dir=0;
           if (date_candle.hour<11 && mycounters.c_up==1 && filter.VWAP_CROSS && aux_dir>0 && aux_dir<12 && stdDev[idx]>pts_maxsize && open[idx-1]-close[idx]>50) aux_dir--;
           if (date_candle.hour<11 && mycounters.c_up==1 && filter.VWAP_CROSS && filter.MED_DOWN && aux_dir>0 && aux_dir<12 && RSI[idx]>65 && candle_hi>1 &&  open[idx-1]-close[idx]>50 && (candle_hi>50 || candle_lo>50)) aux_dir--;
           if (date_candle.hour==12 && filter.VWAP_CROSS && VWAP[idx-3]-VWAP[idx-2]>1 && candle_lo>15 && candle_hi>30 && MA25[idx-1]-MAFast[idx-1]>15 && MAFast[idx]-MA25[idx]<50) aux_dir=0;
           if (date_candle.hour>10 && filter.VWAP_CROSS && mycounters.c_up>1 && mycounters.sarbuy>2 && candle_hi>10 && pricestats.first_bar>1 && close[pricestats.first_bar-1]-open[pricestats.first_bar]>pts_maxsize && close[idx-1]<VWAP[idx-1] && MA200[idx]-VWAP[idx]>pts_size2 && high[idx]-low[idx-2]>pts_maxsize && high[idx]-pricestats.min_dayprice>pts_maxsize2 && upBand[idx]-high[idx]<30 && aux_dir>2) aux_dir-=3;
           if (date_candle.hour>10 && filter.VWAP_CROSS && filter.tdf_color!=1 && mycounters.c_up>2 && aux_dir>2 && aux_dir<12 && pricestats.first_bar>1 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && candle_hi>30 && candle_hi>body_up/2 && VWAP[idx]-VWAP[idx-1]<15 && MA50[idx]>MA25[idx] && MA100[idx]>MA50[idx] && high[idx]>MA50[idx] && MA50[idx]-close[idx]>5 && MA200[idx]>high[idx] && MA200[idx]<=MA200[idx-1]) aux_dir-=2;
           if (date_candle.hour>10 && filter.VWAP_LASTCROSS && aux_dir>0 && open[idx]>VWAP[idx] && body_up<50 && candle_hi>2*candle_lo && candle_hi>5*body_up && MathAbs(MAFast[idx]-MA25[idx])<50 && upBand[idx]-high[idx]<100 && high[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1]) aux_dir=0;
           if (date_candle.hour>10 && filter.NO_VWAPCROSS && mycounters.c_up>2 && aux_dir>0 && aux_dir<12 && idx-pricestats.vwap_idx>4 && RSI[idx]>62 && stdDev[idx]<pts_size && low[idx]>VWAP[idx] && candle_hi>body_up && low[idx]>MAFast[idx]) aux_dir--;
           if (date_candle.hour>10 && filter.VWAP_CROSS && aux_dir<12 && MFI[idx]>84 && candle_hi>10 && high[idx]-pricestats.min_dayprice>pts_maxsize2 && MathAbs(MA50[idx]-MA100[idx])<pts_size/2) aux_dir=0;
           //if (date_candle.hour>11 && filter.NO_VWAPCROSS && aux_dir>0 && aux_dir<12 && idx-pricestats.vwap_idx>9 && set_force==0 && vwap_distance>100 && candle_hi>30 && high[idx]<MA200[idx] && MA200[idx]<=MA200[idx-1] && MA100[idx]>MA25[idx] && MA50[idx]-MA25[idx]>50 && MA100[idx]-MA50[idx]>50 && (high[idx]-low[idx-1]>pts_maxsize || high[idx]-low[idx-2]>pts_maxsize)) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && mycounters.sarbuy>1 && Force[idx]>1500000 && RSI[idx]>65 && pricestats.vwap_count>4 && idx-pricestats.vwap_idx>3 && low[idx]-VWAP[idx]>100 && MA100[idx]-MA50[idx]>50 && MAFast[idx]-MA25[idx]<150 && upBand[idx]-high[idx]<100 && pricestats.max_dayprice-high[idx]<2*pts_size2 && aux_dir>1 && aux_dir<12) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.tdf_color!=1 && VWAP[idx]<MA200[idx] && idx-pricestats.vwap_idx>28 && VWAP[idx]-high[idx]>2*pts_size2 && candle_hi>1 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && high[idx]-pricestats.min_dayprice>400 && tick_volume[idx]<45000) aux_dir=0;
           if (date_candle.hour>11 && filter.VWAP_DOWN && filter.tdf_color!=1 && (filter.HILO_SELL || mycounters.sarsell>0) && filter.MIBAND_DOWN && aux_dir<12 && RSI[idx]<49 && body_up<pts_size && candle_hi>10 && MAFast[idx]<miBand[idx] && high[idx]>miBand[idx] && close[idx]-miBand[idx]<30 && low[idx]>MA200[idx] && low[idx]>VWAP[idx]) aux_dir=0;
           if (date_candle.hour>11 && filter.HILO_SELL && aux_dir>3 && stdDev[idx]<120 && high[idx]-low[idx]>pts_maxsize2 && body_down>200) aux_dir-=2;
           if (date_candle.hour>11 && filter.VWAPCROSS && aux_dir>3 && stdDev[idx]<120 && close[idx]<HILO2[idx] && high[idx]-low[idx]>250 && open[idx-1]-close[idx]>50) aux_dir--;
           if (date_candle.hour>11 && date_candle.hour<14 && body_up>2*pts_size2 && high[idx]-low[idx-1]>pts_maxsize2 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir=0;
           if (date_candle.hour>11 && mycounters.sarsell>1 && mycounters.c_up<2 && !VOLUME_UP && aux_dir>1 && open[idx-1]-close[idx]>15 && candle_hi>15) aux_dir--;
           if (date_candle.hour>11 && idx-pricestats.vwap_idx>3 && mycounters.c_up>2 && RSI[idx]>66 && low[idx]>VWAP[idx] && high[idx]-VWAP[idx]>pts_maxsize && candle_hi>50 && high[idx]>upBand[idx]) aux_dir--;
           if (date_candle.hour>11 && idx-pricestats.vwap_idx>3 && RSI[idx]>66 && low[idx]>VWAP[idx] && high[idx]-VWAP[idx]>pts_maxsize && candle_hi>50 && high[idx]>upBand[idx] && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir--;
           if (date_candle.hour>11 && mycounters.sarbuy>9 && filter.VWAPCROSS && RSI[idx]>62 && stdDev[idx]<150 && tick_volume[idx]<48000 && high[idx]-pricestats.min_dayprice>pts_maxsize2 && high[idx]>upBand[idx] && close[idx]<upBand[idx] && upBand[idx-2]-high[idx-2]<50 && candle_hi>30 && high[idx-1]-close[idx-1]>30) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && body_up<aux_abslast && open[idx]>MAFast[idx] && open[idx]>HILO2[idx] && idx-pricestats.vwap_idx>5 && open[idx]-VWAP[idx]>pts_maxsize2 && close[idx]<high[idx-1]) aux_dir=0;
           if (date_candle.hour>11 && mycounters.sarbuy>5 && aux_abs<12 && MFI[idx]>80 && RSI[idx]>64.5 && (MA200[idx]<MA100[idx] || (mycounters.c_up>2 && MathAbs(VWAP[idx]-VWAP[idx-1])<pts_size)) && open[idx]>VWAP[idx] && high[idx]-pricestats.min_dayprice>2*pts_maxsize2) aux_dir=0;
           if (date_candle.hour>10 && mycounters.c_up>2 && RSI[idx]>72 && close[idx]>upBand[idx] && low[idx]>VWAP[idx] && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2) aux_dir--;
           if (date_candle.hour>9 && date_candle.hour<12 && filter.VWAP_CROSS && filter.MIBAND_DOWN && mycounters.sarsell>1 && MathAbs(stdDev[idx]-stdDev[idx-1])<10 && MAFast[idx]<miBand[idx] && high[idx-2]<MAFast[idx-2] && candle_hi>10) aux_dir=0;
           //if (date_candle.hour<10 && aux_dir>4 && filter.VWAPCROSS && mycounters.c_up==1 && RSI[idx]>70 && candle_hi>50 && close[idx]<high[idx-2] && close[idx]<open[idx-3]) aux_dir-=4;
           if (date_candle.hour>12 && filter.NO_VWAPCROSS && aux_dir>1 && aux_dir<12 && idx-pricestats.vwap_idx>6 && RSI[idx]>67 && high[idx]<MA100[idx] && body_up<aux_abslast/2 && candle_hi>body_up/2) aux_dir--;
           if (date_candle.hour>12 && filter.HILO_SELL && filter.MIBAND_DOWN && filter.NO_VWAPCROSS && aux_dir>2 && aux_dir<12 && idx-pricestats.vwap_idx>6 && stdDev[idx]<200 && RSI[idx]<50 && body_up<open[idx-2]-close[idx-2] && close[idx]<open[idx-2] && candle_hi>10 && MA25[idx]-MAFast[idx]>100) aux_dir-=3;
           if (date_candle.hour>12 && date_candle.hour<16 && filter.NO_VWAPCROSS && RSI[idx]>61 && high[idx]-low[idx-1]>2*pts_size2 && low[idx]-VWAP[idx]>100 && candle_hi>50 && upBand[idx]-high[idx]<50 && pricestats.max_dayprice-high[idx]<100 && high[idx]-pricestats.min_dayprice>800) aux_dir=0;
           if (date_candle.hour>12 && mycounters.sarsell>0 && mycounters.sarsell<6 && filter.tdf_color!=1 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && (filter.HILO_SELL || filter.MIBAND_DOWN || filter.SAR_INVERTSELL) && body_up<130 && candle_hi>body_up/2 && SAR[idx]-high[idx]>130 && VWAP[idx]-high[idx]<150 && high[idx]<VWAP[idx] && miBand[idx]-MAFast[idx]>30 && aux_dir<12) aux_dir=0;
           if (date_candle.hour>12 && mycounters.sarsell>0 && mycounters.sarsell<10 && filter.tdf_color!=1 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.HILO_SELL && tick_volume[idx]<60000 && candle_hi>10 && RSI[idx-1]<40 && Force[idx-1]<0 && high[idx]<VWAP[idx] && high[idx]-pricestats.min_lastdayprice>3*pts_maxsize2 && aux_dir<-2 && aux_dir>-12) aux_dir-=3;
           if (date_candle.hour<10 && RSI[idx]>65 && idx>2 && open[pricestats.first_bar]-low[pricestats.first_bar+1]>pts_maxsize2 && open[pricestats.first_bar]-high[idx]<150) aux_dir=0;
           if (date_candle.hour<10 && aux_dir<12 && body_up<50 && high[idx-1]-high[idx]>30 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir=0;
           if (date_candle.hour<11 && filter.VWAP_CROSS && RSI[idx]>62 && high[idx]-low[idx-1]>pts_maxsize && close[idx]>upBand[idx] && low[idx-1]<loBand[idx-1] && stdDev[idx]<170 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && pricestats.max_dayprice-high[idx]<90) aux_dir=0;
           if (date_candle.hour>9 && date_candle.hour<14 && mycounters.c_up>2 && RSI[idx]>65 && stdDev[idx]>250 && ATR[idx]>2*pts_size2 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && close[idx]>upBand[idx] && close[idx]-VWAP[idx]>pts_maxsize && aux_dir>2) aux_dir-=2;
           if (date_candle.hour>9 && filter.VWAP_LASTCROSS && filter.NO_VWAP_CROSS && pricestats.max_dayprice-high[idx]<pts_size && pricestats.max_dayprice-pricestats.min_dayprice>3*pts_size2 && pricestats.max_lastdayprice-high[idx]<3*pts_size2 && low[idx]>VWAP[idx] && high[idx]>upBand[idx] && candle_hi>pts_size/2) aux_dir=0;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.VWAPCROSS && mycounters.sarsell>1 && aux_dir>5 && HILO2[idx]-MAFast[idx]>50 && high[idx]-low[idx]>2*pts_size2 && MathAbs(stdDev[idx-1]-stdDev[idx])<15 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir-=5;
           if (date_candle.hour>10 && aux_dir>1 && filter.VWAPCROSS && filter.HILO_SELL && (filter.MIBAND_DOWN || mycounters.sarsell>1) && close[idx]-HILO2[idx]<30 && close[idx]-MAFast[idx]<30) aux_dir--;
           if (date_candle.hour>10 && filter.VWAP_CROSS && filter.tdf_color!=1 && mycounters.c_up>2 && aux_dir>1 && body_up<2*candle_hi && candle_hi>100 && high[idx]>MA200[idx] && MA200[idx]-close[idx]>60) aux_dir--;
           if (date_candle.hour>10 && !filter.VWAP_UP && filter.tdf_color!=1 && mycounters.sarsell>2 && candle_hi>20 && high[idx]-low[idx-1]>330 && SAR[idx]-high[idx]>pts_size2 && RSI[idx]<55 && VWAP[idx]-high[idx]<30 && VWAP[idx]-close[idx]>35 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1]) aux_dir--;
           if (date_candle.hour>10 && mycounters.c_up>2 && stdDev[idx]>3*pts_size && RSI[idx]>65 && high[idx]-SAR[idx]>pts_maxsize2 && idx-mycounters.c_up>0 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2 && MFI[idx]-MFI[idx-mycounters.c_up]>35 && high[idx]-MA200[idx]>pts_maxsize2 && close[idx]-VWAP[idx]>pts_size && (body_up<aux_abslast/2 || candle_hi>pts_size/2 || candle_lo>pts_size/2) && aux_dir>3) aux_dir-=3;
           if (date_candle.hour>11 && (filter.tdf_color==0 || filter.HILO_SELL || mycounters.sarsell>0) && aux_dir>1 && aux_dir<12 && tick_volume[idx]<35000 && body_up<pts_size/2 && candle_hi>body_up && MathAbs(stdDev[idx]-stdDev[idx-1])<11 && upBand[idx]-high[idx]<pts_size/2) aux_dir--;
           if (date_candle.hour>11 && date_candle.hour<14 && mycounters.c_up>1 && body_up<150 && candle_hi>30 && body_up<aux_abslast/2 && MathAbs(stdDev[idx]-stdDev[idx-1])<30 && MA100[idx]>MA50[idx] && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && (vwap_distance>pts_maxsize || (MA200[idx]-high[idx]<150))) aux_dir=0;
           if (date_candle.hour>11 && mycounters.c_up>2 && pricestats.first_bar>1 && RSI[idx]>71 && stdDev[idx]<150 && body_up<aux_abslast && low[idx]-VWAP[idx]>pts_size && high[idx]-low[idx-mycounters.c_up]>pts_maxsize && MA200[idx]-high[idx]>pts_maxsize && MA200[idx]<MA200[idx-1] && MA200[idx]-VWAP[idx]>pts_maxsize && aux_dir>1 && aux_dir<12) aux_dir--;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx>16 && high[idx]<VWAP[idx] && candle_hi>30 && MA25[idx]-MAFast[idx]>100 && MA25[idx]-high[idx]<80 && MA25[idx]-close[idx]>100 && MA50[idx]-MA25[idx]>50 && MA100[idx]-MA50[idx]>50 && aux_dir>2) aux_dir-=2;
           //if (date_candle.hour>11 && filter.VWAP_CROSS && MathAbs(stdDev[idx]-stdDev[idx-1])<30 && MathAbs(MAFast[idx]-VWAP[idx])<10 && candle_hi>30 && aux_dir>1 && aux_dir<12) aux_dir--;
           if (date_candle.hour>12 && filter.VWAP_DOWN && mycounters.sarsell>2 && MFI[idx]>64 && VWAP[idx]-open[idx]>pts_size/2 && VWAP[idx]-close[idx]<pts_size/2 && close[idx]-MAFast[idx]>15 && aux_dir>0 && aux_dir<12) aux_dir-=2;
           if (date_candle.hour>12 && mycounters.sarbuy>16 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx>24 && low[idx]-VWAP[idx]>pts_maxsize && vwap_distance>pts_maxsize2 && aux_dir>0 && aux_dir<12) aux_dir--;
           if (date_candle.hour>12 && (date_candle.day_of_week==3 || date_candle.day_of_week==4 || MFI[idx]>85 || RSI[idx]>65) && filter.VWAP_CROSS && filter.VWAP_DOWN && mycounters.sarbuy>6 && set_force==0 && close[idx]-VWAP[idx]<pts_size/3) aux_dir=0;
           if (date_candle.hour>12 && filter.NO_VWAPCROSS && body_up<100 && idx-pricestats.vwap_idx>16 && VWAP[idx]-high[idx]>2*pts_size2 && VWAP[idx]-MA200[idx]>pts_size2 && MA200[idx]-high[idx]<50 && MA200[idx]-close[idx]>30 && aux_dir>0 && aux_dir<15) aux_dir=0;
           if (date_candle.hour>13 && filter.NO_VWAPCROSS && filter.tdf_color==0 && mycounters.c_up>1 && mycounters.sarsell>1 && aux_dir<12 && low[idx]>VWAP[idx] && stdDev[idx]<96 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && upBand[idx]-high[idx]<10) aux_dir=0;
           if (date_candle.hour>13 && filter.VWAP_CROSS && mycounters.c_up>3 && mycounters.sarbuy>5 && (MFI[idx]>80 || RSI[idx]>65) && close[idx]-VWAP[idx]<pts_size) aux_dir=0;
           if (date_candle.hour>13 && aux_dir<9 && body_up<50 && body_up<aux_abslast/3 && stdDev[idx]<80 && open[idx]>VWAP[idx] && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && upBand[idx]-high[idx]<60) aux_dir=0;
           if (date_candle.hour>13 && filter.VWAP_DOWN && filter.NO_VWAPCROSS && candle_hi>50 && aux_dir>2 && aux_dir<12 && MA200[idx]<VWAP[idx] && MA200[idx]-high[idx]<30 && MA200[idx]-close[idx]>60 && high[idx]<VWAP[idx]) aux_dir-=2;
           if (date_candle.hour>13 && filter.VWAP_CROSS && mycounters.sarbuy>12 && stdDev[idx]<stdDev[idx-1] && (stdDev[idx-1]<stdDev[idx-2] || tick_volume[idx]<40000) && tick_volume[idx]<50000 && high[idx]>upBand[idx] && MathAbs(MAFast[idx]-miBand[idx])<50 && aux_dir>5 && aux_dir<15) aux_dir-=5;
           if (date_candle.hour>13 && filter.NO_VWAPCROSS && RSI[idx]>69 && idx-pricestats.vwap_idx>32 && high[idx]-VWAP[idx]>pts_maxsize2 && low[idx]-VWAP[idx]>250 && low[idx]-MA25[idx]>60 && high[idx]-pricestats.min_dayprice>1100 && aux_dir>0 && aux_dir<12) aux_dir--;
           if (date_candle.hour>13 && filter.VWAP_DOWN && candle_hi>50 && VWAP[idx]-close[idx]>50 && VWAP[idx]-high[idx]<30 && VWAP[idx-1]-high[idx-1]>50 && MAFast[idx]<MA25[idx] && MA200[idx]<MA200[idx-1] && high[idx]<MA200[idx] && aux_dir>0 && aux_dir<12) aux_dir--;
           if (date_candle.hour>14 && filter.VWAP_CROSS && aux_dir>3 && stdDev[idx]<100 && high[idx-1]<VWAP[idx-1] && MA200[idx]-VWAP[idx]>70 && MA200[idx]<MA200[idx-1] && MA200[idx]-high[idx]<100) aux_dir-=3;
           if (date_candle.hour>14 && candle_hi>30 && stdDev[idx]<80 && stdDev[idx]<stdDev[idx-1] && open[idx]>VWAP[idx] && high[idx]-pricestats.min_dayprice>2*pts_size2) aux_dir=0;
           if (date_candle.hour>14 && aux_dir>2 && body_up<100 && candle_hi>30 && body_up<2*candle_hi && stdDev[idx]<120 && MathAbs(stdDev[idx]-stdDev[idx-1])<10 && open[idx]>VWAP[idx] && close[idx]<high[idx-1]) aux_dir-=2;
           if (date_candle.hour>14 && filter.VWAP_CROSS && candle_hi>15 && RSI[idx]>65 && ATR[idx]>2*pts_size2 && high[idx]>upBand[idx] && high[idx]-low[idx-1]>550) aux_dir=0;
           if (date_candle.hour>14 && mycounters.sarbuy>6 && mycounters.c_up>1 && pricestats.vwap_count>9 && idx-pricestats.vwap_idx<4 && stdDev[idx]<pts_size && tick_volume[idx]<50000 && RSI[idx]>69 && close[idx]-VWAP[idx]>50 && candle_hi>1) aux_dir=0;
           if (date_candle.hour>15 && mycounters.sarbuy>3 && pricestats.vwap_count>9 && idx-pricestats.vwap_idx<4 && close[idx]-VWAP[idx]>100 && tick_volume[idx]<50000 && candle_hi>10 && RSI[idx]>62 && ((filter.tdf_color==0 && aux_dir<12) || date_candle.hour>16)) aux_dir=0;
           //if (date_candle.hour>15 && filter.NO_VWAPCROSS && low[idx]<VWAP[idx] && aux_dir>2 && aux_dir<12 && high[idx]-VWAP[idx]>2*pts_size2 && MA200[idx]-MA200[idx-1]<3 && high[idx]-MA200[idx]>60 && close[idx]-MA200[idx]<30) aux_dir-=2;
           if (date_candle.hour>15 && filter.NO_VWAPCROSS && low[idx]>VWAP[idx] && mycounters.sarsell>1 && mycounters.c_up>2 && SAR[idx]-close[idx]>pts_size && aux_dir>2 && aux_dir<12 && MA200[idx]-high[idx]>100 && MA200[idx]<MA200[idx-1]) aux_dir-=2;
           if (date_candle.hour>15 && filter.VWAP_CROSS && mycounters.sarbuy>3 && RSI[idx]>71 && candle_hi>10 && high[idx]-low[idx-1]>pts_maxsize2) aux_dir=0;
           if (date_candle.hour>15 && aux_dir>2 && candle_hi>22 && stdDev[idx]<pts_size && high[idx]-low[idx-2]>pts_maxsize && (close[idx]>upBand[idx] || (high[idx]>upBand[idx] && upBand[idx]-close[idx]<33))) aux_dir-=2;
           if (date_candle.hour>15 && aux_dir>2 && candle_hi>5 && high[idx]>MA200[idx] && MA200[idx]-close[idx]<30 && high[idx]-low[idx-2]>pts_maxsize2) aux_dir=0;
           if (date_candle.hour>15 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && filter.tdf_color==0 && idx-pricestats.vwap_idx>(int)((pts_size2/3)-1) && stdDev[idx]<pts_size && candle_hi>10 && high[idx]<VWAP[idx] && MA100[idx]>MA25[idx] && MA50[idx]-MA25[idx]>10 && MA100[idx]-MA50[idx]>10 && high[idx]<MA200[idx] && MA200[idx]<MA200[idx-1] && high[idx]>upBand[idx] && open[idx]<MA50[idx] && MA50[idx]-close[idx]<pts_size2/3) aux_dir=0;
           if (date_candle.hour>16 && (filter.HILO_SELL || mycounters.sarsell>1) && tick_volume[idx]<10000 && candle_hi>0 && close[idx]<high[idx-1] && body_up<30) aux_dir=0;
           if (date_candle.hour>16 && body_up<70 && aux_dir>0 && aux_dir<12 && idx-pricestats.vwap_idx>16 && ATR[idx]<200 && tick_volume[idx]<20000 && low[idx]>VWAP[idx]) aux_dir--;
           if (date_candle.hour>16 && date_candle.min>25 && filter.tdf_color==0 && body_up<150 && tick_volume[idx]<11000 && low[idx]>VWAP[idx] && aux_dir>1 && aux_dir<12) aux_dir--;
           if (date_candle.hour>16 && date_candle.min>25 && filter.tdf_color==0 && body_up<pts_size && tick_volume[idx]<10000 && low[idx]-VWAP[idx]>2*pts_size2 && aux_dir>1 && aux_dir<12) aux_dir--;
           if (filter.HILO_SELL && filter.MIBAND_DOWN && mycounters.c_up<2 && mycounters.sarsell>1 && Force[idx]<0 && body_up<50 && MAFast[idx]-high[idx]>60 && MAFast[idx]<HILO2[idx]) aux_dir=0;
           if (filter.HILO_SELL && mycounters.sarsell>1 && candle_hi>10 && open[idx-2]-close[idx]>50 && high[idx]>MAFast[idx] && close[idx]-MAFast[idx]<10 && close[idx]<(open[idx-2]+close[idx-2])/2) aux_dir=0;
           if (aux_dir>0 && aux_dir<13 && pricestats.bars_day<5 && mycounters.c_up>1 && open[idx]>VWAP[idx] && body_up<pts_size && body_up<aux_abslast/3 && candle_hi>body_up && candle_lo>body_up && MA25[idx]-MAFast[idx]>15) aux_dir=0;
           if (aux_dir>0 && aux_dir<13 && mycounters.sarbuy>2 && RSI[idx]>68 && low[idx]-VWAP[idx]>pts_size && MA200[idx]<MA200[idx-1] && close[idx]<MA200[idx] && MA200[idx]-high[idx]<(pts_size2)/2 && MA200[idx]-MA25[idx]>pts_size2 && pricestats.max_dayprice-high[idx]<pts_size/3) aux_dir=0;
           if (aux_dir>0 && aux_dir<13 && mycounters.c_up>1 && filter.NO_VWAPCROSS && filter.VWAP_DOWN && idx-pricestats.vwap_idx>16 && tick_volume[idx]<50000 && close[idx]-open[idx-1]>250 && VWAP[idx]-high[idx]>250 && MA200[idx]-high[idx]>250 && MA200[idx]<MA200[idx-1] && MA25[idx]-MAFast[idx]>pts_size2 && MA25[idx]-high[idx]<150 && low[idx-1]<MAFast[idx-1]) aux_dir--;
           if (aux_dir>13 && date_candle.hour>10 && mycounters.c_up>2 && RSI[idx]>62 && Force[idx]>5000000 && candle_lo>100 && open[idx]-VWAP[idx]>100 && high[idx]-low[idx-mycounters.c_up]>pts_maxsize2) aux_dir=0;
           if (aux_dir>3 && aux_dir<10 && RSI[idx]>64 && pricestats.max_dayprice-high[idx]<400 && low[idx]>VWAP[idx] && low[idx-1]<VWAP[idx-1] && high[idx]-low[idx-1]>450 && candle_hi>30) aux_dir--;
           if (aux_dir>3 && aux_dir<14 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.HILO_SELL && RSI[idx]<45 && tick_volume[idx]<45000 && high[idx]<VWAP[idx] && mycounters.sarsell>1 && (MA200[idx]<MA200[idx-1] || VWAP[idx]<MA200[idx])) aux_dir-=3;
        }
     }
     else if (aux_dir<0) {
        if (filter.VWAP_UP || filter.HILO_BUY) {
           if (filter.HILO_BUY && close[idx]>HILO2[idx]) aux_dir--;
           if ((filter.VWAP_UP || filter.tdf_color!=2) && filter.NO_VWAPCROSS && mycounters.c_down<2 && idx-pricestats.vwap_idx>32 && low[idx-1]>low[idx-2] && low[idx]>VWAP[idx]) aux_dir=0;
           if ((date_candle.hour>11 || aux_dir>-8) && filter.VWAP_UP && RSI[idx-1]>60 && candle_lo>50 && low[idx-1]>VWAP[idx-1] && low[idx]-VWAP[idx]<15 && VWAP[idx]-low[idx]<30 && close[idx]-VWAP[idx]>50) aux_dir=0;
           //if (type==1 && date_candle.hour>15 && filter.VWAP_CROSS && candle_lo>2*candle_hi && low[idx-1]>VWAP[idx-1] && open[idx]-VWAP[idx]>VWAP[idx]-close[idx] && candle_lo>100 && stdDev[idx]<100) aux_dir=0;
           if (type==1 && aux_dir<-3 && filter.VWAP_CROSS && (filter.HILO_BUY || filter.VWAP_UP || Force[idx]>0) && mycounters.sarbuy>0 && candle_lo>body_down/2 && low[idx-1]>VWAP[idx-1] && VWAP[idx]-close[idx]<10 && close[idx]>miBand[idx] && MAFast[idx]>miBand[idx]) aux_dir+=2;
        }
        if (type==1 && date_candle.hour>9 && date_candle.hour<13 && date_candle.day_of_week==1 && filter.VWAP_CROSS && MA200[idx]>MA200[idx-1] && MA200[idx-1]>MA200[idx-2] && low[idx]-MA200[idx]>aux_abs && MAFast[idx]>MA25[idx] && high[idx-1]-low[idx]>pts_size2 && candle_lo>3 && (candle_hi>pts_size/2 || candle_lo>pts_size/2)) aux_dir=0;
        if (type==1 && date_candle.hour<13 && (date_candle.hour>10 || (date_candle.hour==10 && date_candle.min>30)) && mycounters.c_down>1 && (mycounters.sarbuy>1 || filter.HILO_BUY) && ATR[idx]>2*pts_size2 && open[idx]<VWAP[idx] && low[idx-2]>VWAP[idx-2] && high[idx-2]-low[idx]>pts_maxsize2 && high[idx]<MA25[idx] && (candle_hi>50 || candle_lo>50)) aux_dir=0;
        if (type==1 && !set_force) {
           if ((filter.VWAP_CROSS || filter.VWAP_LASTCROSS || filter.MIBAND_UP || filter.HILO_BUY) && body_up>pts_size/3 && candle_lo>body_up/2 && MAFast[idx]>MA25[idx] && MA25[idx]-MA50[idx]>pts_size && MA50[idx]-MA100[idx]>pts_size) aux_dir=0;
           if (MFI[idx]<14 && RSI[idx]<30 && aux_dir<-3 && (filter.VWAP_UP || filter.MIBAND_UP || stdDev[idx]<pts_size2 || VWAP[idx]>MA200[idx]) && pricestats.max_dayprice-pricestats.min_dayprice>2*pts_maxsize2 && pricestats.max_dayprice-low[idx]>pts_maxsize2 && low[idx]-loBand[idx]<pts_size) aux_dir+=3;
           if (MFI[idx]<14 && RSI[idx]<30 && mycounters.sarsell>5 && (filter.VWAP_UP || filter.MIBAND_UP || filter.VWAP_CROSS || stdDev[idx]<pts_size2 || VWAP[idx]>MA200[idx]) && low[idx]-pricestats.min_dayprice<pts_size && pricestats.min_dayprice-pricestats.min_lastdayprice<pts_size && pricestats.max_dayprice-low[idx]>pts_maxsize2) aux_dir=0;
           if (date_candle.hour<11 && !VOLUME_UP && RSI[idx]<34 && aux_dir<0 && aux_dir>-10 && high[idx]>MathMax(open[idx-1],close[idx-1]) && candle_hi>15 && candle_lo>15 && low[idx]<loBand[idx] && close[idx]>loBand[idx] && low[idx]-pricestats.min_dayprice<100) aux_dir++;
           if (date_candle.hour<12 && filter.VWAP_CROSS && (filter.HILO_BUY || mycounters.sarbuy>1) && aux_dir>-13 && MA100[idx]<MA50[idx] && MA50[idx]<MA25[idx] && MathAbs(VWAP[idx]-MAFast[idx])<pts_size/2 && candle_hi>pts_size/3 && candle_lo>pts_size/3) aux_dir=0;
           if (date_candle.hour<13 && date_candle.hour>10 && (date_candle.day_of_week==1 || date_candle.day_of_week==5) && (filter.VWAP_CROSS || filter.VWAP_LASTCROSS) && mycounters.c_down<2 && ATR[idx]>2*pts_size && MFI[idx]>48 && MFI[idx]<52 && close[idx-1]>MAFast[idx-1] && candle_lo>pts_size/3 && MathAbs(MAFast[idx]-VWAP[idx])<pts_size/3) aux_dir=0;
           if (aux_dir<-3 && date_candle.hour==9 && date_candle.min==55 && filter.tdf_color==0 && mycounters.sarsell>10 && candle_lo>30 && RSI[idx]<30 && pricestats.max_dayprice-low[idx]>450 && low[idx]-pricestats.min_dayprice<100) aux_dir+=2;
           if (aux_dir<-3 && aux_abs<50 && candle_lo>70 && candle_lo>2*aux_abs && candle_lo>70 && candle_lo>4*candle_hi && (date_candle.hour>10 || (low[idx]<MA200[idx] && close[idx]>MA200[idx]) || (low[idx]<VWAP[idx] && close[idx]>VWAP[idx]))) aux_dir++;
           if (mycounters.c_down>1 && candle_lo>50 && candle_lo>2*(VWAP[idx]-close[idx]) && close[idx-1]>VWAP[idx-1] && MA25[idx]<MA50[idx] && low[idx]<MA25[idx] && close[idx]>MA50[idx]) aux_dir=0;
           if (filter.VWAP_CROSS && mycounters.sarbuy>1 && aux_dir<0 && aux_dir>-12 && RSI[idx]<35 && body_up>pts_size/2 && (candle_hi>pts_size/2 || candle_lo>pts_size/2)) aux_dir+=3;
           if (filter.VWAP_CK_CROSS && !filter.MED_DOWN && mycounters.c_down<3 && pricestats.bars_day<7 && tick_volume[idx]<60000 && stdDev[idx]>pts_maxsize2 && RSI[idx]<24 && SAR[idx]-low[idx]>2*pts_maxsize2 && low[idx]-pricestats.min_dayprice<50) aux_dir+=5;
           if (filter.NO_VWAPCROSS && mycounters.sarsell>4 && MFI[idx]<1 && RSI[idx]<20 && high[idx]<VWAP[idx] && idx-pricestats.vwap_idx>4 && pricestats.max_dayprice-low[idx]>pts_maxsize2 && aux_dir<0) aux_dir=0;
           if (pricestats.bars_day<5 && mycounters.c_down>1 && aux_dir<-2 && aux_dir>-12 && candle_lo>50 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && open[idx]<VWAP[idx]) aux_dir++;
           if (pricestats.bars_day<5 && mycounters.c_down>1 && aux_dir<-2 && aux_dir>-12 && body_down<aux_abslast/2 && candle_lo>15 && candle_lo>body_down && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1]) aux_dir=0;           if (pricestats.bars_day<10 && filter.NO_VWAPCROSS && mycounters.c_down>2 && MFI[idx]<20 && high[idx]<VWAP[idx] && MA200[idx]<low[idx] && MA200[idx]>MA200[idx-1] && MAFast[idx]>MA25[idx] && MAFast[idx-1]>MA25[idx-1] && aux_dir<-3) aux_dir+=3;
           if (date_candle.day_of_week==3 && mycounters.c_down>1 && aux_dir<0 && aux_dir>-15 && set_force==0 && (candle_lo>30 || tick_volume[idx]<tick_volume[idx-1]) && VWAP[idx]>MA200[idx] && close[idx]<VWAP[idx] && open[idx-1]-VWAP[idx-1]>pts_size && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1] && high[idx-1]-low[idx]>pts_maxsize2 && MAFast[idx]-low[idx]>pts_size2 && low[idx]-loBand[idx]<pts_size/2) aux_dir=0;
           if (date_candle.hour<11 && mycounters.c_down==1 && filter.VWAP_CROSS && aux_dir<0 && aux_dir>-12 && stdDev[idx]>pts_maxsize && close[idx]-open[idx-1]>50) aux_dir++;
           if (date_candle.hour<11 && mycounters.c_down==1 && filter.VWAP_CROSS && filter.MED_UP && aux_dir<0 && aux_dir>-12 && RSI[idx]<35 && candle_lo>1 && close[idx]-open[idx-1]>50 && (candle_hi>50 || candle_lo>50)) aux_dir++;
           if (date_candle.hour==12 && filter.VWAP_CROSS && VWAP[idx-2]-VWAP[idx-3]>1 && candle_hi>15 && candle_lo>30 && MAFast[idx-1]-MA25[idx-1]>15 && MA25[idx]-MAFast[idx]<50) aux_dir=0;
           if (date_candle.hour>10 && filter.VWAP_CROSS && aux_dir<-15 && RSI[idx]>41 && MathAbs(stdDev[idx]-stdDev[idx-1])<12 && MA200[idx]-low[idx]>250 && high[idx-1]-low[idx]>2*pts_size2) aux_dir=0;
           if (date_candle.hour>10 && filter.VWAP_CROSS && mycounters.c_down>1 && candle_lo>10 && pricestats.first_bar>1 && open[pricestats.first_bar]-close[pricestats.first_bar-1]>2*pts_size2 && close[idx-1]>VWAP[idx-1] && VWAP[idx]-MA200[idx]>pts_size2 && high[idx-2]-low[idx]>pts_maxsize && pricestats.max_dayprice-low[idx]>pts_maxsize2 && low[idx]-loBand[idx]<50 && aux_dir<-2) aux_dir+=3;
           if (date_candle.hour>10 && filter.VWAP_CROSS && filter.tdf_color!=2 && mycounters.c_down>2 && aux_dir<-2 && aux_dir>-12 && pricestats.first_bar>1 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && candle_lo>30 && candle_lo>body_down/2 && VWAP[idx-1]-VWAP[idx]<15 && MA25[idx]>MA50[idx] && MA50[idx]>MA100[idx] && low[idx]<MA50[idx] && close[idx]-MA50[idx]>5 && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1]) aux_dir+=2;
           if (date_candle.hour>10 && filter.VWAP_LASTCROSS && aux_dir<0 && open[idx]<VWAP[idx] && body_down<50 && candle_lo>2*candle_hi && candle_lo>5*body_down && MathAbs(MAFast[idx]-MA25[idx])<50 && low[idx]-loBand[idx]<100 && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1]) aux_dir=0;
           if (date_candle.hour>10 && filter.NO_VWAPCROSS && mycounters.c_down>2 && aux_dir<0 && aux_dir>-12 && idx-pricestats.vwap_idx>4 && RSI[idx]<38 && stdDev[idx]<pts_size && high[idx]<VWAP[idx] && candle_lo>body_down && high[idx]<MAFast[idx]) aux_dir++;
           if (date_candle.hour>10 && filter.VWAP_CROSS && aux_dir>-14 && MFI[idx]<26 && candle_lo>10 && pricestats.max_dayprice-low[idx]>pts_maxsize2 && MathAbs(MA50[idx]-MA100[idx])<pts_size/2) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && aux_dir<0 && aux_dir>-12 && idx-pricestats.vwap_idx>9 && set_force==0 && vwap_distance>100 && candle_lo>30 && low[idx]>MA200[idx] && MA200[idx]>=MA200[idx-1] && MA25[idx]>MA100[idx] && MA25[idx]-MA50[idx]>50 && MA50[idx]-MA100[idx]>50 && (high[idx-1]-low[idx]>pts_maxsize || high[idx-2]-low[idx]>pts_maxsize)) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && mycounters.sarsell>1 && Force[idx]<-1500000 && RSI[idx]<35 && pricestats.vwap_count>4 && idx-pricestats.vwap_idx>3 && VWAP[idx]-high[idx]>100 && MA50[idx]-MA100[idx]>50 && MA25[idx]-MAFast[idx]<150 && low[idx]-loBand[idx]<100 && low[idx]-pricestats.min_dayprice<2*pts_size2 && aux_dir<-1 && aux_dir>-12) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && filter.VWAP_UP && filter.tdf_color!=2 && idx-pricestats.vwap_idx>28 && low[idx]-VWAP[idx]>2*pts_size2 && candle_lo>1 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && pricestats.max_dayprice-low[idx]>400 && tick_volume[idx]<45000) aux_dir=0;
           if (date_candle.hour>11 && filter.VWAP_UP && filter.tdf_color!=2 && (filter.HILO_BUY || mycounters.sarbuy>0) && filter.MIBAND_UP && aux_dir>-12 && RSI[idx]>51 && body_down<pts_size && candle_lo>10 && MAFast[idx]>miBand[idx] && low[idx]<miBand[idx] && miBand[idx]-close[idx]<30 && low[idx]>MA200[idx] && low[idx]>VWAP[idx]) aux_dir=0;
           if (date_candle.hour>11 && filter.HILO_BUY && aux_dir<-3 && stdDev[idx]<120 && high[idx]-low[idx]>pts_maxsize2 && body_up>200) aux_dir+=2;
           if (date_candle.hour>11 && filter.VWAPCROSS && aux_dir<-3 && stdDev[idx]<120 && close[idx]>HILO2[idx] && high[idx]-low[idx]>250 && close[idx]-open[idx-1]>50) aux_dir++;
           if (date_candle.hour>11 && date_candle.hour<14 && body_down>2*pts_size2 && high[idx-1]-low[idx]>pts_maxsize2 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir=0;
           if (date_candle.hour>11 && mycounters.sarbuy>1 && mycounters.c_down<2 && !VOLUME_UP && aux_dir<1 && close[idx]-open[idx-1]>30 && candle_lo>30 && low[idx]>MA200[idx]) aux_dir++;
           if (date_candle.hour>11 && idx-pricestats.vwap_idx>3 && mycounters.c_down>2 && RSI[idx]<33 && high[idx]<VWAP[idx] && VWAP[idx]-low[idx]>pts_maxsize && candle_lo>50 && candle_lo>candle_hi && low[idx]<loBand[idx] && close[idx]>loBand[idx]) aux_dir++;
           if (date_candle.hour>11 && idx-pricestats.vwap_idx>3 && RSI[idx]<33 && high[idx]<VWAP[idx] && VWAP[idx]-low[idx]>pts_maxsize && candle_lo>50 && candle_lo>candle_hi && low[idx]<loBand[idx] && close[idx]>loBand[idx] && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir++;
           if (date_candle.hour>11 && mycounters.sarsell>9 && filter.VWAPCROSS && RSI[idx]<38 && stdDev[idx]<150 && tick_volume[idx]<48000 && pricestats.max_dayprice-low[idx]>pts_maxsize2 && low[idx]<loBand[idx] && close[idx]>loBand[idx] && low[idx-2]-loBand[idx-2]<50 && candle_lo>30 && close[idx-1]-low[idx-1]>30) aux_dir=0;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && body_down<aux_abslast && open[idx]<MAFast[idx] && open[idx]<HILO2[idx] && idx-pricestats.vwap_idx>5 && VWAP[idx]-open[idx]>pts_maxsize2 && close[idx]>low[idx-1]) aux_dir=0;
           if (date_candle.hour>11 && mycounters.sarsell>5 && aux_abs>-12 && MFI[idx]<32 && RSI[idx]<35.5 && (MA200[idx]>MA100[idx] || (mycounters.c_down>2 && MathAbs(VWAP[idx]-VWAP[idx-1])<pts_size)) && open[idx]<VWAP[idx] && pricestats.max_dayprice-low[idx]>2*pts_maxsize2) aux_dir=0;
           if (date_candle.hour>10 && mycounters.c_down>2 && RSI[idx]<28 && close[idx]<loBand[idx] && high[idx]<VWAP[idx] && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2) aux_dir++;
           if (date_candle.hour>12 && filter.NO_VWAPCROSS && aux_dir<-1 && aux_dir>-12 && idx-pricestats.vwap_idx>6 && RSI[idx]<33 && low[idx]>MA100[idx] && body_down<aux_abslast/2 && candle_lo>body_down/2) aux_dir++;
           if (date_candle.hour>12 && filter.HILO_BUY && filter.MIBAND_UP && filter.NO_VWAPCROSS && aux_dir<-2 && aux_dir>-12 && idx-pricestats.vwap_idx>6 && stdDev[idx]<200 && RSI[idx]>50 && body_down<close[idx-2]-open[idx-2] && close[idx]>open[idx-2] && candle_lo>10 && MAFast[idx]-MA25[idx]>100) aux_dir+=3;
           if (date_candle.hour>12 && date_candle.hour<16 && filter.NO_VWAPCROSS && stdDev[idx]<stdDev[idx-1] && RSI[idx]<38 && high[idx-1]-low[idx]>pts_maxsize && VWAP[idx]-high[idx]>100 && candle_lo>50 && low[idx]-loBand[idx]<50 && low[idx]-pricestats.min_dayprice<70 && pricestats.max_dayprice-low[idx]>2*pts_maxsize2) aux_dir=0;
           if (date_candle.hour>12 && mycounters.sarbuy>0 && mycounters.sarbuy<6 && filter.tdf_color!=2 && filter.NO_VWAPCROSS && filter.VWAP_UP && (filter.HILO_BUY || filter.MIBAND_UP || filter.SAR_INVERTBUY) && body_down<130 && candle_lo>body_down/2 && low[idx]-SAR[idx]>130 && low[idx]-VWAP[idx]<150 && low[idx]>VWAP[idx] && MAFast[idx]-miBand[idx]>30 && aux_dir>-12) aux_dir=0;
           if (date_candle.hour>12 && date_candle.hour<16 && mycounters.sarbuy>0 && mycounters.sarbuy<10 && filter.tdf_color!=2 && filter.NO_VWAPCROSS && filter.VWAP_UP && filter.HILO_BUY && tick_volume[idx]<60000 && candle_lo>10 && RSI[idx-1]>60 && Force[idx-1]>0 && low[idx]>VWAP[idx] && pricestats.max_lastdayprice-low[idx]>3*pts_maxsize2 && aux_dir<-2 && aux_dir>-12) aux_dir+=3;
           if (date_candle.hour>12 && filter.VWAP_UP && mycounters.sarbuy>2 && MFI[idx]<37 && open[idx]-VWAP[idx]>pts_size/2 && close[idx]-VWAP[idx]<pts_size/2 && MAFast[idx]-close[idx]>15 && aux_dir<0 && aux_dir>-12) aux_dir+=2;
           if (filter.VWAP_CROSS && filter.MIBAND_UP && mycounters.sarbuy>1 && MathAbs(stdDev[idx]-stdDev[idx-1])<10 && MAFast[idx]>miBand[idx] && low[idx-2]>MAFast[idx-2] && candle_lo>10) aux_dir=0;
           if (date_candle.hour<10 && aux_dir<-4 && filter.VWAPCROSS && mycounters.c_down==1 && RSI[idx]<30 && candle_lo>33 && close[idx]>low[idx-2]) aux_dir+=4;
           if (date_candle.hour<10 && RSI[idx]<35 && idx>2 && high[pricestats.first_bar+1]-open[pricestats.first_bar]>pts_maxsize2 && low[idx]-open[pricestats.first_bar]<150) aux_dir=0;
           if (date_candle.hour<10 && aux_dir>-12 && body_down<50 && low[idx]-low[idx-1]>30 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir=0;
           if (date_candle.hour<11 && filter.VWAP_CROSS && RSI[idx]<35 && candle_hi>30 && high[idx]>MathMax(open[idx-1],close[idx-1]) && high[idx-1]-low[idx]>pts_maxsize && close[idx]<loBand[idx] && high[idx-1]>upBand[idx-1] && stdDev[idx]<170 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-pricestats.min_dayprice<90) aux_dir=0;
           if (date_candle.hour>9 && date_candle.hour<14 && mycounters.c_down>2 && RSI[idx]<35 && stdDev[idx]>250 && ATR[idx]>2*pts_size2 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && close[idx]<loBand[idx] && VWAP[idx]-close[idx]>pts_maxsize && aux_dir<-2) aux_dir+=2;
           if (date_candle.hour>9 && filter.VWAP_LASTCROSS && filter.NO_VWAP_CROSS && mycounters.c_down>1 && RSI[idx]<32 && low[idx]-pricestats.min_dayprice<pts_size && pricestats.max_dayprice-pricestats.min_dayprice>3*pts_size2 && low[idx]-pricestats.min_lastdayprice<3*pts_size2 && high[idx]<VWAP[idx] && low[idx]<loBand[idx] && candle_hi>pts_size/2) aux_dir=0;
           if (date_candle.hour>10 && date_candle.hour<14 && filter.VWAPCROSS && mycounters.sarbuy>1 && filter.tdf_color==0 && aux_dir<-5 && MAFast[idx]-HILO2[idx]>50 && high[idx]-low[idx]>2*pts_size2 && MathAbs(stdDev[idx]-stdDev[idx-1])<15 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir+=5;
           if (date_candle.hour>10 && aux_dir<-1 && filter.VWAPCROSS && filter.HILO_BUY && (filter.MIBAND_UP || mycounters.sarbuy>1) && HILO2[idx]-close[idx]<30 && MAFast[idx]-close[idx]<30) aux_dir++;
           if (date_candle.hour>10 && filter.VWAP_CROSS && filter.tdf_color!=2 && mycounters.c_down>2 && aux_dir<-1 && body_down<2*candle_lo && candle_lo>100 && low[idx]<MA200[idx] && close[idx]-MA200[idx]>60) aux_dir++;
           if (date_candle.hour>10 && !filter.VWAP_DOWN && filter.tdf_color!=2 && mycounters.sarbuy>2 && candle_lo>20 && high[idx-1]-low[idx]>330 && low[idx]-SAR[idx]>pts_size2 && RSI[idx]>45 && low[idx]-VWAP[idx]<30 && close[idx]-VWAP[idx]>35 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1]) aux_dir++;
           if (date_candle.hour>10 && mycounters.c_down>2 && stdDev[idx]>2*pts_size && RSI[idx]<35 && SAR[idx]-low[idx]>pts_maxsize2 && idx-mycounters.c_down>0 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2 && MFI[idx-mycounters.c_down]-MFI[idx]>35 && MA200[idx]-low[idx]>pts_maxsize2 && VWAP[idx]-close[idx]>pts_size && (body_down<aux_abslast/2 || candle_hi>pts_size/2 || candle_lo>pts_size/2) && aux_dir<-3) aux_dir+=3;
           if (date_candle.hour>11 && (filter.tdf_color==0 || filter.HILO_BUY || mycounters.sarbuy>0) && aux_dir<-1 && aux_dir>-12 && tick_volume[idx]<35000 && body_down<pts_size/2 && candle_lo>body_down && MathAbs(stdDev[idx]-stdDev[idx-1])<11 && low[idx]-loBand[idx]<pts_size/3) aux_dir++;
           if (date_candle.hour>11 && date_candle.hour<14 && mycounters.c_down>1 && body_down<150 && candle_lo>30 && body_down<aux_abslast/2 && MathAbs(stdDev[idx]-stdDev[idx-1])<30 && MA100[idx]<MA50[idx] && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && vwap_distance>pts_maxsize) aux_dir=0;
           if (date_candle.hour>11 && mycounters.c_down>2 && pricestats.first_bar>1 && RSI[idx]<29 && stdDev[idx]<150 && body_down<aux_abslast && VWAP[idx]-high[idx]>pts_size && high[idx-mycounters.c_down]-low[idx]>pts_maxsize && low[idx]-MA200[idx]>pts_maxsize && MA200[idx]>MA200[idx-1] && VWAP[idx]-MA200[idx]>pts_maxsize && aux_dir<-1 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>11 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx>16 && low[idx]>VWAP[idx] && candle_lo>30 && MAFast[idx]-MA25[idx]>100 && low[idx]-MA25[idx]<80 && close[idx]-MA25[idx]>100 && MA25[idx]-MA50[idx]>50 && MA50[idx]-MA100[idx]>50 && aux_dir<-2) aux_dir+=2;
           if (date_candle.hour>11 && filter.VWAP_CROSS && MathAbs(stdDev[idx]-stdDev[idx-1])<30 && MathAbs(MAFast[idx]-VWAP[idx])<10 && candle_lo>30 && aux_dir<-1 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>12 && mycounters.sarsell>16 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx>24 && VWAP[idx]-high[idx]>pts_maxsize && vwap_distance>pts_maxsize2 && aux_dir<0 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>12 && (date_candle.day_of_week==3 || date_candle.day_of_week==4 || MFI[idx]<20 || RSI[idx]<35) && filter.VWAP_CROSS && filter.VWAP_UP && mycounters.sarsell>6 && set_force==0 && VWAP[idx]-close[idx]<pts_size/3) aux_dir=0;
           if (date_candle.hour>12 && filter.NO_VWAPCROSS && idx-pricestats.vwap_idx>16 && low[idx]-VWAP[idx]>2*pts_size2 && MA200[idx]-VWAP[idx]>pts_size2 && low[idx]-MA200[idx]<50 && close[idx]-MA200[idx]>30 && aux_dir<0 && aux_dir>-15) aux_dir=0;
           if (date_candle.hour>13 && filter.NO_VWAPCROSS && filter.tdf_color==0 && mycounters.c_down>1 && mycounters.sarbuy>1 && aux_dir>-12 && high[idx]<VWAP[idx] && stdDev[idx]<98 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-loBand[idx]<10) aux_dir=0;
           if (date_candle.hour>13 && filter.VWAP_CROSS && mycounters.c_down>3 && mycounters.sarsell>5 && MFI[idx]<17 && RSI[idx]<35 && close[idx]-VWAP[idx]<pts_size) aux_dir=0;
           if (date_candle.hour>13 && aux_dir>-10 && body_down<50 && body_down<aux_abslast/3 && stdDev[idx]<80 && open[idx]<VWAP[idx] && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-loBand[idx]<100) aux_dir=0;
           if (date_candle.hour>13 && filter.VWAP_CROSS && mycounters.sarsell>12 && stdDev[idx]<stdDev[idx-1] && (stdDev[idx-1]<stdDev[idx-2] || tick_volume[idx]<40000) && tick_volume[idx]<50000 && low[idx]<loBand[idx] && MathAbs(MAFast[idx]-miBand[idx])<50 && aux_dir<-5 && aux_dir>-15) aux_dir+=5;
           if (date_candle.hour>13 && filter.NO_VWAPCROSS && RSI[idx]<31 && idx-pricestats.vwap_idx>32 && VWAP[idx]-low[idx]>pts_maxsize2 && VWAP[idx]-high[idx]>250 && MA25[idx]-high[idx]>60 && pricestats.max_dayprice-low[idx]>1100 && aux_dir<0 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>13 && filter.VWAP_UP && candle_lo>50 && close[idx]-VWAP[idx]>50 && low[idx]-VWAP[idx]<30 && low[idx-1]-VWAP[idx-1]>50 && MAFast[idx]>MA25[idx] && MA200[idx]>MA200[idx-1] && low[idx]>MA200[idx] && aux_dir<0 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>14 && filter.VWAP_CROSS && aux_dir<-3 && low[idx-1]>VWAP[idx-1] && VWAP[idx]-MA200[idx]>70 && MA200[idx]>MA200[idx-1] && low[idx]-MA200[idx]<100) aux_dir+=3;
           if (date_candle.hour>14 && filter.VWAP_UP && filter.NO_VWAPCROSS && candle_lo>50 && candle_lo>candle_hi && aux_dir<-2 && aux_dir>-12 && MA200[idx]>VWAP[idx] && low[idx]-MA200[idx]<30 && close[idx]-MA200[idx]>60 && low[idx]>VWAP[idx]) aux_dir+=2;
           if (date_candle.hour>14 && aux_dir>-12 && candle_lo>30 && stdDev[idx]<90 && stdDev[idx]<stdDev[idx-1] && open[idx]<VWAP[idx] && pricestats.max_dayprice-low[idx]>2*pts_size2) aux_dir=0;
           if (date_candle.hour>14 && aux_dir<-2 && body_down<100 && candle_lo>30 && body_down<2*candle_lo && stdDev[idx]<120 && MathAbs(stdDev[idx]-stdDev[idx-1])<10 && open[idx]<VWAP[idx] && close[idx]>low[idx-1]) aux_dir+=2;
           if (date_candle.hour>14 && filter.VWAP_CROSS && candle_lo>15 && RSI[idx]<35 && ATR[idx]>2*pts_size2 && low[idx]<loBand[idx] && high[idx-1]-low[idx]>550) aux_dir=0;
           if (date_candle.hour>14 && mycounters.sarsell>6 && mycounters.c_down>1 && pricestats.vwap_count>9 && idx-pricestats.vwap_idx<4 && stdDev[idx]<pts_size && tick_volume[idx]<50000 && RSI[idx]<31 && VWAP[idx]-close[idx]>50 && candle_lo>1) aux_dir=0;
           if (date_candle.hour>15 && mycounters.sarsell>3 && pricestats.vwap_count>9 && idx-pricestats.vwap_idx<4 && VWAP[idx]-close[idx]>50 && tick_volume[idx]<50000 && candle_lo>10 && (aux_dir>-12 || date_candle.hour>16)) aux_dir=0;
           if (date_candle.hour>15 && filter.NO_VWAPCROSS && high[idx]<VWAP[idx] && VWAP[idx]-low[idx]>2*pts_size2 && MA200[idx-1]-MA200[idx]<3 && MA200[idx]-low[idx]>60 && MA200[idx]-close[idx]<30) aux_dir=0;
           if (date_candle.hour>15 && filter.NO_VWAPCROSS && high[idx]<VWAP[idx] && mycounters.sarbuy>1 && mycounters.c_down>2 && close[idx]-SAR[idx]>pts_size && aux_dir<-2 && aux_dir>-12 && low[idx]-MA200[idx]>100 && MA200[idx]>MA200[idx-1]) aux_dir+=2;
           if (date_candle.hour>15 && filter.VWAP_CROSS && mycounters.sarsell>3 && RSI[idx]<29 && candle_lo>10 && high[idx-1]-low[idx]>pts_maxsize2) aux_dir=0;
           if (date_candle.hour>15 && aux_dir<-2 && candle_lo>22 && stdDev[idx]<pts_size && high[idx-2]-low[idx]>pts_maxsize && (close[idx]<loBand[idx] || (low[idx]<loBand[idx] && close[idx]-loBand[idx]<22))) aux_dir+=2;
           if (date_candle.hour>15 && aux_dir<-2 && candle_lo>5 && open[idx]-MA200[idx]>130 && low[idx]<MA200[idx] && close[idx]-MA200[idx]<30 && high[idx-2]-low[idx]>pts_maxsize2) aux_dir=0;
           if (date_candle.hour>15 && filter.NO_VWAPCROSS && filter.VWAP_UP && idx-pricestats.vwap_idx>(int)((pts_size2/3)-1) && stdDev[idx]<pts_size && candle_lo>10 && low[idx]>VWAP[idx] && MA25[idx]>MA100[idx] && MA25[idx]-MA50[idx]>10 && MA50[idx]-MA100[idx]>10 && low[idx]>MA200[idx] && MA200[idx]>MA200[idx-1] && low[idx]-loBand[idx]<pts_size/2 && open[idx]>MA50[idx] && close[idx]-MA50[idx]<pts_size2/3) aux_dir=0;
           if (date_candle.hour>16 && (filter.HILO_BUY || mycounters.sarbuy>1) && tick_volume[idx]<15000 && candle_lo>0 && close[idx]>low[idx-1] && body_down<30) aux_dir=0;
           if (date_candle.hour>16 && body_down<70 && aux_dir<0 && aux_dir>-12 && idx-pricestats.vwap_idx>16 && ATR[idx]<200 && tick_volume[idx]<20000 && high[idx]<VWAP[idx]) aux_dir++;
           if (date_candle.hour>16 && date_candle.min>25 && body_down<150 && tick_volume[idx]<25000 && high[idx]<VWAP[idx] && aux_dir<-1 && aux_dir>-12) aux_dir++;
           if (date_candle.hour>16 && date_candle.min>25 && filter.tdf_color==0 && body_down<150 && tick_volume[idx]<25000 && VWAP[idx]-high[idx]>pts_size2 && aux_dir<-1 && aux_dir>-12) aux_dir++;
           //if (date_candle.hour>11 && filter.HILO_BUY && filter.MED_UP && filter.MIBAND_UP && mycounters.c_down<2 && mycounters.sarbuy>1 && Force[idx]>0 && body_down<50 && low[idx]-MAFast[idx]>60 && MAFast[idx]>HILO2[idx]) aux_dir=0;
           if (date_candle.hour>9 && date_candle.hour<12 && filter.HILO_BUY && mycounters.sarbuy>1 && candle_lo>10 && close[idx]-open[idx-2]>50 && low[idx]<MAFast[idx] && MAFast[idx]-close[idx]<10 && close[idx]>(open[idx-2]+close[idx-2])/2) aux_dir=0;
           if (aux_dir<0 && aux_dir>-13 && pricestats.bars_day<5 && mycounters.c_down>1 && open[idx]<VWAP[idx] && body_down<pts_size && body_down<aux_abslast/3 && candle_hi>body_up && candle_lo>body_down && MAFast[idx]-MA25[idx]>15) aux_dir=0;
           if (aux_dir<0 && aux_dir>-13 && mycounters.sarsell>2 && RSI[idx]<32 && VWAP[idx]-high[idx]>pts_size && MA200[idx]>MA200[idx-1] && close[idx]>MA200[idx] && low[idx]-MA200[idx]<(pts_size2)/2 && MA25[idx]-MA200[idx]>pts_size2 && low[idx]-pricestats.min_dayprice<pts_size/3) aux_dir=0;
           if (aux_dir<0 && aux_dir>-13 && mycounters.c_down>1 && filter.NO_VWAPCROSS && filter.VWAP_UP && idx-pricestats.vwap_idx>16 && tick_volume[idx]<50000 && open[idx-1]-close[idx]>250 && low[idx]-VWAP[idx]>250 && low[idx]-MA200[idx]>250 && MA200[idx]>MA200[idx-1] && MAFast[idx]-MA25[idx]>pts_size2 && low[idx]-MA25[idx]<150 && high[idx-1]>MAFast[idx-1]) aux_dir++;
           if (aux_dir<-13 && date_candle.hour>10 && mycounters.c_down>2 && RSI[idx]<38 && Force[idx]<-5000000 && candle_hi>100 && VWAP[idx]-open[idx]>100 && high[idx-mycounters.c_down]-low[idx]>pts_maxsize2) aux_dir=0;
           if (aux_dir<-3 && aux_dir>-10 && RSI[idx]<36 && low[idx]-pricestats.min_dayprice<400 && high[idx]<VWAP[idx] && high[idx-1]>VWAP[idx-1] && high[idx-1]-low[idx]>450 && candle_lo>30) aux_dir+=2;
           if (aux_dir<-3 && aux_dir>-14 && date_candle.hour>14 && filter.NO_VWAPCROSS && filter.HILO_BUY && RSI[idx]>55 && tick_volume[idx]<45000 && low[idx]>VWAP[idx] && mycounters.sarbuy>1 && (MA200[idx]>MA200[idx-1] || VWAP[idx]>MA200[idx])) aux_dir+=3;
        }
     }

     if (tick_volume[idx]>10000 && stdDev[idx]>pts_size && stdDev[idx]<pts_maxsize2) {
        if (type==1 && idx>5 && filter.VWAP_CROSS && pricestats.bars_day>2 && date_candle.hour<12 && ATR[idx]>100 && ATR[idx]<pts_maxsize && stdDev[idx]<2*pts_size2 && candle_hi<50 && candle_lo<50 && aux_abs>2*aux_abslast && aux_abslast<100) {
           if (filter.tdf_color!=2 && mycounters.c_up<4 && aux_dir<10 && RSI[idx]<75 && RSI[idx]-RSI[idx-1]>13 && RSI[idx-1]<50 && low[idx]>low[idx-1] && Force[idx-1]<3000000 && aux_dir>-10) {
              if (!(filter.VWAP_DOWN && filter.MIBAND_DOWN) && MA25[idx]-MAFast[idx]<15 && VWAP[idx-1]-low[idx-1]>50 && close[idx-1]<VWAP[idx-1] && VWAP[idx]-open[idx]>30 && close[idx]-VWAP[idx]>50 && MAFast[idx]-high[idx]<100 && close[idx]-MA200[idx]>50 && body_up>pts_size2 && body_up>5*candle_hi && body_up>5*candle_lo && candle_hi<35 && close[idx]-high[idx-1]>60 && (low[idx-3]>VWAP[idx-3] || low[idx-4]>VWAP[idx-4] || low[idx-5]>VWAP[idx-5])) {
                 aux_dir+=11;
                 set_force=1;
              }
           }
        }
        if (date_candle.hour>10 && date_candle.hour<17 && date_candle.day_of_week<5 && filter.VWAP_LASTCROSS && tick_volume[idx]>35000 && tick_volume[idx]<90000) {
           if (aux_dir>-3 && !filter.VWAP_DOWN && filter.tdf_color!=2 && mycounters.c_up<4 && RSI[idx]>45 && RSI[idx]<65 && body_up>50 && candle_hi<150 && close[idx]>high[idx-1] && close[idx]-MAFast[idx]>30 && MAFast[idx-1]-open[idx-1]>30 && open[idx]>VWAP[idx] && VWAP[idx-2]-low[idx-2]>30 && close[idx-3]>VWAP[idx-3] && close[idx]-VWAP[idx]>100 && MAFast[idx]>MA25[idx] && MAFast[idx-1]>MA25[idx-1] && upBand[idx]>close[idx] && pricestats.max_dayprice-high[idx]>pts_maxsize) {
              aux_dir+=5;
           }
           else if (aux_dir<3 && !filter.VWAP_UP && filter.tdf_color!=1 && mycounters.c_down<4 && RSI[idx]<55 && RSI[idx]>35 && body_down>50 && candle_lo<150 && close[idx]<low[idx-1] && MAFast[idx]-close[idx]>30 && open[idx-1]-MAFast[idx-1]>30 && open[idx]<VWAP[idx] && high[idx-2]-VWAP[idx-2]>30 && close[idx-3]<VWAP[idx-3] && VWAP[idx]-close[idx]>100 && MAFast[idx]<MA25[idx] && MAFast[idx-1]<MA25[idx-1] && close[idx]>loBand[idx] && low[idx]-pricestats.min_dayprice>pts_maxsize) {
              aux_dir-=5;
           }
        }
        if (type==1 && date_candle.hour>9 && date_candle.hour<16 && filter.VWAP_LASTCROSS && tick_volume[idx]>15000 && aux_abs<pts_maxsize2 && candle_hi<pts_size/2 && candle_lo<pts_size/2 && vwap_distance<2*pts_maxsize2) {
           if ((filter.VWAP_UP || filter.MIBAND_UP || filter.SAR_INVERTBUY) && filter.HILO_BUY && mycounters.c_up<4 && mycounters.sarbuy<20 && aux_dir>-3 && MAFast[idx]>MA25[idx] && MA25[idx]>VWAP[idx] && MathAbs(MA200[idx]-close[idx])>pts_size2 && MFI[idx]<90) {
              if ((filter.MIBAND_DOWN || filter.VWAP_DOWN || high[idx]>upBand[idx]) && high[idx]<MA200[idx] && high[idx]<MA100[idx]);
              else if (body_up>pts_size && body_up>5*candle_hi && body_up>5*candle_lo && RSI[idx]<75 && close[idx]-VWAP[idx]>pts_size/2 && close[idx]>MA50[idx] && low[idx-1]<MAFast[idx-1] && close[idx]-MAFast[idx]>pts_size/5) aux_dir+=9;
           }
           else if ((filter.VWAP_DOWN || filter.MIBAND_DOWN || filter.SAR_INVERTSELL) && filter.HILO_SELL && mycounters.c_down<4 && mycounters.sarsell<20 && aux_dir<3 && MAFast[idx]<MA25[idx] && MA25[idx]<VWAP[idx] && MathAbs(MA200[idx]-close[idx])>pts_size2 && MFI[idx]>20) {
              if ((filter.MIBAND_UP || filter.VWAP_UP || low[idx]<loBand[idx]) && low[idx]>MA200[idx] && low[idx]>MA100[idx]);
              else if (body_down>pts_size && body_down>5*candle_hi && body_down>5*candle_lo && RSI[idx]>25 && VWAP[idx]-close[idx]>pts_size/2 && close[idx]<MA50[idx] && low[idx-1]>MAFast[idx-1] && MAFast[idx]-close[idx]>pts_size/3) aux_dir-=9;
           }
        }
     }

     // Keep trade position
     if (date_candle.hour>9 && date_candle.hour<14 && set_force==0) {
        if (apftrade.trade_dir>0 && idx-pricestats.vwap_idx<6) {
           if (apftrade.trade_dir==1 && filter.VWAP_UP && Force[idx]>0) {
              if (filter.tdf_color!=2 && aux_dir>-8 && RSI[idx]>50 && low[idx]>VWAP[idx] && MAFast[idx]>VWAP[idx] && close[idx]>MAFast[idx] && low[idx]-apftrade.trade_open>0 && pricestats.max_lastdayprice-high[idx]>2*pts_maxsize2) aux_dir=0;
              else {
                 if (filter.tdf_color==1 && filter.HILO_BUY && mycounters.c_down<3 && mycounters.sarbuy>0 && Force[idx]>2*pts_maxsize2 && pricestats.max_lastdayprice-high[idx]>2*pts_maxsize2 && low[idx]-apftrade.trade_open>0)
                    if (MAFast[idx]-MA25[idx]>30 && low[idx]>MA25[idx] && close[idx]>MAFast[idx] && low[idx]-MAFast[idx]<30) aux_dir=0;
              }
           }
           else if (apftrade.trade_dir==2 && filter.VWAP_DOWN && Force[idx]<0) {
              if (filter.tdf_color!=1 && aux_dir<8 && RSI[idx]<50 && high[idx]<VWAP[idx] && MAFast[idx]<VWAP[idx] && close[idx]<MAFast[idx] && apftrade.trade_open-high[idx]>0 && low[idx]-pricestats.min_lastdayprice>2*pts_maxsize2) aux_dir=0;
              else {
                 if (filter.tdf_color!=1 && filter.HILO_SELL && mycounters.c_up<3 && mycounters.sarsell>0 && Force[idx]<-1000 && low[idx]-pricestats.min_lastdayprice>2*pts_maxsize2 && apftrade.trade_open-high[idx]>0)
                    if (filter.VWAP_DOWN && MA25[idx]-MAFast[idx]>30 && high[idx]<MA25[idx] && close[idx]<MAFast[idx] && MAFast[idx]-high[idx]<30) aux_dir=0;
              }
           }
        }
     }
  
     if (date_candle.hour>9 && stdDev[idx]>50 && stdDev[idx]<pts_maxsize2 && vwap_distance<pts_maxsize2 && tick_volume[idx]>5000) {
        if (filter.NO_VWAPCROSS && date_candle.hour>13 && date_candle.hour<17 && date_candle.day_of_week<5 && stdDev[idx]>90 && candle_lo<100 && candle_hi<100) {
           if (filter.MED_UP && filter.HILO_BUY && mycounters.c_up==1 && mycounters.sarbuy>1 && mycounters.sarbuy<12 && RSI[idx]>50 && pricestats.max_dayprice-high[idx]>900 && low[idx]-pricestats.min_dayprice>450) {
              if (body_up>50 && body_up>candle_hi/2 && aux_dir<8 && VWAP[idx-1]-high[idx-1]>pts_size2 && high[idx]<VWAP[idx] && low[idx]>MAFast[idx] && low[idx]-MAFast[idx]<pts_maxsize && MA200[idx]-open[idx]>15 && close[idx]-MA200[idx]>30) aux_dir+=10;
           }
           else if (filter.MED_DOWN && filter.HILO_SELL && mycounters.c_down==1 && mycounters.sarsell>1 && mycounters.sarsell<12 && RSI[idx]<50 && low[idx]-pricestats.min_dayprice>900 && pricestats.max_dayprice-high[idx]>450) {
              if (body_down>50 && body_down>candle_lo/2 && aux_dir>-8 && low[idx-1]-VWAP[idx-1]>pts_size2 && low[idx]>VWAP[idx] && high[idx]<MAFast[idx] && MAFast[idx]-high[idx]<pts_maxsize && open[idx]-MA200[idx]>15 && MA200[idx]-close[idx]>30) aux_dir-=10;
           }
        }
        if (date_candle.hour<15 && stdDev[idx]<400 && aux_abs>2*aux_abslast && vwap_distance<pts_maxsize && idx-pricestats.vwap_idx<16) {
           if (mycounters.c_up<3 && body_up>pts_size && body_up>3*candle_hi && candle_hi<100 && close[idx]-high[idx-1]>30 && open[idx-2]-high[idx-1]>30 && low[idx]-low[idx-1]>50 && low[idx-2]-low[idx-1]>50) {
              if (RSI[idx-1]<45 && high[idx]-low[idx-1]<450 && close[idx]>MAFast[idx] && open[idx]<VWAP[idx] && (high[idx]>VWAP[idx] || (open[idx]<MA200[idx] && close[idx]-MA200[idx]>30)))
                 aux_dir=10;
           }
           else if (mycounters.c_down<3 && body_down>pts_size && candle_lo<100 && low[idx-1]-close[idx]>30 && high[idx-1]-high[idx]>50 && high[idx-1]-high[idx-2]>50) {
              if (RSI[idx]>55 && high[idx-1]-low[idx]<450 && open[idx]>VWAP[idx] && (low[idx]<VWAP[idx] || (open[idx]>MA200[idx] && MA200[idx]-close[idx]>30)))
                 aux_dir=-10;
           }
        }
        if (date_candle.hour<16 && filter.NO_VWAPCROSS && stdDev[idx]>pts_maxsize && stdDev[idx]<pts_maxsize2 && pricestats.max_dayprice-pricestats.min_dayprice>pts_maxsize2) {
           if (body_down>pts_size && body_down>5*candle_lo && candle_lo<pts_size/3 && close[idx]<low[idx-1] && close[idx]<low[idx-2] && close[idx]-pricestats.min_dayprice>pts_maxsize2 && (MFI[idx]<75 || MFI[idx]<MFI[idx-1])) {
              if (RSI[idx]<55 && low[idx]-VWAP[idx]>pts_maxsize/2 && high[idx]>MA200[idx] && MA200[idx]-close[idx]>pts_size/3 && MAFast[idx]-close[idx]>pts_size/3 && close[idx]-MA25[idx]>pts_size) {
                 aux_dir=-5;
                 if (body_down>2*aux_abslast && close[idx-2]-open[idx-2]>aux_abslast && RSI[idx-2]-RSI[idx]>9 && open[idx]>miBand[idx] && close[idx]<miBand[idx]) aux_dir-=7;
              }
           }
        }

        if (date_candle.hour<17 && filter.VWAP_CROSS && aux_abs>2*aux_abslast && aux_abs>2*candle_hi && aux_abs>2*candle_lo && candle_hi<55 && candle_lo<55) {
           if (date_candle.day_of_week<5 && open[idx]<MAFast[idx] && close[idx]-MAFast[idx]>30 && close[idx]-MA200[idx]>50 && MA200[idx]>=MA200[idx-1] && pricestats.max_dayprice-high[idx]>pts_maxsize && ((open[idx]<MA25[idx] && close[idx]-MA25[idx]>30) || (open[idx]<MA200[idx] && close[idx]-MA200[idx]>30))) {
              if (Force[idx]<6000000 && RSI[idx]<70 && RSI[idx]>45 && body_up>pts_size && MathMin(open[idx-1],close[idx-1])-low[idx-1]>aux_abslast && open[idx-2]-close[idx-2]>50 && close[idx]>high[idx-2] && MathAbs(low[idx]-low[idx-2])<50 && close[idx]-VWAP[idx]>30 && open[idx-3]-close[idx-2]>3*aux_abslast && low[idx]-low[idx-1]>30 && low[idx-2]-low[idx-1]>30) {
                 aux_dir+=2;
                 if (body_up>150) {
                    aux_dir+=10;
                    set_force=1;
                 }
              }
           }
           else if (open[idx]>MAFast[idx] && MAFast[idx]-close[idx]>30 && MA200[idx]-close[idx]>50 && MA200[idx]<=MA200[idx-1] && low[idx]-pricestats.min_dayprice>pts_maxsize && ((open[idx]>MA25[idx] && MA25[idx]-close[idx]>30) || (open[idx]>MA200[idx] && MA200[idx]-close[idx]>30))) {
              if (Force[idx]>-6000000 && RSI[idx]>29 && RSI[idx]<55 && body_down>pts_size && high[idx-1]-MathMax(open[idx-1],close[idx-1])>aux_abslast && close[idx-2]-open[idx-2]>50 && close[idx]<low[idx-2] && MathAbs(high[idx]-high[idx-2])<50 && VWAP[idx]-close[idx]>30 && close[idx-2]-open[idx-3]>3*aux_abslast && high[idx-1]-high[idx]>30 && high[idx-1]-high[idx-2]>30) {
                 aux_dir-=2;
                 if (body_down>150) {
                    aux_dir-=10;
                    set_force=1;
                 }
              }
           }
        }
     }

     // Mandatory close positions
     if (apftrade.trade_dir>0 && type==0) {
        int aux_idx=idx;
        double real_bodyup=body_up, real_bodydown=body_down;
        double real_abs=aux_abs, real_abslast=aux_abslast, candlereal_hi=candle_hi, candlereal_lo=candle_lo;
        if (i==idx) {
           aux_idx=i-1;
           real_abs=auxlast_abs;
           real_abslast=auxlast_abslast;
           candlereal_hi=candlelast_hi;
           candlereal_lo=candlelast_lo;
        }
        if (apftrade.trade_dir==1) {
           if (date_candle.hour<10 && filter.VWAP_CROSS && (body_up<35 || real_bodyup<35) && high[idx-1]-high[idx-2]>100 && high[idx-1]-close[idx-1]>5*aux_abslast && high[idx-1]-close[idx-1]>2*(open[idx-1]-low[idx-1])) aux_dir=-4;
           else if (date_candle.hour>11 && filter.HILO_INVERTSELL && VOLUME_UP && mycounters.sarsell>0 && aux_dir>-3 && stdDev[idx]<130 && idx-pricestats.vwap_idx>12 && (real_bodydown>pts_size || body_down>pts_size) && (body_down>2*candle_lo || real_bodydown>2*candlelast_lo) && (low[idx-2]-close[idx]>35 || low[idx-1]-close[idx]>35) && MAFast[idx]<miBand[idx] && close[idx]<MAFast[idx] && close[idx-1]>MAFast[idx-1]) aux_dir=-4;
           else if (filter.VWAP_CROSS && body_down>pts_size && close[idx]<low[idx-1] && high[idx-1]>upBand[idx-1] && RSI[idx-1]-RSI[idx]>6 && (Force[idx]<0 || (date_candle.hour>10 && RSI[idx-1]-RSI[idx]>12 && high[idx-1]-high[idx]>30)) && high[idx-1]>VWAP[idx-1] && VWAP[idx]-VWAP[idx-1]<12 && low[idx-2]<VWAP[idx-2] && close[idx-1]>VWAP[idx-1] && open[idx]-VWAP[idx]>30 && VWAP[idx]-close[idx]>50) aux_dir=-4;
           else if (apftrade.bars_trade>1 && idx-pricestats.vwap_idx<5 && filter.tdf_color!=1 && Force[idx]<0 && stdDev[idx]>250 && ATR[idx]>2*pts_size2 && RSI[idx]<50 && RSI[idx-1]-RSI[idx]>5 && tick_volume[idx]>50000 && close[idx]<low[idx-1] && body_down>170 && aux_abslast>100 && low[idx]<MAFast[idx] && high[idx]-pricestats.min_dayprice>pts_maxsize && (close[idx]<miBand[idx] || close[idx]<MAFast[idx])) {
             aux_dir=-4;
             //invert=1;
           }
           else if (idx>5 && filter.MED_DOWN && filter.VWAP_CROSS && mycounters.sarbuy>5 && mycounters.c_down>2 && RSI[idx-3]-RSI[idx]>12 && close[idx-1]>MAFast[idx-1] && close[idx]<MAFast[idx] && low[idx-2]>VWAP[idx-2] && close[idx]<=VWAP[idx]) aux_dir=-4;
           else if (mycounters.c_down>1 && filter.VWAP_CROSS && tick_volume[idx]>20000 && close[idx-1]>VWAP[idx-1] && VWAP[idx]-close[idx]>30 && body_down>pts_size && aux_abslast>pts_size/2 && candle_lo<20 && body_down>3*candle_hi && body_down>3*candle_lo) aux_dir=-4;
           else if ((idx-pricestats.vwap_idx<3 || date_candle.hour>15) && Force[idx-1]>1000000 && candle_lo<50 && candle_hi>candle_lo && aux_abs<aux_abslast/2 && high[idx]-high[idx-1]>50 && close[idx-1]-close[idx]>10 && high[idx]-low[idx-2]>pts_maxsize && high[idx]-close[idx]>90 && open[idx]-close[idx]>15 && candle_hi>2*aux_abs && upBand[idx]-high[idx]<250 && pricestats.max_dayprice-high[idx]<150) aux_dir=-4;
           else if (i==idx && (aux_idx-pricestats.vwap_idx<3 || date_candle.hour>15) && Force[aux_idx-1]>1000000 && candlereal_lo<50 && candlereal_hi>candlereal_lo && real_abs<real_abslast/2 && high[aux_idx]-high[aux_idx-1]>50 && close[aux_idx-1]-close[aux_idx]>10 && high[aux_idx]-low[aux_idx-2]>pts_maxsize && high[aux_idx]-close[aux_idx]>90 && open[aux_idx]-close[aux_idx]>15 && candlereal_hi>2*real_abs && upBand[aux_idx]-high[aux_idx]<250 && pricestats.max_dayprice-high[aux_idx]<150) aux_dir=-4;           
        }
        else if (apftrade.trade_dir==2) {
           if (date_candle.hour<10 && filter.VWAP_CROSS && (body_down<35 || real_bodydown<35) && low[idx-2]-low[idx-1]>100 && close[idx-1]-low[idx-1]>5*aux_abslast && close[idx-1]-low[idx-1]>2*(high[idx-1]-open[idx-1])) aux_dir=-5;
           else if (date_candle.hour>12 && filter.HILO_INVERTBUY && VOLUME_UP && mycounters.sarbuy>0 && aux_dir<4 && tick_volume[idx-1]<tick_volume[idx-2] && stdDev[idx]<130 && idx-pricestats.vwap_idx>12 && (body_up==110 || real_bodyup>pts_size) && (body_up>2*candle_hi || real_bodyup>2*candlereal_hi) && close[idx]-high[idx-2]>30 && close[idx]-high[idx-1]>30 && MAFast[idx]>miBand[idx] && close[idx]>MAFast[idx] && close[idx-1]<MAFast[idx-1]) aux_dir=4;
           else if (filter.VWAP_CROSS && body_up>pts_size && RSI[idx]-RSI[idx-1]>6 && (Force[idx]>0 || (RSI[idx]-RSI[idx-1]>12 && low[idx]-low[idx-1]>30)) && low[idx-1]<VWAP[idx-1] && VWAP[idx-1]-VWAP[idx]<12 && high[idx-2]>VWAP[idx-2] && close[idx-1]<VWAP[idx-1] && VWAP[idx]-open[idx]>30 && close[idx]-VWAP[idx]>50) aux_dir=4;
           else if (apftrade.bars_trade>1 && idx-pricestats.vwap_idx<5 && filter.tdf_color!=2 && Force[idx]>0 && stdDev[idx]>pts_size && ATR[idx]>2*pts_size2 && RSI[idx]>49 && RSI[idx]-RSI[idx-1]>5 && tick_volume[idx]>50000 && close[idx]>high[idx-1] && body_up>pts_size2 && high[idx]>MAFast[idx] && pricestats.max_dayprice-low[idx]>pts_maxsize && (close[idx]>miBand[idx] || close[idx]>MAFast[idx])) {
             aux_dir=4;
             //invert=1;
           }
           //else if (idx>5 && filter.MED_UP && filter.VWAP_CROSS && mycounters.sarsell>5 && mycounters.c_up>2 && RSI[idx]-RSI[idx-3]>12 && close[idx-1]<MAFast[idx-1] && close[idx]>MAFast[idx] && high[idx-2]<VWAP[idx-2] && close[idx]>=VWAP[idx]) aux_dir=+4;
           //else if (mycounters.c_up>1 && filter.VWAP_CROSS && tick_volume[idx]>30000 && close[idx-1]<VWAP[idx-1] && VWAP[idx]-open[idx]>30 && close[idx]-VWAP[idx]>30 && body_up>pts_size && aux_abslast>pts_size && candle_hi<20 && body_up>3*candle_hi && body_up>3*candle_lo) aux_dir=4;
           else if ((idx-pricestats.vwap_idx<3 || date_candle.hour>15) && RSI[idx-1]<38 && candle_hi<90 && aux_abs<aux_abslast/2 && low[idx-1]-low[idx]>50 && close[idx]-close[idx-1]>10 && high[idx-2]-low[idx]>pts_maxsize && close[idx]-low[idx]>90 && close[idx]-open[idx]>15 && candle_lo>2*aux_abs && low[idx]-loBand[idx]<150 && low[idx]-pricestats.min_dayprice<150) aux_dir=4;
           else if (i==idx && (aux_idx-pricestats.vwap_idx<3 || date_candle.hour>15) && RSI[aux_idx-1]<38 && candlereal_hi<90 && real_abs<real_abslast/2 && low[aux_idx-1]-low[aux_idx]>50 && close[aux_idx]-close[aux_idx-1]>10 && high[aux_idx-2]-low[aux_idx]>pts_maxsize && close[aux_idx]-low[aux_idx]>90 && close[aux_idx]-open[aux_idx]>15 && candlereal_lo>2*real_abs && low[aux_idx]-loBand[aux_idx]<150 && low[aux_idx]-pricestats.min_dayprice<150) aux_dir=4;
        }
     }



     if (type==1) {
        if (date_candle.hour>15 && idx-pricestats.vwap_idx>24) {
           if (low[idx]>VWAP[idx] && aux_dir>9) aux_dir=0;
           else if (stdDev[idx]<pts_size && high[idx]<VWAP[idx] && aux_dir<-9) aux_dir=0;
        }

        // Open position
        if (pricestats.bars_day>2 && idx>1) {
           if ((aux_dir>10 || (aux_dir>8 && trade_start==0)) && (high[idx]-open[idx]<400 || set_force==1)) {
              ret=1;
           }
           else if ((aux_dir<-9 || (aux_dir<-8 && trade_start==0)) && (open[idx]-low[idx]<400 || set_force==1)) {
              ret=2;
           }
        }
     }
     else if (type==0) {
        // Close position
        if ((apftrade.trade_dir==1 && aux_dir<-3) || (apftrade.trade_dir==2 && aux_dir>3))
           ret=0;
        else ret=apftrade.trade_dir;
     }

     return(ret);
  }
//+------------------------------------------------------------------+
