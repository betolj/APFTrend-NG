//+------------------------------------------------------------------+
//|                                            APFTrend-NG-input.mqh |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

enum ENUM_CONTINUE
  {
     Trade_DEFAULT,
     Trade_IGNORELOSS,
     Trade_ALWAYS
  };

enum ENUM_TRADEMODE
  {
     Trade_DISABLED,
     Trade_AUTO,
     Trade_USER,
     Trade_TDF,
     Trade_TDFCLOSE
  };

// Input data for custom settings
input color Color_Bar_Indef=clrBisque;
input color Color_Bar_Up=clrGreen;
input color Color_Bar_Down=clrRed;

input ENUM_APPLIED_PRICE applied_price=PRICE_CLOSE;
input ENUM_CONTINUE      continue_trade=0;

input ENUM_TRADEMODE trade_mode=0;              // Trade mode
input string end_time="17:45";                  // End time
input int fail_trades=8;                        // Consecutive wrong trades
input int max_daytrades=10;                     // Maximum number of trades
input int max_tradeloss=-30;                    // Maximum WDO trade loss (pts)
input int max_wintradeloss=-800;                // Maximum WIN trade loss (pts)

//input bool Algo_Trade=false;                    // Show the algo trade trigger
//input int  Book_Level=0;                        // Enable the price line Book Force (0 to 2)
input int  Default_Period=8;                    // Default indicator period
input int  Period_BANDS=0;                      // BANDs period (0: default internal)
input int  Period_MAFAST=0;                     // MA-Fast Period (0: default internal)
#ifndef AUX_TDFINPUT
#define AUX_TDFINPUT
input group "TDF settings"
input int    trend_Period  = 12;      // Trend period
input double trigger_Up    =  0.03;   // Trigger up level
input double trigger_Down  = -0.03;   // Trigger down level
#endif
input group "Limit (or body) pts"
input double pts_size=110;
input double pts_maxsize=350;
input group "Debug level"
input int  Debug_Sum=0;                          // Debug trade sum level (0 to 3, 4 for close)
