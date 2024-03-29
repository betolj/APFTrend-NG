//+------------------------------------------------------------------+
//|                                                APFTrend-Base.mqh |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

struct stru_trade {
     int trade_dir, trade_lastdir, trade_ct, last_candletrade, gain_ct;
     int first_tradebar, bars_trade, bars_notrade, ct_long, ct_short;
     double trade_open, trade_lastopen, trade_sum, trade_lastgain, gain_total;
     string algo_trade, algo_close;
     stru_trade() { trade_dir=0; trade_lastdir=0; trade_ct=0;
                    last_candletrade=0; gain_ct=0;
                    bars_trade=0; bars_notrade=0; ct_long=0; ct_short=0;
                    trade_open=0.0; trade_lastopen=0.0; trade_sum=0.0;
                    trade_lastgain=0.0; last_candletrade=0; algo_trade=""; algo_close="";};
  };

struct stru_filter {
     int tdf_color, use_hilo;
     bool HILO_BUY, HILO_SELL, SAR_BUY, SAR_SELL;
     bool HILO_INVERTBUY, HILO_INVERTSELL, SAR_INVERTBUY, SAR_INVERTSELL;
     bool VWAP_UP, VWAP_DOWN, VWAP_CROSS, VWAP_LASTCROSS, VWAPCROSS, NO_VWAP_CROSS, NO_VWAPCROSS, VWAP_CK_CROSS;
     bool MIBAND_UP, MIBAND_DOWN, MA_CROSSUP, MA_CROSSDOWN, MED_UP, MED_DOWN;
     stru_filter() { tdf_color=0;
        HILO_BUY=false; HILO_SELL=false; SAR_BUY=false; SAR_SELL=false;
        HILO_INVERTBUY=false; HILO_INVERTSELL=false; SAR_INVERTBUY=false; SAR_INVERTSELL=false;
        VWAP_UP=false; VWAP_DOWN=false; VWAP_CROSS=false; VWAP_LASTCROSS=false; VWAPCROSS=false; 
        MIBAND_UP=false; MIBAND_DOWN=false;
        NO_VWAP_CROSS=false; NO_VWAPCROSS=false; VWAP_CK_CROSS=false;
        MA_CROSSUP=false; MA_CROSSDOWN=false; MED_UP=false; MED_DOWN=false;};
  };

struct stru_counters
  {
     int sarbuy, sarsell;
     int hilobuy, hilosell;
     int c_up, c_down;
  };

struct stru_stats
  {
     int bars_day, first_bar;
     double vwap_lastcross;
     int vwap_idx;
     int vwap_lastidx;
     int vwap_count;
     int hilo_count;
     double ATR_min, ATR_max, ATR_per;
     double vwap_max_up_distance;
     double vwap_max_down_distance;
     double max_dayprice, min_dayprice;
     double max_lastdayprice, min_lastdayprice;
     stru_stats() { bars_day=0; first_bar=0;
                    ATR_min=0; ATR_max=0; ATR_per=0;
                    vwap_lastcross=0.0; vwap_max_up_distance=0.0; vwap_max_down_distance=0.0;
                    vwap_idx=0; vwap_lastidx=0; vwap_count=0; hilo_count=0;
                    max_dayprice=0.0; min_dayprice=0.0; max_lastdayprice=0.0; min_lastdayprice=0.0;};
  };

static string MYOBJ_LIST[]={"APF_SECCLOSE","APF_ALERTTRADE"};

double candle_hi;
double candle_lo;
double body_up;
double body_down;
double body_maxup;
double body_maxdown;

//+------------------------------------------------------------------+
//| Return timeframe in seconds                                      |
//+------------------------------------------------------------------+
int tf() export
  {
    switch(Period())  {
      case PERIOD_M1: return(60);
      case PERIOD_M2: return(120);
      case PERIOD_M3: return(180);
      case PERIOD_M4: return(240);
      case PERIOD_M5: return(300);
      case PERIOD_M15: return(900);
      case PERIOD_M30: return(1800);
      case PERIOD_H1: return(3600);
      case PERIOD_H4: return(14400);
      case PERIOD_D1: return(86400);
      default:return(0);
    }
  }

void initCandleMetrics(const double bufopen, const double bufclose, const double bufhigh, const double buflow) {
    double aux_high=MathMax(bufopen,bufclose);
    double aux_low=MathMin(bufopen,bufclose);

    candle_hi=bufhigh-aux_high;
    candle_lo=aux_low-buflow;
    body_up=bufclose-bufopen;
    body_down=bufopen-bufclose;
    body_maxup=bufhigh-bufopen;
    body_maxdown=bufopen-buflow;
}

//+------------------------------------------------------------------+
//| Returns candle height in pixels                                  |
//+------------------------------------------------------------------+
long getHeightInPixels(int abs, double h_first, double h_last)
{
    long chartHeight = ChartGetInteger(0, CHART_HEIGHT_IN_PIXELS);
    double pointSizeInPixels = ChartGetDouble(0, CHART_POINTS_PER_BAR) * SymbolInfoDouble(_Symbol, SYMBOL_POINT);
    double tickSize = SymbolInfoDouble(_Symbol, SYMBOL_TRADE_TICK_SIZE);

    double RangeSize = h_first - h_last;
    if (abs>0) RangeSize = MathAbs(RangeSize);
    int HeightInPixels = (int)(RangeSize / tickSize * pointSizeInPixels);

    return HeightInPixels;
}

/*
double CandleHeightInPixels(double High, double Low, double percentHeight)
{
    double topPrice = High;
    double bottomPrice = Low;
    double chartTop = ChartGetDouble(0, CHART_PRICE_MAX);
    double chartBottom = ChartGetDouble(0, CHART_PRICE_MIN);
    long chartHeight = ChartGetInteger(0, CHART_HEIGHT_IN_PIXELS);
    double yScale = chartHeight / (chartTop - chartBottom);
    double chartTopY = chartTop * yScale;
    double chartBottomY = (chartTop - chartBottom) * yScale;
    double topY = chartTopY - (chartTop - topPrice) * yScale;
    double bottomY = chartTopY - (chartTop - bottomPrice) * yScale;
    double candleHeight = MathAbs(topY - bottomY);
    return (candleHeight / 100.0) * ((percentHeight / 100.0) * chartHeight);
}
*/

//+------------------------------------------------------------------+
//| Returns true if a new bar has appeared for a symbol/period pair  |
//+------------------------------------------------------------------+
bool IsNewBar(datetime &last_time, const datetime lastbar_time, const int prev_calc) {
    if (last_time!=lastbar_time || last_time==0 || prev_calc==0) {
        last_time=lastbar_time;
        return(true);
    }
    return(false);
  }

//+------------------------------------------------------------------+
//| Reset trade data structure                                       |
//+------------------------------------------------------------------+
void reset_apf_trade(stru_trade &apftrade) {
    apftrade.bars_trade=0;
    apftrade.bars_notrade=0;
    apftrade.last_candletrade=0;
    apftrade.trade_open=0;
    apftrade.trade_ct=0;
    apftrade.trade_dir=0;
    apftrade.trade_lastdir=0;
    apftrade.trade_lastopen=0;
    apftrade.trade_lastgain=0;
    apftrade.trade_sum=0;
    apftrade.gain_ct=0;
}

// --- Open trade (apf_trade.trade_dir) and set the algo_trade
int OpenTrade(const int tdir, stru_trade &apftrade) {
   if (tdir==1) apftrade.ct_long++;
   else if (tdir==2) apftrade.ct_short++;
   apftrade.trade_dir=tdir;
   return tdir;
}

// --- Close trade (apf_trade.trade_dir=0) and set the algo_close
int CloseTrade(stru_trade &apftrade) {
   apftrade.ct_long=0;
   apftrade.ct_short=0;
   apftrade.trade_dir=0;
   return 0;
}

//+------------------------------------------------------------------+
//| Filling indicator buffers from indicator                         |
//+------------------------------------------------------------------+
bool FillArrayFromBuffer(double &values[],   // indicator buffer
                         int shift,          // shift
                         int ind_handle,     // handle of the indicator
                         int amount,         // number of copied values
                         int id_handle       // type of handle
                         ) export
  {
//--- reset error code
    ResetLastError();
//--- fill a part of the Buffer array with values from the indicator buffer that has 0 index
    if (id_handle==0) {
       if(CopyBuffer(ind_handle,0,-shift,amount,values)<0) {
          //--- if the copying fails, tell the error code
          PrintFormat("Failed to copy data from the indicator, error code %d",GetLastError());
          //--- quit with zero result - it means that the indicator is considered as not calculated
          return(false);
       }
    }
    else {
       if(CopyBuffer(ind_handle,id_handle,-shift,amount,values)<0) {
         PrintFormat("Failed to copy data from the indicator, error code %d",GetLastError());
         return(false);
       }
    }
//--- everything is fine
    return(true);
  }

//+------------------------------------------------------------------+
//| Destroy APFTrend objects                                         |
//+------------------------------------------------------------------+
void Destroy_myobjs()
  {
     long cid=ChartID();
     for (int i=0; i<ArraySize(MYOBJ_LIST); i++) {
        if (ObjectFind(cid, MYOBJ_LIST[i])>-1) ObjectDelete(cid, MYOBJ_LIST[i]);
     }
  }