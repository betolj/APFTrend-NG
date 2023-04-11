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
        const double &VWAP[], const double &HILO[], double &HILO2[], const double &SAR[], const double &RSI[], const double &MFI[], const double &ATR[],
        const double &Force[], const double &stdDev[], const double &miBand[], const double &upBand[], const double &loBand[], const double &miBand2[], const double &upBand2[], const double &loBand2[], const double &ADX[], const double &upADX[], const double &loADX[],
        const double &MAFast[], const double &MASlow[], const double &MA25[], const double &MA50[], const double &MA100[], const double &MA200[], stru_filter &filter, stru_trade &apftrade, stru_counters &mycounters, stru_stats &pricestats) export
  {
     int ret=0, aux_dir=0, MAFastSize=ArraySize(MAFast);
     MqlDateTime date_candle;
     if (i-1<6 && pricestats.first_bar<1) return(ret);

     int trade_start=0, force_trade=0;
     bool VOLUME_UP = tick_volume[i-1]>tick_volume[i-1];
     double gain_pts=0, loss_pts=0;
     double aux_abs = MathAbs(close[i-1]-open[i-1]);
     double aux_abslast = MathAbs(close[i-2]-open[i-2]);
     double vwap_distance = MathAbs(close[i-1]-VWAP[i-1]);
     double auxlast_abs = MathAbs(close[i]-open[i]);
     double auxlast_abslast = MathAbs(close[i-1]-open[i-1]);
     double candlelast_hi = high[i-1]-MathMax(open[i-1],close[i-1]);
     double candlelast_lo = MathMin(open[i-1],close[i-1])-low[i-1];

     TimeToStruct(time[i-1],date_candle);
     initCandleMetrics(open[i-1], close[i-1], high[i-1], low[i-1]);

     // Distance in pixels
     // - 0: without abs
     // - 1: with abs
     long candle_height = getHeightInPixels(1, open[i-1], close[i-1]);
     long fullcandle_height = getHeightInPixels(0, high[i-1], low[i-1]);
     long hi_candleheight = getHeightInPixels(0, high[i-1], MathMax(open[i-1],close[i-1]));
     long lo_candleheight = getHeightInPixels(0, MathMin(open[i-1],close[i-1]),low[i-1]);
     long vwap_candleheight = getHeightInPixels(1,close[i-1],VWAP[i-1]);

     // MA200 V
     if (MFI[i-1]>15 && getHeightInPixels(0,MA200[i-1],close[i-1])>candle_height/2)
        if (high[i-1]<MA200[i-1] && high[i-2]>MA200[i-2] && high[i-3]<MA200[i-3])
           if (low[i-1]<miBand[i-1] && low[i-1]<MAFast[i-1] && open[i-2]<MA200[i-2] && close[i-2]<MA200[i-2])
              aux_dir-=10;

     if (apftrade.trade_dir>0) {
        // Close trades
        if (apftrade.trade_dir==1) {
           gain_pts=(high[i-1]-apftrade.trade_open);
           loss_pts=(apftrade.trade_open-low[i-1]);
           if (loss_pts>2*pts_size && close[i-1]<MathMin(open[i-2],close[i-2]) && (loss_pts>2*pts_size || ((i-apftrade.bars_trade-1)>1 && low[i-1]<low[i-apftrade.bars_trade-1]))) aux_dir=-4;

           if (Force[i-1]<3000000 || (gain_pts>pts_maxsize && getHeightInPixels(0,pricestats.max_dayprice,high[i-1])<fullcandle_height/2)) {
              if (mycounters.c_down>1 && candle_height>10) aux_dir--;
              if (open[i-1]<MA50[i-1] && close[i-1]<MA50[i-1] && high[i-1]-MA50[i-1]>pts_size/2) aux_dir--;
              if (open[i-1]<MA100[i-1] && close[i-1]<MA100[i-1] && high[i-1]-MA100[i-1]>pts_size/2) aux_dir--;
              if (open[i-1]<MA200[i-1] && close[i-1]<MA200[i-1] && high[i-1]-MA200[i-1]>pts_size/2) aux_dir--;
              if (apftrade.bars_trade>2) {
                 if (getHeightInPixels(0,pricestats.max_dayprice,high[i-1])<candle_height/2) aux_dir--;
                 if (RSI[i-1]>64 && MFI[i-1]>65 && low[i-1]>VWAP[i-1]) aux_dir-=2;
                 if (aux_dir<9 && gain_pts>pts_size && filter.tdf_color==1 && open[i-1]>upBand[i-1]) aux_dir++;
                 if (gain_pts>pts_size && (filter.HILO_SELL || filter.SAR_SELL || close[i-1]<upBand[i-1] || (filter.VWAP_DOWN && filter.MIBAND_DOWN))) aux_dir--;
                 //if (mycounters.c_down>1 && candle_height>15 && RSI[i-3]>67 && RSI[i-3]-RSI[i-1]>11 && high[i-2]>upBand2[i-2] && high[i-2]>upBand2[i-2] && getHeightInPixels(0,high[i-2],close[i-apftrade.bars_trade])>50) aux_dir-=3;
              }
              if (filter.HILO_BUY && filter.MIBAND_UP && mycounters.sarbuy>0 && apftrade.bars_trade<10 && low[i-1]>miBand[i-1]);
              else if (body_down>0 && candle_height>10 && MFI[i-1]>75 && getHeightInPixels(0,high[i-1],upBand2[i-1])>10 && getHeightInPixels(0,upBand2[i-1],low[i-1])>5) aux_dir=-4;
           }
           if (aux_dir>-3 && filter.MIBAND_UP && upADX[i-1]<loADX[i-2] && upADX[i-2]>loADX[i-3] && close[i-1]<upBand[i-1]) aux_dir-=2;
           if (aux_dir>-3 && !filter.MIBAND_UP && !filter.MIBAND_UP && date_candle.hour>13 && close[i-1]<miBand[i-1] && miBand[i-1]<miBand[i-2] && upBand[i-1]<upBand[i-2] && loBand[i-1]<loBand[i-2] && (date_candle.hour>15 || getHeightInPixels(0,high[i-1],VWAP[i-1])>150)) aux_dir-=2;
           if (aux_dir>-3 && candle_height>15 && date_candle.hour>10 && body_down>2*candle_lo && close[i-1]<low[i-2] && close[i-1]<low[i-3] && RSI[i-2]-RSI[i-1]>12 && getHeightInPixels(0,upBand[i-1],close[i-1])>10 && getHeightInPixels(0,open[i-1],upBand[i-1])>5) aux_dir-=2;
           if (body_down>0 && candle_height>15 && lo_candleheight<15 && candle_height>2*lo_candleheight && high[i-2]>upBand2[i-2] && MFI[i-1]>82 && MathAbs(ADX[i-1]-ADX[i-2])<2 && getHeightInPixels(0,upBand2[i-1],loBand2[i-1])>150 && getHeightInPixels(0,high[i-2],pricestats.min_lastdayprice)>500) aux_dir-=2;
        }
        else if (apftrade.trade_dir==2) {
           gain_pts=(apftrade.trade_open-low[i-1]);
           loss_pts=(high[i-1]-apftrade.trade_open);
           if (loss_pts>2*pts_size && close[i-1]>MathMax(open[i-2],close[i-2]) && (loss_pts>2*pts_size || ((i-apftrade.bars_trade-1)>1 && high[i-1]>high[i-apftrade.bars_trade-1]))) aux_dir=4;

           if (Force[i-1]>-3000000 || (gain_pts>pts_maxsize && getHeightInPixels(0,low[i-1],pricestats.min_dayprice)<fullcandle_height/2)) {
              if (mycounters.c_up>1 && candle_height>10) aux_dir++;
              if (open[i-1]>MA50[i-1] && close[i-1]>MA50[i-1] && MA50[i-1]-low[i-1]>pts_size/2) aux_dir++;
              if (open[i-1]>MA100[i-1] && close[i-1]>MA100[i-1] && MA100[i-1]-low[i-1]>pts_size/2) aux_dir++;
              if (open[i-1]>MA200[i-1] && close[i-1]>MA200[i-1] && MA200[i-1]-low[i-1]>pts_size/2) aux_dir++;
              if (apftrade.bars_trade>2) {
                 if (getHeightInPixels(0,low[i-1],pricestats.min_dayprice)<candle_height/2) aux_dir++;
                 if (RSI[i-1]<36 && MFI[i-1]<35 && high[i-1]<VWAP[i-1]) aux_dir+=2;
                 //if (aux_dir>-9 && gain_pts>pts_size && filter.tdf_color==2 && open[i-1]<loBand[i-1]) aux_dir--;
                 if (gain_pts>pts_size && (filter.HILO_BUY || filter.SAR_BUY || close[i-1]>loBand[i-1] || (filter.VWAP_UP && filter.MIBAND_UP))) aux_dir++;
                 if (mycounters.c_up>1 && candle_height>15 && RSI[i-3]<33 && RSI[i-1]-RSI[i-3]>11 && low[i-2]<loBand2[i-2] && getHeightInPixels(0,close[i-apftrade.bars_trade],low[i-2])>30) aux_dir+=3;
              }
              if (filter.HILO_SELL && filter.MIBAND_DOWN && mycounters.sarsell>0 && apftrade.bars_trade<10 && high[i-1]<miBand[i-1]);
              else if (body_up>0 && candle_height>10 && MFI[i-2]<30 && getHeightInPixels(0,loBand2[i-1],low[i-1])>10 && getHeightInPixels(0,high[i-1],loBand2[i-1])>5) aux_dir=4;
           }
           if (aux_dir<3 && filter.MIBAND_DOWN && upADX[i-1]>loADX[i-2] && upADX[i-2]<loADX[i-3] && close[i-1]>loBand[i-1]) aux_dir+=2;
           if (aux_dir<3 && !filter.MIBAND_DOWN && !filter.VWAP_DOWN && date_candle.hour>13 && close[i-1]>miBand[i-1] && miBand[i-1]>miBand[i-2] && upBand[i-1]>upBand[i-2] && loBand[i-1]>loBand[i-2] && (date_candle.hour>15 || getHeightInPixels(0,VWAP[i-1],low[i-1])>150)) aux_dir+=2;
           if (aux_dir<3 && candle_height>15 && date_candle.hour>10 && body_up>2*candle_hi && close[i-1]>high[i-2] && close[i-1]>high[i-3] && RSI[i-1]-RSI[i-2]>12 && getHeightInPixels(0,close[i-1],loBand[i-1])>10 && getHeightInPixels(0,loBand[i-1],open[i-1])>5) aux_dir+=2;
           if (body_up>0 && candle_height>15 && hi_candleheight<30 && candle_height>2*hi_candleheight && low[i-2]<loBand2[i-2] && MFI[i-1]<28 && MathAbs(ADX[i-1]-ADX[i-2])<2 && getHeightInPixels(0,upBand2[i-1],loBand2[i-1])>150 && getHeightInPixels(0,pricestats.max_lastdayprice,low[i-2])>300) aux_dir+=2;
        }
     }
     else {
        // Open trades

        // Price action
        if (candle_height>10) {
           if (pricestats.bars_day<5 && getHeightInPixels(1,close[i-1],VWAP[i-1])<30 && ATR[i-1]<3*aux_abs) {
              if (mycounters.c_up==3 && RSI[i-1]<80 && hi_candleheight<9 && lo_candleheight<10 && close[i-1]>high[i-2] && getHeightInPixels(0,pricestats.max_lastdayprice,high[i-1])>100)
                 aux_dir+=10;
   
              if (mycounters.c_down==3 && RSI[i-1]>20 && lo_candleheight<9 && hi_candleheight<10 && close[i-1]<low[i-2] && getHeightInPixels(0,low[i-1],pricestats.min_lastdayprice)>100)
                 aux_dir-=10;
           }
           else if (candle_height<35) {
              if ((filter.VWAP_CROSS || high[i-1]<VWAP[i-1]) && body_up>0 && RSI[i-1]<80 && stdDev[i-1]>aux_abs/3 && hi_candleheight<5 && low[i-1]<VWAP[i-1] && open[i-1]<loBand[i-1] && close[i-1]>miBand[i-1] && getHeightInPixels(0,upBand2[i-1],high[i-1])>30) {
                 if (filter.VWAP_DOWN && high[i-1]<VWAP[i-1] && VWAP[i-1]-pricestats.vwap_idx>10 && close[i-1]<upBand[i-1]);
                 else aux_dir+=7;
                 if (filter.VWAP_CROSS) aux_dir+=3;
              }
              else if ((filter.VWAP_CROSS || low[i-1]>VWAP[i-1]) && body_down>0 && RSI[i-1]>20 && stdDev[i-1]>aux_abs/3 && lo_candleheight<5 && high[i-1]>VWAP[i-1] && open[i-1]>upBand[i-1] && close[i-1]<miBand[i-1] && getHeightInPixels(0,low[i-1],loBand2[i-1])>30) {
                 if (filter.VWAP_UP && low[i-1]>VWAP[i-1] && VWAP[i-1]-pricestats.vwap_idx>10 && close[i-1]>loBand[i-1]);
                 else aux_dir-=7;
                 if (filter.VWAP_CROSS) aux_dir-=3;
              }
           }
        }

        if (filter.VWAP_CROSS && pricestats.bars_day>4 && candle_height>8 && date_candle.hour<17) {
           if (body_up>0 && hi_candleheight<3 && close[i-1]>high[i-2]) {
              if (filter.SAR_INVERTBUY) aux_dir++;
              if (ADX[i-1]>upADX[i-1] && upADX[i-1]>loADX[i-1] && upADX[i-2]<loADX[i-2]) aux_dir++;
              if (close[i-1]>VWAP[i-1] && vwap_candleheight>5 && close[i-2]<VWAP[i-2])
                 if (ADX[i-1]>=upADX[i-1] && getHeightInPixels(0,upBand2[i-1],high[i-1])>candle_height)
                    aux_dir+=9;
           }
           else if (body_down>0 && lo_candleheight<3 && close[i-1]<low[i-2]) {
              if (filter.SAR_INVERTSELL) aux_dir--;
              if (ADX[i-1]<loADX[i-1] && upADX[i-1]<loADX[i-1] && upADX[i-2]>loADX[i-2]) aux_dir--;
              if (close[i-1]<VWAP[i-1] && vwap_candleheight>5 && close[i-2]>VWAP[i-2])
                 if (ADX[i-1]<=loADX[i-1] && upADX[i-1]<loADX[i-1] && upADX[i-2]>loADX[i-2] && getHeightInPixels(0,low[i-1],loBand2[i-1])>candle_height)
                    aux_dir-=9;
           }
        }

        if (filter.VWAP_CROSS && getHeightInPixels(1,MA100[i-1],MA25[i-1])<15 && (getHeightInPixels(1,MA100[i-1],MA50[i-1])<candle_height/3 || getHeightInPixels(1,MA50[i-1],MA25[i-1])<candle_height/3 || (getHeightInPixels(1,MA100[i-1],MA50[i-1])<fullcandle_height/2 && getHeightInPixels(1,MA50[i-1],MA25[i-1])<fullcandle_height)));
        else if (date_candle.hour>9 && date_candle.hour<17) {
           // BBands2
           if (candle_height>6) {
              if (body_up>0 && high[i-1]>high[i-2] && getHeightInPixels(0,loBand2[i-2],low[i-2])>5) {
                 // Buy
                 if ((filter.HILO_SELL || filter.MIBAND_DOWN || filter.VWAP_DOWN) && hi_candleheight>6 && getHeightInPixels(0,high[i-1],low[i-2])>70 && getHeightInPixels(0,close[i-1],loBand[i-1])<3);
                 else {   
                    if (low[i-1]>loBand2[i-1] && RSI[i-2]<28) {
                       if (candle_height>10 && close[i-1]>high[i-2] && low[i-1]>low[i-2] && getHeightInPixels(0,close[i-1],loBand2[i-1])>10) {
                          aux_dir+=14;
                          force_trade=1;
                       }
                       if (MFI[i-2]<25 && upADX[i-2]<=ADX[i-2] && getHeightInPixels(0,VWAP[i-1],high[i-1])>35 && getHeightInPixels(0,low[i-1],low[i-2])>10 && getHeightInPixels(0,low[i-3],low[i-2])>10) {
                          aux_dir+=14;
                          force_trade=1;
                       }
                    }
                 }
              }
              else if (body_down>0 && low[i-1]<low[i-2] && getHeightInPixels(0,high[i-2],upBand2[i-2])>5) {
                 // Sell
                 if (high[i-1]<upBand2[i-1]) {
                    if ((filter.HILO_BUY || filter.MIBAND_UP || filter.VWAP_UP) && lo_candleheight>6 && getHeightInPixels(0,high[i-2],low[i-1])>90 && getHeightInPixels(0,upBand[i-1],close[i-1])<3);
                    else {
                       if (candle_height>10 && close[i-1]<low[i-2] && high[i-2]>high[i-1] && getHeightInPixels(0,upBand2[i-1],close[i-1])>10) {
                          aux_dir-=14;
                          force_trade=1;
                       }
                       if (RSI[i-2]>72 && MFI[i-2]>78 && upADX[i-2]>=ADX[i-2] && getHeightInPixels(0,low[i-1],VWAP[i-1])>35 && getHeightInPixels(0,high[i-2],high[i-1])>10 && getHeightInPixels(0,high[i-2],high[i-3])>10) {
                          aux_dir-=14;
                          force_trade=1;
                       }
                    }
                 }
              }
           }
           if (date_candle.hour>9) {
              if (date_candle.hour>11 && date_candle.hour<14 && MathAbs(ADX[i-1]-ADX[i-2])<0.8) {
                 if (mycounters.c_up==2 && getHeightInPixels(0,high[i-1],open[i-2])>20) {
                    if (MFI[i-3]<28 && high[i-1]>high[i-2] && low[i-1]>low[i-2] && low[i-2]<loBand2[i-2] && low[i-1]>loBand2[i-1]) {
                       aux_dir+=10;
                       force_trade=1;
                    }
                 }
              }
              if (candle_height>15 && date_candle.hour<15 && MathAbs(ADX[i-1]-ADX[i-2])<0.5) {
                 if ((filter.HILO_INVERTBUY || mycounters.sarsell>5) && mycounters.c_up==1 && MFI[i-2]<20 && RSI[i-2]<35 && body_up>2*aux_abslast && hi_candleheight<3 && getHeightInPixels(0,VWAP[i-1],high[i-1])>30)
                    if (close[i-1]>MAFast[i-1] && close[i-1]>high[i-2] && low[i-1]<loBand2[i-1] && getHeightInPixels(0,loBand[i-1],close[i-1])<10 && getHeightInPixels(0,low[i-1],pricestats.min_dayprice)<10) aux_dir+=14;

                 if ((filter.HILO_INVERTSELL || mycounters.sarbuy>5) && mycounters.c_down==1 && MFI[i-2]>80 && RSI[i-2]>65 && body_down>2*aux_abslast && lo_candleheight<3 && getHeightInPixels(0,low[i-1],VWAP[i-1])>30)
                    if (close[i-1]<MAFast[i-1] && close[i-1]<low[i-2] && high[i-1]>upBand2[i-1] && getHeightInPixels(0,close[i-1],upBand[i-1])<10 && getHeightInPixels(0,pricestats.max_dayprice,high[i-1])<10) aux_dir-=14;
              }
           }

           if (aux_dir>3 && aux_dir>14 && hi_candleheight>3 && high[i-1]>upBand2[i-1] && close[i-1]<upBand2[i-1]) aux_dir=0;
           if (aux_dir<-3 && aux_dir>-14 && lo_candleheight>3 && low[i-1]<loBand2[i-1] && close[i-1]>loBand2[i-1]) aux_dir=0;


           // VWAP trade
           if (apftrade.trade_dir<1 && filter.VWAP_CROSS && ATR[i-1]>pts_size/2 && ATR[i-1]<pts_maxsize) {
              if (date_candle.hour<11 && getHeightInPixels(1,MAFast[i-1],MA50[i-1])<fullcandle_height/3);
              else {
                  if (body_up>0 && candle_height>11 && mycounters.c_up<3 && close[i-1]>MAFast[i-1]) {
                    if ((filter.HILO_SELL || mycounters.sarsell>1) && getHeightInPixels(1,MA50[i-1],MA100[i-1])<fullcandle_height/2);
                    else if (getHeightInPixels(0,close[i-1],VWAP[i-1])>16) {
                       aux_dir+=10;
                       if (aux_dir>3 && mycounters.sarbuy>6 && high[i-3]>high[i-2] && high[i-2]>high[i-1]) aux_dir--;
                       if (aux_dir>3 && filter.tdf_color==2 && (filter.VWAP_DOWN || filter.HILO_SELL || filter.MIBAND_DOWN)) aux_dir--;
                       if (aux_dir>3 && filter.MIBAND_DOWN && hi_candleheight>6) aux_dir--;
                       if (aux_dir>3 && close[i-1]<MA50[i-1] && high[i-1]>MA50[i-1]) aux_dir--;
                       if (aux_dir>3 && close[i-1]<MA100[i-1] && high[i-1]<MA100[i-1]) aux_dir--;
                       if (aux_dir>3 && high[i-1]>MA200[i-1] && close[i-1]<MA200[i-1]) aux_dir--;
                       if (aux_dir>3 && MAFast[i-1]<MA25[i-1] && MA50[i-1]<MA50[i-2] && body_up>0 && getHeightInPixels(1,MA100[i-1],MA50[i-1])<candle_height/2) aux_dir--;
                       if (aux_dir>3 && MA200[i-1]<MA200[i-2] && getHeightInPixels(0,MA200[i-1],high[i-1])<candle_height/2 && candle_height>15) aux_dir--;
                       if (aux_dir>3 && mycounters.sarbuy>5 && date_candle.hour>12 && RSI[i-1]>65 && open[i-1]>upBand[i-1] && getHeightInPixels(0,upBand2[i-1],high[i-1])<9) aux_dir--;
                       if (aux_dir>3 && filter.VWAP_DOWN && mycounters.sarsell>1 && getHeightInPixels(0,SAR[i-1],high[i-1])>candle_height && MAFast[i-1]<MA25[i-1] && close[i-1]<VWAP[i-1]) aux_dir--;
                       if (aux_dir>3 && date_candle.hour>14 && mycounters.sarbuy>4 && MA200[i-2]>MA200[i-1] && getHeightInPixels(0,MA200[i-1],MA100[i-1])>10 && getHeightInPixels(0,MA100[i-1],MA50[i-1])>10 && RSI[i-1]>71) aux_dir--;
                       if (aux_dir>3 && MAFast[i-2]<MA100[i-2] && low[i-2]<MAFast[i-2] && high[i-1]>MA100[i-1] && candle_hi>0 && body_up>0 && (getHeightInPixels(0,SAR[i-1],high[i-1])>candle_height || (mycounters.sarbuy>1 && getHeightInPixels(0,low[i-1],SAR[i-1])>2*fullcandle_height))) aux_dir--;
                       if (aux_dir>3 && filter.tdf_color!=1 && RSI[i-1]>60 && stdDev[i-1]<stdDev[i-2] && stdDev[i-2]<stdDev[i-3] && filter.VWAP_CROSS && hi_candleheight>2 && close[i-1]<upBand[i-1] && upADX[i-2]<loADX[i-2] && ADX[i-1]<upADX[i-1] && ADX[i-1]<loADX[i-1] && MathAbs(ADX[i-1]-ADX[i-2])<0.3) aux_dir--;
                    }

                    if (aux_dir>3 && hi_candleheight>10 && ADX[i-1]<ADX[i-2] && close[i-1]<open[i-3] && getHeightInPixels(0,high[i-3],high[i-1])>10) aux_dir=0;
                    if (aux_dir>3 && hi_candleheight>3 && (filter.HILO_SELL || filter.VWAP_CROSS) && mycounters.sarsell>1 && mycounters.c_up==1 && close[i-1]<high[i-1] && open[i-1]<miBand[i-1] && high[i-1]<upBand[i-1]) aux_dir=0;
                    if (filter.MIBAND_UP && filter.VWAP_UP && hi_candleheight<5 && close[i-1]>miBand[i-1] && high[i-1]<upBand2[i-1]) aux_dir++;
                 }
                 else if (body_down>0 && candle_height>11 && mycounters.c_down<3 && close[i-1]<MAFast[i-1]) {
                    if ((filter.HILO_BUY || mycounters.sarbuy>1) && getHeightInPixels(1,MA50[i-1],MA100[i-1])<fullcandle_height/2);
                    else if (getHeightInPixels(0,VWAP[i-1],close[i-1])>20) {
                       aux_dir-=10;
                       if (aux_dir<-3 && mycounters.sarsell>6 && low[i-1]>low[i-2] && low[i-2]>low[i-3]) aux_dir++;
                       if (aux_dir<-3 && filter.tdf_color==1 && (filter.VWAP_UP || filter.HILO_BUY || filter.MIBAND_UP)) aux_dir++;
                       if (aux_dir<-3 && filter.MIBAND_UP && lo_candleheight>6) aux_dir++;
                       if (aux_dir<-3 && close[i-1]>MA50[i-1] && low[i-1]<MA50[i-1]) aux_dir++;
                       if (aux_dir<-3 && close[i-1]>MA100[i-1] && low[i-1]<MA100[i-1]) aux_dir++;
                       if (aux_dir<-3 && low[i-1]<MA200[i-1] && close[i-1]>MA200[i-1]) aux_dir++;
                       if (aux_dir<-3 && MAFast[i-1]>MA25[i-1] && MA50[i-1]>MA50[i-2] && body_down>0 && getHeightInPixels(1,MA100[i-1],MA50[i-1])<candle_height/2) aux_dir++;
                       if (aux_dir<-3 && MA200[i-1]>MA200[i-2] && getHeightInPixels(0,low[i-1],MA200[i-1])<candle_height/2 && candle_height>15) aux_dir++;
                       if (aux_dir<-3 && mycounters.sarsell>5 && date_candle.hour>12 && RSI[i-1]<35 && open[i-1]<loBand[i-1] && getHeightInPixels(0,low[i-1],loBand2[i-1])<9) aux_dir++;
                       if (aux_dir<-3 && filter.VWAP_UP && mycounters.sarbuy>1 && getHeightInPixels(0,low[i-1],SAR[i-1])>candle_height && MAFast[i-1]>MA25[i-1] && close[i-1]>VWAP[i-1]) aux_dir++;
                       if (aux_dir<-3 && date_candle.hour>14 && mycounters.sarsell>4 && MA200[i-2]<MA200[i-1] && getHeightInPixels(0,MA100[i-1],MA200[i-1])>10 && getHeightInPixels(0,MA50[i-1],MA100[i-1])>10 && RSI[i-1]<30) aux_dir++;
                       if (aux_dir<-3 && MAFast[i-2]>MA100[i-2] && high[i-2]>MAFast[i-2] && low[i-1]<MA100[i-1] && candle_lo>0 && body_down>0 && (getHeightInPixels(0,low[i-1],SAR[i-1])>2*candle_height || (mycounters.sarsell>1 && getHeightInPixels(0,SAR[i-1],high[i-1])>2*fullcandle_height))) aux_dir++;
                       if (aux_dir<-3 && filter.tdf_color!=2 && RSI[i-1]<40 && stdDev[i-1]<stdDev[i-2] && stdDev[i-2]<stdDev[i-3] && filter.VWAP_CROSS && lo_candleheight>2 && close[i-1]>loBand[i-1] && upADX[i-2]>loADX[i-2] && ADX[i-1]<upADX[i-1] && ADX[i-1]<loADX[i-1] && MathAbs(ADX[i-1]-ADX[i-2])<0.3) aux_dir++;
                    }
                    
                    if (aux_dir<-3 && lo_candleheight>10 && ADX[i-1]<ADX[i-2] && close[i-1]>open[i-3] && getHeightInPixels(0,low[i-1],low[i-3])>10) aux_dir=0;
                    if (aux_dir<-3 && lo_candleheight>3 && (filter.HILO_BUY || filter.VWAP_CROSS) && mycounters.sarbuy>1 && mycounters.c_down==1 && close[i-1]>low[i-1] && open[i-1]>miBand[i-1] && low[i-1]>loBand[i-1]) aux_dir=0;
                    if (filter.MIBAND_DOWN && filter.VWAP_DOWN && lo_candleheight<5 && close[i-1]<miBand[i-1] && low[i-1]>loBand2[i-1]) aux_dir--;
                 }
              }
           }

           if (force_trade==0) {
              if (aux_dir>3) {
                 if (filter.MIBAND_DOWN && close[i-1]<miBand[i-1]) aux_dir-=3;
              }
              else if (aux_dir<-3) {
                 if (filter.MIBAND_UP && close[i-1]>miBand[i-1]) aux_dir+=3;
              }
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
     else if (type==0) {
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