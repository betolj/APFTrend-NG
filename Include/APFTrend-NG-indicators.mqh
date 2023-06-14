//+------------------------------------------------------------------+
//|                                       APFTrend-NG-indicadors.mqh |
//|                             Copyright 2022, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

int BANDS_Period=20;
int MAFAST_Period=8;

// 1. Input periods
// 2. Internal Default_Period = 8
if (Period_BANDS>0) BANDS_Period=Period_BANDS;
if (Period_MAFAST>0) MAFAST_Period=Period_MAFAST;

  // Handle for iStdDev
  hstdDev=iStdDev(NULL, PERIOD_CURRENT, 8, 0, MODE_EMA, applied_price);
    if (hstdDev==INVALID_HANDLE) {
       //--- tell about the failure and output the error code
       PrintFormat("Failed to create handle of the StdDev indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       //--- the indicator is stopped early
       return(INIT_FAILED);
    }

  // Handle for iRSI
  hRSI = iRSI(NULL, PERIOD_CURRENT, Default_Period, applied_price);
    if (hRSI==INVALID_HANDLE) {
        PrintFormat("Failed to create handle of the RSI indicator for the symbol %s, error code %d",
                    "APFTrend-NG", GetLastError());
        return(INIT_FAILED);
    }

  // Handle for MFI
  hMFI=iMFI(NULL, PERIOD_CURRENT, 5, VOLUME_TICK);
    if (hMFI==INVALID_HANDLE) {
        PrintFormat("Failed to create handle of the MFI indicator for the symbol %s, error code %d",
                    "APFTrend-NG", GetLastError());
        return(INIT_FAILED);
    }

if (trade_mode<3) {
  // Handle for optional iCustom HILO
  f.use_hilo=1;
    if (Period()<PERIOD_M5)
       hHILO = iCustom(NULL, PERIOD_CURRENT, "SSL_Channel_Chart.ex5", MODE_EMA, 5);
       //hHILO = iCustom(NULL, PERIOD_CURRENT, "gann_hi_lo_activator_ssl.ex5", 5, MODE_EMA);
    else
       //hHILO = iCustom(NULL, PERIOD_CURRENT, "gann_hi_lo_activator_ssl.ex5", Default_Period, MODE_SMMA);
       hHILO = iCustom(NULL, PERIOD_CURRENT, "SSL_Channel_Chart.ex5", MODE_SMMA, Default_Period);

    if (hHILO==INVALID_HANDLE) {
       //--- tell about the failure and output the error code
       PrintFormat("Failed to create handle of the hHILO indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       //--- the indicator is stopped early
       return(INIT_FAILED);
    }

  // Handle for iForce
  hForce=iForce(NULL, PERIOD_CURRENT, Default_Period, MODE_EMA, VOLUME_TICK);
    if (hForce==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the Force indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }

  // Hangle for CCI
  hCCI = iCCI(NULL, PERIOD_CURRENT, MAFAST_Period+1, PRICE_TYPICAL);
    if (hCCI==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the CCI indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }

  // Handle for iATR
  hATR = iATR(NULL,PERIOD_CURRENT, MAFAST_Period);
    if (hATR==INVALID_HANDLE) {
        PrintFormat("Failed to create handle of the ATR indicator for the symbol %s, error code %d",
                    "APFTrend-NG", GetLastError());
        return(INIT_FAILED);
    }

  // Handle for Linear regression
  hLR = iCustom(NULL, PERIOD_CURRENT, "Linear regression.ex5", 20, PRICE_CLOSE);
    if (hLR==INVALID_HANDLE) {
        PrintFormat("Failed to create handle of the Linear Regression indicator for the symbol %s, error code %d",
                    "APFTrend-NG", GetLastError());
        return(INIT_FAILED);
    }

  // Handle for iRSI
  hSAR = iSAR(NULL,PERIOD_CURRENT,0.02,0.2);
    if (hSAR==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the SAR indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }

  // Handle for iADX
  hADX=iADX(NULL, PERIOD_CURRENT, 20);
    if (hBands==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the ADX indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }

  // Handle for iBands
  hBands=iBands(NULL, PERIOD_CURRENT, BANDS_Period, 0, 0.800, applied_price);
    if (hBands==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the Bands indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }
  hBands2=iBands(NULL, PERIOD_CURRENT, BANDS_Period, 0, 2.300, applied_price);
    if (hBands2==INVALID_HANDLE) {
       PrintFormat("Failed to create handle of the Bands indicator for the symbol %s, error code %d",
                   "APFTrend-NG", GetLastError());
       return(INIT_FAILED);
    }

  // Handle for MA Fast and 200
  hMAFast=iMA(NULL, PERIOD_CURRENT, MAFAST_Period, 0, MODE_EMA, applied_price);
    if(hMAFast==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MAFast indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
  hMASlow=iMA(NULL, PERIOD_CURRENT, 17, 0, MODE_EMA, applied_price);
    if(hMASlow==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MASlow indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
  hMA25=iMA(NULL, PERIOD_CURRENT, 25, 0, MODE_EMA, applied_price);
    if(hMAFast==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MAFast indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
  hMA50=iMA(NULL, PERIOD_CURRENT, 50, 0, MODE_EMA, applied_price);
    if(hMAFast==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MAFast indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
  hMA100=iMA(NULL, PERIOD_CURRENT, 100, 0, MODE_EMA, applied_price);
    if(hMAFast==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MAFast indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
  hMA200=iMA(NULL, PERIOD_CURRENT, 200, 0, MODE_EMA, applied_price);
    if(hMA200==INVALID_HANDLE) {
      PrintFormat("Failed to create handle of the MA200 indicator for the symbol %s, error code %d",
                  "APFTrend-NG", GetLastError());
      return(INIT_FAILED);
    }
}