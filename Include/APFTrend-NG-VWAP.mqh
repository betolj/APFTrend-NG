//+------------------------------------------------------------------+
//|                                                APFTrend-VWAP.mqh |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

#ifndef AUXBUF
#define AUXBUF
double buf_open[], buf_high[], buf_low[], buf_close[], buf_color_line[];
#endif 

static datetime oldtime=0;
#ifndef AUXBUF_VWAP
#define AUXBUF_VWAP
static double buf_VWAP[];
#endif 

//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
void buildVWAP(int idx, int step, const int prev_calc, const datetime v_time, const long volume1, const long volume2)
  {
    static double sumPrice=0, sumVol=0;
    static double auxsumPrice=0, auxsumVol=0;

    if (idx==0 || step==0) {
       sumPrice=0;
       sumVol=0;
    }
    if (prev_calc>0) {
       if (v_time!=oldtime) {
          auxsumPrice  = sumPrice;
          auxsumVol    = sumVol;
       }
       else {
          sumPrice   = auxsumPrice;
          sumVol     = auxsumVol;
       }
       sumPrice  += (double) (((buf_high[idx]+buf_low[idx]+buf_close[idx])/3) * (double)volume1);
       sumVol    += (double) volume1;
       oldtime=v_time;
    }
    else {
       sumPrice    += (double) (((buf_high[idx]+buf_low[idx]+buf_close[idx])/3) * (double)volume1);
       sumVol      += (double) volume1;
       auxsumPrice  = sumPrice;
       auxsumVol    = sumVol;
    }
    if (sumVol>0) buf_VWAP[idx] = NormalizeDouble(sumPrice/sumVol,2);
  }