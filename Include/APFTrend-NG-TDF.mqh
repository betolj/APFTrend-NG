//+------------------------------------------------------------------+
//|                                              APFTrend-NG-TDF.mqh |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

#ifndef AUX_TDFINPUT
#define AUX_TDFINPUT
input group "TDF settings"
input int    trend_Period  = 12;      // Trend period
input double trigger_Up    =  0.03;   // Trigger up level
input double trigger_Down  = -0.03;   // Trigger down level
#endif

#ifndef AUX_TDF
#define AUX_TDF
static double workTrend[][3];
static double val[], levup[], levdn[];
#define _MMA   0
#define _SMMA  1
#define _TDF   2
#endif

void buildTDF(int idx, int bars, const datetime v_time) {
    // TDF algoritm
    // Include Trend direction and force algo
    static int trendPeriod=20;                            // Trend period
    static double TriggerUp=0.05;                         // Trigger up level
    static double TriggerDown=-0.05;                      // Trigger down level

    if (trigger_Up>0) TriggerUp=trigger_Up;
    if (trigger_Down<0) TriggerDown=trigger_Down;
    if (trend_Period>0) trendPeriod=trend_Period;

    if(ArrayRange(workTrend,0)!=bars) ArrayResize(workTrend, bars);
    double _alpha=2.0/(1+trendPeriod);

    workTrend[idx][_MMA]  = (idx>0) ? workTrend[idx-1][_MMA]+_alpha*(buf_close[idx]-workTrend[idx-1][_MMA]) : buf_close[idx];
    workTrend[idx][_SMMA] = (idx>0) ? workTrend[idx-1][_SMMA]+_alpha*(workTrend[idx][_MMA]-workTrend[idx-1][_SMMA]) : workTrend[idx][_MMA];
       double impetmma  = (idx>0) ? workTrend[idx][_MMA]  - workTrend[idx-1][_MMA]  : 0;
       double impetsmma = (idx>0) ? workTrend[idx][_SMMA] - workTrend[idx-1][_SMMA] : 0;
       double divma     = MathAbs(workTrend[idx][_MMA]-workTrend[idx][_SMMA])/_Point;
       double averimpet = (impetmma+impetsmma)/(2*_Point);
    workTrend[idx][_TDF]  = divma*MathPow(averimpet,3);

    double absValue = 0;  for (int l=0; l<trendPeriod*3 && (idx-l)>=0; l++) absValue = MathMax(absValue,MathAbs(workTrend[idx-l][_TDF]));
    val[idx] = (absValue > 0) ? workTrend[idx][_TDF]/absValue : 0;
    levup[idx] = TriggerUp;
    levdn[idx] = TriggerDown;
  }