//+------------------------------------------------------------------+
//|                                         APFTrend-NG-EACHECKs.mqh |
//|                             Copyright 2023, Aprendiz Financeiro. |
//|                                https://aprendizfinanceiro.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, Aprendiz Financeiro."
#property link      "https://aprendizfinanceiro.com.br"

MqlDateTime date_candle;

struct stru_ea_checks
  {
    int code;
    string alert;
  } ea_checks;

void chk_risk(int do_alert, MqlRates &my_rates[], double &APF[], double &VWAP[])
  {
     ea_checks.code=0;
     if (VWAP[0]-VWAP[1]>1 && VWAP[1]>=VWAP[2] && my_rates[1].low>VWAP[1] && my_rates[0].low-VWAP[0]<50 && my_rates[0].close>VWAP[0]) {
        ea_checks.code=2;
        ea_checks.alert="VWAP_LONG pullback RISK!";
     }
     else if (VWAP[1]-VWAP[0]>1 && VWAP[1]<=VWAP[2] && my_rates[1].high<VWAP[1] && VWAP[0]-my_rates[0].high<50 && my_rates[0].close<VWAP[0]) {
        ea_checks.code=2;
        ea_checks.alert="VWAP_SHORT pullback RISK!";
     }
     if (do_alert && ea_checks.code>0) Alert(ea_checks.alert);

     if (PositionSelect(_Symbol)) {
        double cur_lots=PositionGetDouble(POSITION_VOLUME);
        if (cur_lots>6) {
           ea_checks.code=1;
           ea_checks.alert="CLOSE half cts";
        }
        else if (cur_lots==0) {
           ea_checks.code=0;
           ea_checks.alert="Stable";
        }
     }
     if (ea_checks.code>0) {
       mkRiskAlert(ea_checks.code, ea_checks.alert);
     }
  }

void new_candle(int &do_alert)
  {
     // copying the last bar time to the element New_Time[0]
     static datetime Old_Time;
     datetime New_Time[1];
     TimeToStruct(TimeCurrent(),date_candle);
     if(CopyTime(Symbol(),PERIOD_CURRENT,0,1,New_Time)>0) {
        do_alert=0;
        if(Old_Time!=New_Time[0]) {
          do_alert=1;
          mkRiskAlert(0, "Stable");
        }
        Old_Time=New_Time[0];
     }
   }

//+------------------------------------------------------------------+
//| Make a risk alert area                                           |
//+------------------------------------------------------------------+
void mkRiskAlert(int rtype, string alert) {
    static string last_alert="";

    long cid=ChartID();
    if (ObjectFind(cid, "APF_RISKALERT")<0) {
       if (!ObjectCreate(cid, "APF_RISKALERT", OBJ_LABEL, 0, 0, 0)) {
          Print("Error: ",GetLastError());
          return;
       }
    }
    string rlabel_text="Risk alert: "+alert;
    color alert_color=clrAliceBlue;
    if (rtype==1) alert_color=clrDarkOrange;
    else if (rtype==2) alert_color=clrDarkRed;

    if (last_alert!=alert) {
       ObjectSetInteger(cid, "APF_RISKALERT",OBJPROP_XDISTANCE,ChartGetInteger(0,CHART_WIDTH_IN_PIXELS,0)-50);
       ObjectSetInteger(cid, "APF_RISKALERT",OBJPROP_YDISTANCE,60);
       ObjectSetInteger(cid, "APF_RISKALERT",OBJPROP_FONTSIZE,14);
       ObjectSetInteger(cid, "APF_RISKALERT",OBJPROP_CORNER,CORNER_RIGHT_UPPER);
       ObjectSetInteger(cid, "APF_RISKALERT",OBJPROP_COLOR,alert_color);
       ObjectSetString(cid, "APF_RISKALERT",OBJPROP_TEXT,rlabel_text);
    }
    last_alert=alert;
  }
//+------------------------------------------------------------------+