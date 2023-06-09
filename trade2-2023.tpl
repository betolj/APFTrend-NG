<chart>
id=133298394271835665
symbol=WINM23
description=IBOVESPA MINI
period_type=0
period_size=5
digits=0
tick_size=5.000000
position_time=1686653100
scale_fix=0
scale_fixed_min=116255.000000
scale_fixed_max=117780.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=16
mode=1
fore=0
grid=1
volume=2
scroll=1
shift=1
shift_size=20.171062
fixed_pos=0.000000
ticker=1
ohlc=0
one_click=0
one_click_btn=1
bidline=1
askline=0
lastline=1
days=0
descriptions=0
tradelines=1
tradehistory=1
window_left=182
window_top=182
window_right=1140
window_bottom=703
window_type=1
floating=0
floating_left=0
floating_top=0
floating_right=0
floating_bottom=0
floating_type=1
floating_toolbar=1
floating_tbstate=
background_color=0
foreground_color=16777215
barup_color=65280
bardown_color=65280
bullcandle_color=0
bearcandle_color=16777215
chartline_color=65280
volumes_color=3329330
grid_color=10061943
bidline_color=10061943
askline_color=255
lastline_color=49152
stops_color=255
windows_total=1

<expert>
name=pricehistogram
path=Experts\pricehistogram.ex5
expertmode=0
<inputs>
DayTheHistogram=10
DaysForCalculation=500
RangePercent=70
InnerRange=8519755
OuterRange=16711935
ControlPoint=42495
ShowValue=true
</inputs>
</expert>

<window>
height=127.689243
objects=2049

<indicator>
name=Main
path=
apply=1
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\Linear regression.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=Liner regression value
draw=10
style=0
width=3
arrow=251
color=11119017,9639167,7451452
</graph>
<inputs>
inpPeriod=20
inpPrice=1
</inputs>
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\APFTrend-NG\APFTrend-NG.ex5
apply=0
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=0.000000
scale_fix_max=0
scale_fix_max_val=0.000000
expertmode=0
fixed_height=-1

<graph>
name=Open;High;Low;Close
draw=17
style=0
width=3
arrow=251
color=12903679,32768,255,526
</graph>

<graph>
name=
draw=1
style=0
width=2
arrow=251
color=14772545
</graph>

<graph>
name=
draw=0
style=0
width=1
arrow=251
color=
</graph>

<graph>
name=
draw=0
style=0
width=1
arrow=251
color=
</graph>
<inputs>
Color_Bar_Indef=12903679
Color_Bar_Up=32768
Color_Bar_Down=255
applied_price=1
continue_trade=0
trade_mode=3
end_time=17:45
fail_trades=8
max_daytrades=10
max_tradeloss=-30
max_wintradeloss=-800
Default_Period=8
Period_BANDS=0
Period_MAFAST=0
=
trend_Period=12
trigger_Up=0.03
trigger_Down=-0.03
=
pts_size=110.0
pts_maxsize=350.0
=
Debug_Sum=0
</inputs>
</indicator>
<object>
type=102
name=APF_SECCLOSE
hidden=1
descr=Seconds... 81
color=3329434
selectable=0
angle=0
pos_x=1302
pos_y=30
fontsz=10
fontnm=Arial
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=APF_ALERTTRADE
hidden=1
descr=Trade alert: _DOWN Candle
color=8421504
selectable=0
angle=0
pos_x=636
pos_y=55
fontsz=14
fontnm=Arial
anchorpos=0
refpoint=0
</object>

<object>
type=32
name=autotrade #257978060 sell 2 WINM23 at 108515, WINM23
hidden=1
color=1918177
selectable=0
date1=1681812083
value1=108515.000000
</object>

<object>
type=31
name=autotrade #257978599 buy 1 WINM23 at 108390, profit 25.00, WINM
hidden=1
color=11296515
selectable=0
date1=1681812333
value1=108390.000000
</object>

<object>
type=31
name=autotrade #257979327 buy 1 WINM23 at 107960, profit 111.00, WIN
hidden=1
color=11296515
selectable=0
date1=1681812586
value1=107960.000000
</object>

<object>
type=31
name=autotrade #257988040 buy 3 WINM23 at 108110, WINM23
hidden=1
color=11296515
selectable=0
date1=1681818588
value1=108110.000000
</object>

<object>
type=32
name=autotrade #257988629 sell 3 WINM23 at 108330, TP, profit 132.00
hidden=1
descr=[tp 108340]
color=1918177
selectable=0
date1=1681819047
value1=108330.000000
</object>

<object>
type=31
name=autotrade #257998879 buy 3 WINM23 at 108315, WINM23
hidden=1
color=11296515
selectable=0
date1=1681834133
value1=108315.000000
</object>

<object>
type=31
name=autotrade #257999027 buy 3 WINM23 at 108260, WINM23
hidden=1
color=11296515
selectable=0
date1=1681834300
value1=108260.000000
</object>

<object>
type=31
name=autotrade #257999988 buy 2 WINM23 at 107985, WINM23
hidden=1
color=11296515
selectable=0
date1=1681835888
value1=107985.000000
</object>

<object>
type=31
name=autotrade #258001082 buy 2 WINM23 at 108095, WINM23
hidden=1
color=11296515
selectable=0
date1=1681838741
value1=108095.000000
</object>

<object>
type=32
name=autotrade #258001194 sell 10 WINM23 at 108100, profit -177.00, 
hidden=1
color=1918177
selectable=0
date1=1681839139
value1=108100.000000
</object>

<object>
type=32
name=autotrade #258036465 sell 2 WINM23 at 105690, WINM23
hidden=1
color=1918177
selectable=0
date1=1681985121
value1=105690.000000
</object>

<object>
type=31
name=autotrade #258036652 buy 1 WINM23 at 105570, profit 24.00, WINM
hidden=1
color=11296515
selectable=0
date1=1681985199
value1=105570.000000
</object>

<object>
type=31
name=autotrade #258037452 buy 1 WINM23 at 105090, profit 120.00, WIN
hidden=1
color=11296515
selectable=0
date1=1681985524
value1=105090.000000
</object>

<object>
type=32
name=autotrade #258041821 sell 2 WINM23 at 105455, WINM23
hidden=1
color=1918177
selectable=0
date1=1681988404
value1=105455.000000
</object>

<object>
type=31
name=autotrade #258042354 buy 2 WINM23 at 105905, SL, profit -180.00
hidden=1
descr=[sl 105920]
color=11296515
selectable=0
date1=1681988710
value1=105905.000000
</object>

<object>
type=31
name=autotrade #258042394 buy 9 WINM23 at 105870, WINM23
hidden=1
color=11296515
selectable=0
date1=1681988730
value1=105870.000000
</object>

<object>
type=32
name=autotrade #258042544 sell 9 WINM23 at 105980, profit 22.00, WIN
hidden=1
color=1918177
selectable=0
date1=1681988803
value1=105980.000000
</object>

<object>
type=31
name=autotrade #258043196 buy 10 WINM23 at 106220, WINM23
hidden=1
color=11296515
selectable=0
date1=1681989106
value1=106220.000000
</object>

<object>
type=32
name=autotrade #258043502 sell 10 WINM23 at 106290, TP, profit 140.0
hidden=1
descr=[tp 106290]
color=1918177
selectable=0
date1=1681989249
value1=106290.000000
</object>

<object>
type=31
name=autotrade #258044713 buy 10 WINM23 at 105945, WINM23
hidden=1
color=11296515
selectable=0
date1=1681990368
value1=105945.000000
</object>

<object>
type=32
name=autotrade #258044774 sell 10 WINM23 at 105990, TP, profit 90.00
hidden=1
descr=[tp 105995]
color=1918177
selectable=0
date1=1681990423
value1=105990.000000
</object>

<object>
type=31
name=autotrade #258047810 buy 5 WINM23 at 106035, WINM23
hidden=1
color=11296515
selectable=0
date1=1681993601
value1=106035.000000
</object>

<object>
type=32
name=autotrade #258047823 sell 5 WINM23 at 106060, profit 25.00, WIN
hidden=1
color=1918177
selectable=0
date1=1681993637
value1=106060.000000
</object>

<object>
type=31
name=autotrade #258065621 buy 5 WINM23 at 105530, WINM23
hidden=1
color=11296515
selectable=0
date1=1682333623
value1=105530.000000
</object>

<object>
type=31
name=autotrade #258065811 buy 5 WINM23 at 105630, WINM23
hidden=1
color=11296515
selectable=0
date1=1682333753
value1=105630.000000
</object>

<object>
type=32
name=autotrade #258065847 sell 10 WINM23 at 105685, TP, profit 210.0
hidden=1
descr=[tp 105690]
color=1918177
selectable=0
date1=1682333794
value1=105685.000000
</object>

<object>
type=32
name=autotrade #258067633 sell 5 WINM23 at 106250, WINM23
hidden=1
color=1918177
selectable=0
date1=1682335068
value1=106250.000000
</object>

<object>
type=31
name=autotrade #258067771 buy 5 WINM23 at 106154, profit 54.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682335234
value1=106154.000000
</object>

<object>
type=32
name=autotrade #258082902 sell 5 WINM23 at 104950, WINM23
hidden=1
color=1918177
selectable=0
date1=1682416914
value1=104950.000000
</object>

<object>
type=31
name=autotrade #258083541 buy 2 WINM23 at 104870, profit 32.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682417215
value1=104870.000000
</object>

<object>
type=31
name=autotrade #258084711 buy 1 WINM23 at 104770, profit 36.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682417920
value1=104770.000000
</object>

<object>
type=31
name=autotrade #258085302 buy 2 WINM23 at 104900, profit 20.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682418341
value1=104900.000000
</object>

<object>
type=32
name=autotrade #258088953 sell 10 WINM23 at 104545, WINM23
hidden=1
color=1918177
selectable=0
date1=1682420967
value1=104545.000000
</object>

<object>
type=31
name=autotrade #258088959 buy 10 WINM23 at 104510, profit 70.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682420975
value1=104510.000000
</object>

<object>
type=32
name=autotrade #258088984 sell 10 WINM23 at 104470, WINM23
hidden=1
color=1918177
selectable=0
date1=1682420985
value1=104470.000000
</object>

<object>
type=31
name=autotrade #258089017 buy 10 WINM23 at 104465, profit 10.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682421001
value1=104465.000000
</object>

<object>
type=32
name=autotrade #258089106 sell 10 WINM23 at 104365, WINM23
hidden=1
color=1918177
selectable=0
date1=1682421075
value1=104365.000000
</object>

<object>
type=31
name=autotrade #258089979 buy 10 WINM23 at 104325, TP, profit 80.00,
hidden=1
descr=[tp 104315]
color=11296515
selectable=0
date1=1682422199
value1=104325.000000
</object>

<object>
type=31
name=autotrade #258091739 buy 10 WINM23 at 104475, WINM23
hidden=1
color=11296515
selectable=0
date1=1682424302
value1=104475.000000
</object>

<object>
type=32
name=autotrade #258091744 sell 10 WINM23 at 104495, TP, profit 40.00
hidden=1
descr=[tp 104500]
color=1918177
selectable=0
date1=1682424320
value1=104495.000000
</object>

<object>
type=32
name=autotrade #258092625 sell 10 WINM23 at 104625, WINM23
hidden=1
color=1918177
selectable=0
date1=1682425229
value1=104625.000000
</object>

<object>
type=31
name=autotrade #258092674 buy 10 WINM23 at 104600, profit 50.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682425245
value1=104600.000000
</object>

<object>
type=31
name=autotrade #258107828 buy 3 WINM23 at 105140, WINM23
hidden=1
color=11296515
selectable=0
date1=1682503872
value1=105140.000000
</object>

<object>
type=32
name=autotrade #258107927 sell 3 WINM23 at 105185, profit 27.00, WIN
hidden=1
color=1918177
selectable=0
date1=1682503950
value1=105185.000000
</object>

<object>
type=32
name=autotrade #258108443 sell 10 WINM23 at 104835, WINM23
hidden=1
color=1918177
selectable=0
date1=1682504264
value1=104835.000000
</object>

<object>
type=31
name=autotrade #258108618 buy 10 WINM23 at 104790, profit 90.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682504317
value1=104790.000000
</object>

<object>
type=32
name=autotrade #258109672 sell 5 WINM23 at 104750, WINM23
hidden=1
color=1918177
selectable=0
date1=1682505087
value1=104750.000000
</object>

<object>
type=31
name=autotrade #258109712 buy 5 WINM23 at 104735, profit 15.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682505105
value1=104735.000000
</object>

<object>
type=31
name=autotrade #258112600 buy 5 WINM23 at 104355, WINM23
hidden=1
color=11296515
selectable=0
date1=1682507559
value1=104355.000000
</object>

<object>
type=32
name=autotrade #258112774 sell 5 WINM23 at 104455, TP, profit 100.00
hidden=1
descr=[tp 104450]
color=1918177
selectable=0
date1=1682507653
value1=104455.000000
</object>

<object>
type=32
name=autotrade #258113340 sell 10 WINM23 at 104225, WINM23
hidden=1
color=1918177
selectable=0
date1=1682508040
value1=104225.000000
</object>

<object>
type=31
name=autotrade #258113363 buy 10 WINM23 at 104185, profit 80.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682508052
value1=104185.000000
</object>

<object>
type=32
name=autotrade #258113492 sell 10 WINM23 at 104115, WINM23
hidden=1
color=1918177
selectable=0
date1=1682508132
value1=104115.000000
</object>

<object>
type=31
name=autotrade #258113514 buy 10 WINM23 at 104110, profit 10.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682508147
value1=104110.000000
</object>

<object>
type=32
name=autotrade #258113539 sell 10 WINM23 at 104080, WINM23
hidden=1
color=1918177
selectable=0
date1=1682508172
value1=104080.000000
</object>

<object>
type=31
name=autotrade #258113694 buy 10 WINM23 at 104245, profit -330.00, W
hidden=1
color=11296515
selectable=0
date1=1682508431
value1=104245.000000
</object>

<object>
type=31
name=autotrade #258113706 buy 10 WINM23 at 104245, WINM23
hidden=1
color=11296515
selectable=0
date1=1682508439
value1=104245.000000
</object>

<object>
type=32
name=autotrade #258113959 sell 10 WINM23 at 104420, TP, profit 350.0
hidden=1
descr=[tp 104425]
color=1918177
selectable=0
date1=1682508708
value1=104420.000000
</object>

<object>
type=31
name=autotrade #258125129 buy 10 WINM23 at 104100, WINM23
hidden=1
color=11296515
selectable=0
date1=1682524661
value1=104100.000000
</object>

<object>
type=32
name=autotrade #258125177 sell 10 WINM23 at 104135, TP, profit 70.00
hidden=1
descr=[tp 104140]
color=1918177
selectable=0
date1=1682524844
value1=104135.000000
</object>

<object>
type=31
name=autotrade #258133415 buy 10 WINM23 at 103945, WINM23
hidden=1
color=11296515
selectable=0
date1=1682590044
value1=103945.000000
</object>

<object>
type=31
name=autotrade #258137160 buy 1 WINM23 at 103895, WINM23
hidden=1
color=11296515
selectable=0
date1=1682592649
value1=103895.000000
</object>

<object>
type=32
name=autotrade #258137255 sell 1 WINM23 at 103950, profit 11.00, WIN
hidden=1
color=1918177
selectable=0
date1=1682592817
value1=103950.000000
</object>

<object>
type=31
name=autotrade #258137382 buy 1 WINM23 at 104015, WINM23
hidden=1
color=11296515
selectable=0
date1=1682592981
value1=104015.000000
</object>

<object>
type=32
name=autotrade #258137453 sell 1 WINM23 at 104080, profit 13.00, WIN
hidden=1
color=1918177
selectable=0
date1=1682593017
value1=104080.000000
</object>

<object>
type=32
name=autotrade #258143389 sell 1 WINM23 at 103890, WINM23
hidden=1
color=1918177
selectable=0
date1=1682600161
value1=103890.000000
</object>

<object>
type=31
name=autotrade #258143558 buy 1 WINM23 at 103835, profit 11.00, WINM
hidden=1
color=11296515
selectable=0
date1=1682600380
value1=103835.000000
</object>

<object>
type=32
name=autotrade #258143737 sell 2 WINM23 at 103650, WINM23
hidden=1
color=1918177
selectable=0
date1=1682600504
value1=103650.000000
</object>

<object>
type=31
name=autotrade #258143845 buy 2 WINM23 at 103860, profit -84.00, WIN
hidden=1
color=11296515
selectable=0
date1=1682600583
value1=103860.000000
</object>

<object>
type=31
name=autotrade #258143860 buy 1 WINM23 at 103875, WINM23
hidden=1
color=11296515
selectable=0
date1=1682600604
value1=103875.000000
</object>

<object>
type=32
name=autotrade #258143967 sell 1 WINM23 at 103710, SL, profit -33.00
hidden=1
descr=[sl 103710]
color=1918177
selectable=0
date1=1682600690
value1=103710.000000
</object>

<object>
type=31
name=autotrade #258148403 buy 1 WINM23 at 104395, WINM23
hidden=1
color=11296515
selectable=0
date1=1682607959
value1=104395.000000
</object>

<object>
type=32
name=autotrade #258148559 sell 1 WINM23 at 104255, profit -28.00, WI
hidden=1
color=1918177
selectable=0
date1=1682608139
value1=104255.000000
</object>

<object>
type=32
name=autotrade #258300150 sell 3 WINM23 at 107230, WINM23
hidden=1
color=1918177
selectable=0
date1=1683544204
value1=107230.000000
</object>

<object>
type=31
name=autotrade #258300383 buy 1 WINM23 at 107110, profit 24.00, WINM
hidden=1
color=11296515
selectable=0
date1=1683544314
value1=107110.000000
</object>

<object>
type=32
name=autotrade #258301377 sell 2 WINM23 at 107335, WINM23
hidden=1
color=1918177
selectable=0
date1=1683545482
value1=107335.000000
</object>

<object>
type=31
name=autotrade #258303546 buy 4 WINM23 at 107105, TP, profit 142.00,
hidden=1
descr=[tp 107100]
color=11296515
selectable=0
date1=1683547779
value1=107105.000000
</object>

<object>
type=32
name=autotrade #258325727 sell 5 WINM23 at 107855, WINM23
hidden=1
color=1918177
selectable=0
date1=1683630501
value1=107855.000000
</object>

<object>
type=31
name=autotrade #258326156 buy 2 WINM23 at 107840, profit 6.00, WINM2
hidden=1
color=11296515
selectable=0
date1=1683630858
value1=107840.000000
</object>

<object>
type=32
name=autotrade #258326870 sell 2 WINM23 at 108010, WINM23
hidden=1
color=1918177
selectable=0
date1=1683631616
value1=108010.000000
</object>

<object>
type=31
name=autotrade #258327070 buy 5 WINM23 at 107887, profit 13.20, WINM
hidden=1
color=11296515
selectable=0
date1=1683631925
value1=107887.000000
</object>

<object>
type=32
name=autotrade #258327998 sell 5 WINM23 at 108015, WINM23
hidden=1
color=1918177
selectable=0
date1=1683633145
value1=108015.000000
</object>

<object>
type=31
name=autotrade #258328014 buy 5 WINM23 at 107985, TP, profit 30.00, 
hidden=1
descr=[tp 107975]
color=11296515
selectable=0
date1=1683633158
value1=107985.000000
</object>

<object>
type=32
name=autotrade #258328044 sell 10 WINM23 at 108010, WINM23
hidden=1
color=1918177
selectable=0
date1=1683633198
value1=108010.000000
</object>

<object>
type=32
name=autotrade #258331053 sell 30 WINM23 at 108500, WINM23
hidden=1
color=1918177
selectable=0
date1=1683635229
value1=108500.000000
</object>

<object>
type=31
name=autotrade #258331084 buy 15 WINM23 at 108470, profit 90.00, WIN
hidden=1
color=11296515
selectable=0
date1=1683635260
value1=108470.000000
</object>

<object>
type=31
name=autotrade #258331140 buy 15 WINM23 at 108450, profit 150.00, WI
hidden=1
color=11296515
selectable=0
date1=1683635357
value1=108450.000000
</object>

<object>
type=32
name=autotrade #258331284 sell 30 WINM23 at 108385, WINM23
hidden=1
color=1918177
selectable=0
date1=1683635578
value1=108385.000000
</object>

<object>
type=31
name=autotrade #258331641 buy 30 WINM23 at 108275, profit 660.00, WI
hidden=1
color=11296515
selectable=0
date1=1683635826
value1=108275.000000
</object>

<object>
type=32
name=autotrade #258331666 sell 30 WINM23 at 108285, WINM23
hidden=1
color=1918177
selectable=0
date1=1683635874
value1=108285.000000
</object>

<object>
type=32
name=autotrade #258334731 sell 5 WINM23 at 108740, WINM23
hidden=1
color=1918177
selectable=0
date1=1683639456
value1=108740.000000
</object>

<object>
type=32
name=autotrade #258334959 sell 2 WINM23 at 108675, WINM23
hidden=1
color=1918177
selectable=0
date1=1683639854
value1=108675.000000
</object>

<object>
type=32
name=autotrade #258335309 sell 10 WINM23 at 108665, WINM23
hidden=1
color=1918177
selectable=0
date1=1683640601
value1=108665.000000
</object>

<object>
type=32
name=autotrade #258335722 sell 10 WINM23 at 108545, WINM23
hidden=1
color=1918177
selectable=0
date1=1683641676
value1=108545.000000
</object>

<object>
type=32
name=autotrade #258336401 sell 15 WINM23 at 108485, WINM23
hidden=1
color=1918177
selectable=0
date1=1683643058
value1=108485.000000
</object>

<object>
type=32
name=autotrade #258337462 sell 8 WINM23 at 108425, WINM23
hidden=1
color=1918177
selectable=0
date1=1683645288
value1=108425.000000
</object>

<object>
type=32
name=autotrade #258338207 sell 50 WINM23 at 108440, WINM23
hidden=1
color=1918177
selectable=0
date1=1683647135
value1=108440.000000
</object>

<object>
type=31
name=autotrade #258338476 buy 100 WINM23 at 108280.45, profit 611.10
hidden=1
color=11296515
selectable=0
date1=1683647490
value1=108280.450000
</object>

<object>
type=31
name=autotrade #258352569 buy 50 WINM23 at 108470, WINM23
hidden=1
color=11296515
selectable=0
date1=1683715028
value1=108470.000000
</object>

<object>
type=32
name=autotrade #258352585 sell 50 WINM23 at 108500, profit 300.00, W
hidden=1
color=1918177
selectable=0
date1=1683715038
value1=108500.000000
</object>

<object>
type=31
name=autotrade #258355804 buy 15 WINM23 at 107985, WINM23
hidden=1
color=11296515
selectable=0
date1=1683715964
value1=107985.000000
</object>

<object>
type=32
name=autotrade #258355814 sell 15 WINM23 at 108015, profit 90.00, WI
hidden=1
color=1918177
selectable=0
date1=1683715979
value1=108015.000000
</object>

<object>
type=31
name=autotrade #258355924 buy 30 WINM23 at 108030, WINM23
hidden=1
color=11296515
selectable=0
date1=1683716080
value1=108030.000000
</object>

<object>
type=32
name=autotrade #258355939 sell 30 WINM23 at 108070, profit 240.00, W
hidden=1
color=1918177
selectable=0
date1=1683716088
value1=108070.000000
</object>

<object>
type=31
name=autotrade #258377647 buy 30 WINM23 at 107845, WINM23
hidden=1
color=11296515
selectable=0
date1=1683800129
value1=107845.000000
</object>

<object>
type=32
name=autotrade #258377716 sell 30 WINM23 at 107885, profit 56.00, WI
hidden=1
color=1918177
selectable=0
date1=1683800145
value1=107885.000000
</object>

<object>
type=31
name=autotrade #258378385 buy 30 WINM23 at 108095, WINM23
hidden=1
color=11296515
selectable=0
date1=1683800441
value1=108095.000000
</object>

<object>
type=31
name=autotrade #258379002 buy 30 WINM23 at 107970, WINM23
hidden=1
color=11296515
selectable=0
date1=1683800832
value1=107970.000000
</object>

<object>
type=32
name=autotrade #258379196 sell 60 WINM23 at 108060, profit 38.50, WI
hidden=1
color=1918177
selectable=0
date1=1683800961
value1=108060.000000
</object>

<object>
type=32
name=autotrade #258381117 sell 30 WINM23 at 107920, WINM23
hidden=1
color=1918177
selectable=0
date1=1683802213
value1=107920.000000
</object>

<object>
type=31
name=autotrade #258381155 buy 30 WINM23 at 107880, profit 56.00, WIN
hidden=1
color=11296515
selectable=0
date1=1683802224
value1=107880.000000
</object>

<object>
type=31
name=autotrade #258381848 buy 30 WINM23 at 108240, WINM23
hidden=1
color=11296515
selectable=0
date1=1683802636
value1=108240.000000
</object>

<object>
type=32
name=autotrade #258381873 sell 30 WINM23 at 108285, profit 63.00, WI
hidden=1
color=1918177
selectable=0
date1=1683802645
value1=108285.000000
</object>

<object>
type=32
name=autotrade #258395179 sell 30 WINM23 at 108840, WINM23
hidden=1
color=1918177
selectable=0
date1=1683816553
value1=108840.000000
</object>

<object>
type=31
name=autotrade #258395204 buy 30 WINM23 at 108820, profit 28.00, WIN
hidden=1
color=11296515
selectable=0
date1=1683816564
value1=108820.000000
</object>

<object>
type=32
name=autotrade #258398725 sell 50 WINM23 at 109605, WINM23
hidden=1
color=1918177
selectable=0
date1=1683819831
value1=109605.000000
</object>

<object>
type=31
name=autotrade #258398906 buy 50 WINM23 at 109545, profit 84.00, WIN
hidden=1
color=11296515
selectable=0
date1=1683819955
value1=109545.000000
</object>

<object>
type=32
name=autotrade #258399110 sell 50 WINM23 at 109534.3, WINM23
hidden=1
color=1918177
selectable=0
date1=1683820223
value1=109534.300000
</object>

<object>
type=31
name=autotrade #258399140 buy 50 WINM23 at 109475, TP, profit 83.02,
hidden=1
descr=[tp 109475]
color=11296515
selectable=0
date1=1683820240
value1=109475.000000
</object>

<object>
type=32
name=autotrade #258399504 sell 50 WINM23 at 109314.9, WINM23
hidden=1
color=1918177
selectable=0
date1=1683820688
value1=109314.900000
</object>

<object>
type=31
name=autotrade #258399594 buy 50 WINM23 at 109300, profit 20.86, WIN
hidden=1
color=11296515
selectable=0
date1=1683820786
value1=109300.000000
</object>

<object>
type=32
name=autotrade #258399702 sell 50 WINM23 at 109330, WINM23
hidden=1
color=1918177
selectable=0
date1=1683820886
value1=109330.000000
</object>

<object>
type=32
name=autotrade #258399807 sell 50 WINM23 at 109340, WINM23
hidden=1
color=1918177
selectable=0
date1=1683821063
value1=109340.000000
</object>

<object>
type=31
name=autotrade #258399848 buy 100 WINM23 at 109316.95, profit 28.00,
hidden=1
color=11296515
selectable=0
date1=1683821146
value1=109316.950000
</object>

<object>
type=31
name=autotrade #258409370 buy 50 WINM23 at 108945, WINM23
hidden=1
color=11296515
selectable=0
date1=1683888044
value1=108945.000000
</object>

<object>
type=32
name=autotrade #258409420 sell 50 WINM23 at 108970, TP, profit 250.0
hidden=1
descr=[tp 108980]
color=1918177
selectable=0
date1=1683888075
value1=108970.000000
</object>

<object>
type=31
name=autotrade #258410422 buy 50 WINM23 at 109195, WINM23
hidden=1
color=11296515
selectable=0
date1=1683888627
value1=109195.000000
</object>

<object>
type=32
name=autotrade #258410535 sell 50 WINM23 at 109260, profit 650.00, W
hidden=1
color=1918177
selectable=0
date1=1683888677
value1=109260.000000
</object>

<object>
type=31
name=autotrade #258410887 buy 30 WINM23 at 109485, WINM23
hidden=1
color=11296515
selectable=0
date1=1683888786
value1=109485.000000
</object>

<object>
type=32
name=autotrade #258410923 sell 30 WINM23 at 109515, profit 180.00, W
hidden=1
color=1918177
selectable=0
date1=1683888808
value1=109515.000000
</object>

<object>
type=32
name=autotrade #258412022 sell 50 WINM23 at 109465, WINM23
hidden=1
color=1918177
selectable=0
date1=1683889338
value1=109465.000000
</object>

<object>
type=32
name=autotrade #258412157 sell 50 WINM23 at 109565, WINM23
hidden=1
color=1918177
selectable=0
date1=1683889458
value1=109565.000000
</object>

<object>
type=31
name=autotrade #258412281 buy 100 WINM23 at 109465, profit 970.00, W
hidden=1
color=11296515
selectable=0
date1=1683889597
value1=109465.000000
</object>

<object>
type=32
name=autotrade #258412318 sell 100 WINM23 at 109460, WINM23
hidden=1
color=1918177
selectable=0
date1=1683889617
value1=109460.000000
</object>

<object>
type=31
name=autotrade #258412386 buy 100 WINM23 at 109430, TP, profit 582.0
hidden=1
descr=[tp 109425]
color=11296515
selectable=0
date1=1683889673
value1=109430.000000
</object>

<object>
type=32
name=autotrade #258413443 sell 100 WINM23 at 109685, WINM23
hidden=1
color=1918177
selectable=0
date1=1683890494
value1=109685.000000
</object>

<object>
type=32
name=autotrade #258413658 sell 50 WINM23 at 109785, WINM23
hidden=1
color=1918177
selectable=0
date1=1683890777
value1=109785.000000
</object>

<object>
type=31
name=autotrade #258413918 buy 150 WINM23 at 109670, profit 937.67, W
hidden=1
color=11296515
selectable=0
date1=1683891035
value1=109670.000000
</object>

<object>
type=32
name=autotrade #258423637 sell 50 WINM23 at 109560, WINM23
hidden=1
color=1918177
selectable=0
date1=1683906543
value1=109560.000000
</object>

<object>
type=31
name=autotrade #258423659 buy 50 WINM23 at 109530, profit 300.00, WI
hidden=1
color=11296515
selectable=0
date1=1683906555
value1=109530.000000
</object>

<object>
type=32
name=autotrade #258434172 sell 30 WINM23 at 109460, WINM23
hidden=1
color=1918177
selectable=0
date1=1684147723
value1=109460.000000
</object>

<object>
type=31
name=autotrade #258434355 buy 30 WINM23 at 109455, profit 2.00, WINM
hidden=1
color=11296515
selectable=0
date1=1684147863
value1=109455.000000
</object>

<object>
type=32
name=autotrade #258438500 sell 30 WINM23 at 109715, WINM23
hidden=1
color=1918177
selectable=0
date1=1684152980
value1=109715.000000
</object>

<object>
type=31
name=autotrade #258438515 buy 30 WINM23 at 109690, profit 150.00, WI
hidden=1
color=11296515
selectable=0
date1=1684153031
value1=109690.000000
</object>

<object>
type=32
name=autotrade #258444492 sell 30 WINM23 at 109955, WINM23
hidden=1
color=1918177
selectable=0
date1=1684163826
value1=109955.000000
</object>

<object>
type=32
name=autotrade #258444711 sell 30 WINM23 at 110020, WINM23
hidden=1
color=1918177
selectable=0
date1=1684164103
value1=110020.000000
</object>

<object>
type=32
name=autotrade #258445123 sell 30 WINM23 at 110000, WINM23
hidden=1
color=1918177
selectable=0
date1=1684164432
value1=110000.000000
</object>

<object>
type=31
name=autotrade #258445198 buy 90 WINM23 at 109975, TP, profit 300.00
hidden=1
descr=[tp 109970]
color=11296515
selectable=0
date1=1684164538
value1=109975.000000
</object>

<object>
type=32
name=autotrade #258445706 sell 80 WINM23 at 110011.25, WINM23
hidden=1
color=1918177
selectable=0
date1=1684165280
value1=110011.250000
</object>

<object>
type=32
name=autotrade #258445769 sell 30 WINM23 at 110055, WINM23
hidden=1
color=1918177
selectable=0
date1=1684165377
value1=110055.000000
</object>

<object>
type=32
name=autotrade #258446315 sell 10 WINM23 at 110345, WINM23
hidden=1
color=1918177
selectable=0
date1=1684165521
value1=110345.000000
</object>

<object>
type=32
name=autotrade #258446516 sell 10 WINM23 at 110290, WINM23
hidden=1
color=1918177
selectable=0
date1=1684165665
value1=110290.000000
</object>

<object>
type=32
name=autotrade #258446746 sell 10 WINM23 at 110235, WINM23
hidden=1
color=1918177
selectable=0
date1=1684165855
value1=110235.000000
</object>

<object>
type=32
name=autotrade #258447008 sell 50 WINM23 at 110160, WINM23
hidden=1
color=1918177
selectable=0
date1=1684166138
value1=110160.000000
</object>

<object>
type=31
name=autotrade #258447350 buy 190 WINM23 at 110070, profit 607.53, W
hidden=1
color=11296515
selectable=0
date1=1684166235
value1=110070.000000
</object>

<object>
type=32
name=autotrade #258452941 sell 50 WINM23 at 109840, WINM23
hidden=1
color=1918177
selectable=0
date1=1684229428
value1=109840.000000
</object>

<object>
type=31
name=autotrade #258453077 buy 50 WINM23 at 109815, profit 200.00, WI
hidden=1
color=11296515
selectable=0
date1=1684229562
value1=109815.000000
</object>

<object>
type=31
name=autotrade #258454730 buy 50 WINM23 at 110230, WINM23
hidden=1
color=11296515
selectable=0
date1=1684231254
value1=110230.000000
</object>

<object>
type=32
name=autotrade #258454821 sell 50 WINM23 at 110275, profit 360.00, W
hidden=1
color=1918177
selectable=0
date1=1684231292
value1=110275.000000
</object>

<object>
type=32
name=autotrade #258456623 sell 50 WINM23 at 110440, WINM23
hidden=1
color=1918177
selectable=0
date1=1684232292
value1=110440.000000
</object>

<object>
type=32
name=autotrade #258456848 sell 50 WINM23 at 110480, WINM23
hidden=1
color=1918177
selectable=0
date1=1684232581
value1=110480.000000
</object>

<object>
type=31
name=autotrade #258456882 buy 100 WINM23 at 110435, profit 200.00, W
hidden=1
color=11296515
selectable=0
date1=1684232612
value1=110435.000000
</object>

<object>
type=32
name=autotrade #258458302 sell 30 WINM23 at 111015, WINM23
hidden=1
color=1918177
selectable=0
date1=1684233311
value1=111015.000000
</object>

<object>
type=31
name=autotrade #258458330 buy 30 WINM23 at 110970, profit 270.00, WI
hidden=1
color=11296515
selectable=0
date1=1684233325
value1=110970.000000
</object>

<object>
type=32
name=autotrade #258458387 sell 50 WINM23 at 110875, WINM23
hidden=1
color=1918177
selectable=0
date1=1684233344
value1=110875.000000
</object>

<object>
type=31
name=autotrade #258458684 buy 50 WINM23 at 110801, profit 600.00, WI
hidden=1
color=11296515
selectable=0
date1=1684233534
value1=110801.000000
</object>

<object>
type=32
name=autotrade #258484379 sell 50 WINM23 at 110410, WINM23
hidden=1
color=1918177
selectable=0
date1=1684318996
value1=110410.000000
</object>

<object>
type=31
name=autotrade #258484397 buy 50 WINM23 at 110370, profit 344.00, WI
hidden=1
color=11296515
selectable=0
date1=1684319010
value1=110370.000000
</object>

<object>
type=32
name=autotrade #258485154 sell 50 WINM23 at 110265, WINM23
hidden=1
color=1918177
selectable=0
date1=1684319666
value1=110265.000000
</object>

<object>
type=31
name=autotrade #258485182 buy 50 WINM23 at 110210, profit 473.00, WI
hidden=1
color=11296515
selectable=0
date1=1684319679
value1=110210.000000
</object>

<object>
type=32
name=autotrade #258485692 sell 50 WINM23 at 110285, WINM23
hidden=1
color=1918177
selectable=0
date1=1684320019
value1=110285.000000
</object>

<object>
type=32
name=autotrade #258485779 sell 30 WINM23 at 110375, WINM23
hidden=1
color=1918177
selectable=0
date1=1684320096
value1=110375.000000
</object>

<object>
type=31
name=autotrade #258485840 buy 80 WINM23 at 110285, profit 290.25, WI
hidden=1
color=11296515
selectable=0
date1=1684320155
value1=110285.000000
</object>

<object>
type=32
name=autotrade #258488451 sell 80 WINM23 at 110071.875, WINM23
hidden=1
color=1918177
selectable=0
date1=1684322287
value1=110071.875000
</object>

<object>
type=32
name=autotrade #258488586 sell 50 WINM23 at 110175, WINM23
hidden=1
color=1918177
selectable=0
date1=1684322392
value1=110175.000000
</object>

<object>
type=32
name=autotrade #258488696 sell 20 WINM23 at 110185, WINM23
hidden=1
color=1918177
selectable=0
date1=1684322581
value1=110185.000000
</object>

<object>
type=31
name=autotrade #258490062 buy 150 WINM23 at 110035, profit 742.47, W
hidden=1
color=11296515
selectable=0
date1=1684323935
value1=110035.000000
</object>

<object>
type=32
name=autotrade #258495998 sell 50 WINM23 at 110510, WINM23
hidden=1
color=1918177
selectable=0
date1=1684331779
value1=110510.000000
</object>

<object>
type=31
name=autotrade #258496031 buy 50 WINM23 at 110475, TP, profit 301.00
hidden=1
descr=[tp 110470]
color=11296515
selectable=0
date1=1684331822
value1=110475.000000
</object>

<object>
type=31
name=autotrade #258506778 buy 50 WINM23 at 109985, WINM23
hidden=1
color=11296515
selectable=0
date1=1684404116
value1=109985.000000
</object>

<object>
type=32
name=autotrade #258506843 sell 50 WINM23 at 110035, profit 440.00, W
hidden=1
color=1918177
selectable=0
date1=1684404130
value1=110035.000000
</object>

<object>
type=32
name=autotrade #258511849 sell 50 WINM23 at 109815, WINM23
hidden=1
color=1918177
selectable=0
date1=1684407665
value1=109815.000000
</object>

<object>
type=31
name=autotrade #258511971 buy 50 WINM23 at 109735.6, profit 704.00, 
hidden=1
color=11296515
selectable=0
date1=1684407697
value1=109735.600000
</object>

<object>
type=31
name=autotrade #258512892 buy 50 WINM23 at 110320, WINM23
hidden=1
color=11296515
selectable=0
date1=1684408370
value1=110320.000000
</object>

<object>
type=32
name=autotrade #258512945 sell 50 WINM23 at 110365, profit 396.00, W
hidden=1
color=1918177
selectable=0
date1=1684408387
value1=110365.000000
</object>

<object>
type=32
name=autotrade #258513609 sell 50 WINM23 at 110250, WINM23
hidden=1
color=1918177
selectable=0
date1=1684408968
value1=110250.000000
</object>

<object>
type=32
name=autotrade #258513708 sell 50 WINM23 at 110315, WINM23
hidden=1
color=1918177
selectable=0
date1=1684409091
value1=110315.000000
</object>

<object>
type=32
name=autotrade #258513871 sell 30 WINM23 at 110360, WINM23
hidden=1
color=1918177
selectable=0
date1=1684409240
value1=110360.000000
</object>

<object>
type=32
name=autotrade #258514060 sell 100 WINM23 at 110355, WINM23
hidden=1
color=1918177
selectable=0
date1=1684409541
value1=110355.000000
</object>

<object>
type=31
name=autotrade #258514339 buy 230 WINM23 at 110297.109, profit 256.3
hidden=1
color=11296515
selectable=0
date1=1684409765
value1=110297.108696
</object>

<object>
type=32
name=autotrade #258532658 sell 30 WINM23 at 110910, WINM23
hidden=1
color=1918177
selectable=0
date1=1684491181
value1=110910.000000
</object>

<object>
type=31
name=autotrade #258532680 buy 30 WINM23 at 110845, profit 390.00, WI
hidden=1
color=11296515
selectable=0
date1=1684491193
value1=110845.000000
</object>

<object>
type=32
name=autotrade #258532942 sell 100 WINM23 at 110640, WINM23
hidden=1
color=1918177
selectable=0
date1=1684491296
value1=110640.000000
</object>

<object>
type=32
name=autotrade #258542520 sell 5 WINM23 at 111570, WINM23
hidden=1
color=1918177
selectable=0
date1=1684502116
value1=111570.000000
</object>

<object>
type=32
name=autotrade #258556712 sell 10 WINM23 at 111290, WINM23
hidden=1
color=1918177
selectable=0
date1=1684749844
value1=111290.000000
</object>

<object>
type=31
name=autotrade #258556758 buy 10 WINM23 at 111235, TP, profit 110.00
hidden=1
descr=[tp 111225]
color=11296515
selectable=0
date1=1684749849
value1=111235.000000
</object>

<object>
type=32
name=autotrade #258557943 sell 10 WINM23 at 111955, WINM23
hidden=1
color=1918177
selectable=0
date1=1684750265
value1=111955.000000
</object>

<object>
type=31
name=autotrade #258559729 buy 2 WINM23 at 111842.5, profit 28.00, WI
hidden=1
color=11296515
selectable=0
date1=1684751617
value1=111842.500000
</object>

<object>
type=31
name=autotrade #258559935 buy 1 WINM23 at 111700, profit 51.00, WINM
hidden=1
color=11296515
selectable=0
date1=1684751735
value1=111700.000000
</object>

<object>
type=31
name=autotrade #258560256 buy 1 WINM23 at 111460, profit 99.00, WINM
hidden=1
color=11296515
selectable=0
date1=1684751961
value1=111460.000000
</object>

<object>
type=31
name=autotrade #258560600 buy 6 WINM23 at 111563.333, profit 85.00, 
hidden=1
color=11296515
selectable=0
date1=1684752186
value1=111563.333333
</object>

<object>
type=32
name=autotrade #258560883 sell 50 WINM23 at 111200, WINM23
hidden=1
color=1918177
selectable=0
date1=1684752402
value1=111200.000000
</object>

<object>
type=31
name=autotrade #258560905 buy 50 WINM23 at 111130, profit 574.00, WI
hidden=1
color=11296515
selectable=0
date1=1684752410
value1=111130.000000
</object>

<object>
type=31
name=autotrade #258563560 buy 50 WINM23 at 111535.4, WINM23
hidden=1
color=11296515
selectable=0
date1=1684755262
value1=111535.400000
</object>

<object>
type=31
name=autotrade #258563742 buy 20 WINM23 at 111435, WINM23
hidden=1
color=11296515
selectable=0
date1=1684755576
value1=111435.000000
</object>

<object>
type=32
name=autotrade #258564557 sell 70 WINM23 at 111520, profit 2.66, WIN
hidden=1
color=1918177
selectable=0
date1=1684756463
value1=111520.000000
</object>

<object>
type=32
name=autotrade #258564896 sell 50 WINM23 at 111330, WINM23
hidden=1
color=1918177
selectable=0
date1=1684756944
value1=111330.000000
</object>

<object>
type=31
name=autotrade #258564905 buy 50 WINM23 at 111315, profit 123.00, WI
hidden=1
color=11296515
selectable=0
date1=1684756953
value1=111315.000000
</object>

<object>
type=32
name=autotrade #258580510 sell 15 WINM23 at 111285, WINM23
hidden=1
color=1918177
selectable=0
date1=1684837365
value1=111285.000000
</object>

<object>
type=32
name=autotrade #258580887 sell 15 WINM23 at 111440, WINM23
hidden=1
color=1918177
selectable=0
date1=1684837794
value1=111440.000000
</object>

<object>
type=31
name=autotrade #258580957 buy 30 WINM23 at 111335, profit 165.00, WI
hidden=1
color=11296515
selectable=0
date1=1684837816
value1=111335.000000
</object>

<object>
type=32
name=autotrade #258581224 sell 30 WINM23 at 111205, WINM23
hidden=1
color=1918177
selectable=0
date1=1684837883
value1=111205.000000
</object>

<object>
type=32
name=autotrade #258581379 sell 30 WINM23 at 111335, WINM23
hidden=1
color=1918177
selectable=0
date1=1684838020
value1=111335.000000
</object>

<object>
type=31
name=autotrade #258581398 buy 60 WINM23 at 111255, profit 117.00, WI
hidden=1
color=11296515
selectable=0
date1=1684838046
value1=111255.000000
</object>

<object>
type=32
name=autotrade #258583682 sell 30 WINM23 at 111365, WINM23
hidden=1
color=1918177
selectable=0
date1=1684840251
value1=111365.000000
</object>

<object>
type=32
name=autotrade #258583768 sell 15 WINM23 at 111395, WINM23
hidden=1
color=1918177
selectable=0
date1=1684840354
value1=111395.000000
</object>

<object>
type=31
name=autotrade #258583789 buy 25 WINM23 at 111370, profit 25.00, WIN
hidden=1
color=11296515
selectable=0
date1=1684840374
value1=111370.000000
</object>

<object>
type=31
name=autotrade #258583852 buy 20 WINM23 at 111295, profit 230.00, WI
hidden=1
color=11296515
selectable=0
date1=1684840435
value1=111295.000000
</object>

<object>
type=32
name=autotrade #258583976 sell 50 WINM23 at 111340, WINM23
hidden=1
color=1918177
selectable=0
date1=1684840562
value1=111340.000000
</object>

<object>
type=32
name=autotrade #258589250 sell 5 WINM23 at 111835, WINM23
hidden=1
color=1918177
selectable=0
date1=1684847026
value1=111835.000000
</object>

<object>
type=31
name=autotrade #258589834 buy 5 WINM23 at 111615, profit 220.00, WIN
hidden=1
color=11296515
selectable=0
date1=1684847527
value1=111615.000000
</object>

<object>
type=32
name=autotrade #258589961 sell 10 WINM23 at 111630, WINM23
hidden=1
color=1918177
selectable=0
date1=1684847757
value1=111630.000000
</object>

<object>
type=31
name=autotrade #258589983 buy 10 WINM23 at 111605, profit 50.00, WIN
hidden=1
color=11296515
selectable=0
date1=1684847786
value1=111605.000000
</object>

<object>
type=31
name=autotrade #258600286 buy 2 WINM23 at 110545, WINM23
hidden=1
color=11296515
selectable=0
date1=1684919608
value1=110545.000000
</object>

<object>
type=31
name=autotrade #258600440 buy 2 WINM23 at 110430, WINM23
hidden=1
color=11296515
selectable=0
date1=1684919962
value1=110430.000000
</object>

<object>
type=32
name=autotrade #258601731 sell 4 WINM23 at 110495, profit 6.00, WINM
hidden=1
color=1918177
selectable=0
date1=1684921339
value1=110495.000000
</object>

<object>
type=31
name=autotrade #258601922 buy 5 WINM23 at 110575, WINM23
hidden=1
color=11296515
selectable=0
date1=1684921443
value1=110575.000000
</object>

<object>
type=31
name=autotrade #258605073 buy 5 WINM23 at 110025, WINM23
hidden=1
color=11296515
selectable=0
date1=1684923657
value1=110025.000000
</object>

<object>
type=31
name=autotrade #258610598 buy 5 WINM23 at 110065, WINM23
hidden=1
color=11296515
selectable=0
date1=1684928530
value1=110065.000000
</object>

<object>
type=32
name=autotrade #258612220 sell 15 WINM23 at 110235, profit 18.67, WI
hidden=1
color=1918177
selectable=0
date1=1684931030
value1=110235.000000
</object>

<object>
type=31
name=autotrade #258612360 buy 30 WINM23 at 110380, WINM23
hidden=1
color=11296515
selectable=0
date1=1684931044
value1=110380.000000
</object>

<object>
type=31
name=autotrade #258612535 buy 15 WINM23 at 110265, WINM23
hidden=1
color=11296515
selectable=0
date1=1684931200
value1=110265.000000
</object>

<object>
type=31
name=autotrade #258613447 buy 15 WINM23 at 110050, WINM23
hidden=1
color=11296515
selectable=0
date1=1684932329
value1=110050.000000
</object>

<object>
type=32
name=autotrade #258614674 sell 60 WINM23 at 109638.75, profit -880.2
hidden=1
color=1918177
selectable=0
date1=1684933928
value1=109638.750000
</object>

<object>
type=32
name=autotrade #258614696 sell 300 WINM23 at 109644.617, WINM23
hidden=1
color=1918177
selectable=0
date1=1684933936
value1=109644.616667
</object>

<object>
type=31
name=autotrade #258615031 buy 300 WINM23 at 109513.683, profit 188.4
hidden=1
color=11296515
selectable=0
date1=1684934186
value1=109513.683333
</object>

<object>
type=32
name=autotrade #258622470 sell 2 WINM23 at 109430, WINM23
hidden=1
color=1918177
selectable=0
date1=1684944328
value1=109430.000000
</object>

<object>
type=31
name=autotrade #258622606 buy 2 WINM23 at 109420, profit 4.00, WINM2
hidden=1
color=11296515
selectable=0
date1=1684944662
value1=109420.000000
</object>

<object>
type=32
name=autotrade #258628058 sell 5 WINM23 at 111225, WINM23
hidden=1
color=1918177
selectable=0
date1=1685006954
value1=111225.000000
</object>

<object>
type=31
name=autotrade #258628124 buy 5 WINM23 at 111115, TP, profit 110.00,
hidden=1
descr=[tp 111120]
color=11296515
selectable=0
date1=1685007019
value1=111115.000000
</object>

<object>
type=32
name=autotrade #258628804 sell 5 WINM23 at 111230, WINM23
hidden=1
color=1918177
selectable=0
date1=1685007931
value1=111230.000000
</object>

<object>
type=31
name=autotrade #258628846 buy 5 WINM23 at 111215, profit 15.00, WINM
hidden=1
color=11296515
selectable=0
date1=1685008001
value1=111215.000000
</object>

<object>
type=32
name=autotrade #258631684 sell 10 WINM23 at 111280, WINM23
hidden=1
color=1918177
selectable=0
date1=1685010089
value1=111280.000000
</object>

<object>
type=31
name=autotrade #258632258 buy 5 WINM23 at 111155, profit 125.00, WIN
hidden=1
color=11296515
selectable=0
date1=1685010668
value1=111155.000000
</object>

<object>
type=31
name=autotrade #258632499 buy 2 WINM23 at 110997.5, profit 60.00, WI
hidden=1
color=11296515
selectable=0
date1=1685010772
value1=110997.500000
</object>

<object>
type=31
name=autotrade #258632929 buy 1 WINM23 at 111025, profit 51.00, WINM
hidden=1
color=11296515
selectable=0
date1=1685011010
value1=111025.000000
</object>

<object>
type=31
name=autotrade #258633239 buy 2 WINM23 at 110730, TP, profit 220.00,
hidden=1
descr=[tp 110725]
color=11296515
selectable=0
date1=1685011218
value1=110730.000000
</object>

<object>
type=31
name=autotrade #258633809 buy 15 WINM23 at 111085, WINM23
hidden=1
color=11296515
selectable=0
date1=1685011556
value1=111085.000000
</object>

<object>
type=32
name=autotrade #258633836 sell 15 WINM23 at 111150, profit 195.00, W
hidden=1
color=1918177
selectable=0
date1=1685011562
value1=111150.000000
</object>

<object>
type=31
name=autotrade #258633894 buy 50 WINM23 at 111215, WINM23
hidden=1
color=11296515
selectable=0
date1=1685011585
value1=111215.000000
</object>

<object>
type=32
name=autotrade #258634604 sell 50 WINM23 at 110870, profit -2 760.00
hidden=1
color=1918177
selectable=0
date1=1685012349
value1=110870.000000
</object>

<object>
type=32
name=autotrade #258634624 sell 300 WINM23 at 110855, WINM23
hidden=1
color=1918177
selectable=0
date1=1685012363
value1=110855.000000
</object>

<object>
type=31
name=autotrade #258635359 buy 300 WINM23 at 110759.333, profit 800.0
hidden=1
color=11296515
selectable=0
date1=1685013056
value1=110759.333333
</object>

<object>
type=32
name=autotrade #258639770 sell 100 WINM23 at 110835, WINM23
hidden=1
color=1918177
selectable=0
date1=1685018060
value1=110835.000000
</object>

<object>
type=31
name=autotrade #258639905 buy 100 WINM23 at 110795, profit 320.00, W
hidden=1
color=11296515
selectable=0
date1=1685018206
value1=110795.000000
</object>

<object>
type=31
name=autotrade #258643795 buy 50 WINM23 at 111095, WINM23
hidden=1
color=11296515
selectable=0
date1=1685024671
value1=111095.000000
</object>

<object>
type=32
name=autotrade #258643804 sell 50 WINM23 at 111115, profit 160.00, W
hidden=1
color=1918177
selectable=0
date1=1685024680
value1=111115.000000
</object>

<object>
type=32
name=autotrade #258648522 sell 300 WINM23 at 110697.517, WINM23
hidden=1
color=1918177
selectable=0
date1=1685032436
value1=110697.516667
</object>

<object>
type=31
name=autotrade #258648598 buy 300 WINM23 at 110678.467, profit 180.1
hidden=1
color=11296515
selectable=0
date1=1685032448
value1=110678.466667
</object>

<object>
type=31
name=autotrade #258688160 buy 5 WINM23 at 111090, WINM23
hidden=1
color=11296515
selectable=0
date1=1685360239
value1=111090.000000
</object>

<object>
type=31
name=autotrade #258689265 buy 5 WINM23 at 111245, WINM23
hidden=1
color=11296515
selectable=0
date1=1685361629
value1=111245.000000
</object>

<object>
type=32
name=autotrade #258689637 sell 5 WINM23 at 111340, profit 172.50, WI
hidden=1
color=1918177
selectable=0
date1=1685361933
value1=111340.000000
</object>

<object>
type=31
name=autotrade #258690061 buy 5 WINM23 at 111275, WINM23
hidden=1
color=11296515
selectable=0
date1=1685362285
value1=111275.000000
</object>

<object>
type=32
name=autotrade #258690162 sell 5 WINM23 at 111390, profit 33.75, WIN
hidden=1
color=1918177
selectable=0
date1=1685362369
value1=111390.000000
</object>

<object>
type=31
name=autotrade #258690247 buy 15 WINM23 at 111300, WINM23
hidden=1
color=11296515
selectable=0
date1=1685362447
value1=111300.000000
</object>

<object>
type=32
name=autotrade #258690337 sell 15 WINM23 at 111325, profit 98.31, WI
hidden=1
color=1918177
selectable=0
date1=1685362660
value1=111325.000000
</object>

<object>
type=32
name=autotrade #258690390 sell 5 WINM23 at 111330, profit 49.69, WIN
hidden=1
color=1918177
selectable=0
date1=1685362765
value1=111330.000000
</object>

<object>
type=31
name=autotrade #258690601 buy 40 WINM23 at 111300, WINM23
hidden=1
color=11296515
selectable=0
date1=1685363219
value1=111300.000000
</object>

<object>
type=32
name=autotrade #258690615 sell 40 WINM23 at 111320, profit 44.00, WI
hidden=1
color=1918177
selectable=0
date1=1685363244
value1=111320.000000
</object>

<object>
type=32
name=autotrade #258690867 sell 200 WINM23 at 111040, WINM23
hidden=1
color=1918177
selectable=0
date1=1685363359
value1=111040.000000
</object>

<object>
type=31
name=autotrade #258690918 buy 200 WINM23 at 111022.15, profit 4.00, 
hidden=1
color=11296515
selectable=0
date1=1685363373
value1=111022.150000
</object>

<object>
type=32
name=autotrade #258693178 sell 200 WINM23 at 111066.475, WINM23
hidden=1
color=1918177
selectable=0
date1=1685367681
value1=111066.475000
</object>

<object>
type=31
name=autotrade #258693241 buy 200 WINM23 at 111053.95, profit 36.25,
hidden=1
color=11296515
selectable=0
date1=1685367738
value1=111053.950000
</object>

<object>
type=32
name=autotrade #258693585 sell 200 WINM23 at 110929.275, WINM23
hidden=1
color=1918177
selectable=0
date1=1685367976
value1=110929.275000
</object>

<object>
type=31
name=autotrade #258693701 buy 200 WINM23 at 110893.475, TP, profit 9
hidden=1
descr=[tp 110890]
color=11296515
selectable=0
date1=1685368046
value1=110893.475000
</object>

<object>
type=31
name=autotrade #258696506 buy 100 WINM23 at 110855, WINM23
hidden=1
color=11296515
selectable=0
date1=1685372401
value1=110855.000000
</object>

<object>
type=31
name=autotrade #258696575 buy 100 WINM23 at 110825, WINM23
hidden=1
color=11296515
selectable=0
date1=1685372598
value1=110825.000000
</object>

<object>
type=32
name=autotrade #258696771 sell 200 WINM23 at 110887.975, TP, profit 
hidden=1
descr=[tp 110900]
color=1918177
selectable=0
date1=1685373098
value1=110887.975000
</object>

<object>
type=31
name=autotrade #258696938 buy 300 WINM23 at 110958.867, WINM23
hidden=1
color=11296515
selectable=0
date1=1685373245
value1=110958.866667
</object>

<object>
type=32
name=autotrade #258697057 sell 300 WINM23 at 110982.633, profit 193.
hidden=1
color=1918177
selectable=0
date1=1685373265
value1=110982.633333
</object>

<object>
type=31
name=autotrade #258697297 buy 300 WINM23 at 110993.85, WINM23
hidden=1
color=11296515
selectable=0
date1=1685373477
value1=110993.850000
</object>

<object>
type=32
name=autotrade #258697346 sell 300 WINM23 at 111001.783, profit 15.6
hidden=1
color=1918177
selectable=0
date1=1685373485
value1=111001.783333
</object>

<object>
type=31
name=autotrade #258697902 buy 300 WINM23 at 111250, WINM23
hidden=1
color=11296515
selectable=0
date1=1685373822
value1=111250.000000
</object>

<object>
type=32
name=autotrade #258698010 sell 300 WINM23 at 111267.167, profit 185.
hidden=1
color=1918177
selectable=0
date1=1685373824
value1=111267.166667
</object>

<object>
type=31
name=autotrade #258698183 buy 300 WINM23 at 111349.383, WINM23
hidden=1
color=11296515
selectable=0
date1=1685373881
value1=111349.383333
</object>

<object>
type=32
name=autotrade #258698224 sell 300 WINM23 at 111359.2, profit 115.56
hidden=1
color=1918177
selectable=0
date1=1685373885
value1=111359.200000
</object>

<object>
type=31
name=autotrade #258698364 buy 400 WINM23 at 111223.988, WINM23
hidden=1
color=11296515
selectable=0
date1=1685373932
value1=111223.987500
</object>

<object>
type=32
name=autotrade #258699114 sell 400 WINM23 at 111260.85, TP, profit 3
hidden=1
descr=[tp 111275]
color=1918177
selectable=0
date1=1685375167
value1=111260.850000
</object>

<object>
type=31
name=autotrade #258699260 buy 100 WINM23 at 111237.45, WINM23
hidden=1
color=11296515
selectable=0
date1=1685375226
value1=111237.450000
</object>

<object>
type=32
name=autotrade #258699292 sell 100 WINM23 at 111248.3, profit 92.87,
hidden=1
color=1918177
selectable=0
date1=1685375253
value1=111248.300000
</object>

<object>
type=31
name=autotrade #258699339 buy 200 WINM23 at 111230.225, WINM23
hidden=1
color=11296515
selectable=0
date1=1685375316
value1=111230.225000
</object>

<object>
type=32
name=autotrade #258699402 sell 200 WINM23 at 111249.275, profit 183.
hidden=1
color=1918177
selectable=0
date1=1685375363
value1=111249.275000
</object>

<object>
type=31
name=autotrade #258702806 buy 30 WINM23 at 111400, WINM23
hidden=1
color=11296515
selectable=0
date1=1685437685
value1=111400.000000
</object>

<object>
type=32
name=autotrade #258702870 sell 30 WINM23 at 111315, SL, profit -17.0
hidden=1
descr=[sl 111315]
color=1918177
selectable=0
date1=1685437786
value1=111315.000000
</object>

<object>
type=32
name=autotrade #258703022 sell 50 WINM23 at 111460, WINM23
hidden=1
color=1918177
selectable=0
date1=1685437868
value1=111460.000000
</object>

<object>
type=31
name=autotrade #258703046 buy 50 WINM23 at 111415, profit 369.00, WI
hidden=1
color=11296515
selectable=0
date1=1685437902
value1=111415.000000
</object>

<object>
type=32
name=autotrade #258703347 sell 30 WINM23 at 111340, WINM23
hidden=1
color=1918177
selectable=0
date1=1685438271
value1=111340.000000
</object>

<object>
type=31
name=autotrade #258703352 buy 30 WINM23 at 111315, profit 150.00, WI
hidden=1
color=11296515
selectable=0
date1=1685438277
value1=111315.000000
</object>

<object>
type=32
name=autotrade #258706401 sell 100 WINM23 at 111609.45, WINM23
hidden=1
color=1918177
selectable=0
date1=1685441198
value1=111609.450000
</object>

<object>
type=32
name=autotrade #258706608 sell 50 WINM23 at 111715, WINM23
hidden=1
color=1918177
selectable=0
date1=1685441344
value1=111715.000000
</object>

<object>
type=31
name=autotrade #258706821 buy 150 WINM23 at 111612.167, TP, profit 2
hidden=1
descr=[tp 111605]
color=11296515
selectable=0
date1=1685441529
value1=111612.166667
</object>

<object>
type=32
name=autotrade #258707048 sell 140 WINM23 at 111514.036, WINM23
hidden=1
color=1918177
selectable=0
date1=1685441584
value1=111514.035714
</object>

<object>
type=31
name=autotrade #258707083 buy 140 WINM23 at 111495.607, profit 156.0
hidden=1
color=11296515
selectable=0
date1=1685441590
value1=111495.607143
</object>

<object>
type=31
name=autotrade #258709835 buy 140 WINM23 at 110667.286, WINM23
hidden=1
color=11296515
selectable=0
date1=1685442771
value1=110667.285714
</object>

<object>
type=32
name=autotrade #258710002 sell 140 WINM23 at 110691.964, TP, profit 
hidden=1
descr=[tp 110705]
color=1918177
selectable=0
date1=1685442905
value1=110691.964286
</object>

<object>
type=31
name=autotrade #258710733 buy 100 WINM23 at 110410.55, WINM23
hidden=1
color=11296515
selectable=0
date1=1685443255
value1=110410.550000
</object>

<object>
type=32
name=autotrade #258710783 sell 100 WINM23 at 110425, profit 118.49, 
hidden=1
color=1918177
selectable=0
date1=1685443331
value1=110425.000000
</object>

<object>
type=31
name=autotrade #258710892 buy 100 WINM23 at 110525, WINM23
hidden=1
color=11296515
selectable=0
date1=1685443429
value1=110525.000000
</object>

<object>
type=31
name=autotrade #258710993 buy 100 WINM23 at 110395, WINM23
hidden=1
color=11296515
selectable=0
date1=1685443497
value1=110395.000000
</object>

<object>
type=32
name=autotrade #258711253 sell 200 WINM23 at 110480.1, profit 205.00
hidden=1
color=1918177
selectable=0
date1=1685443637
value1=110480.100000
</object>

<object>
type=31
name=autotrade #258714148 buy 100 WINM23 at 109860, WINM23
hidden=1
color=11296515
selectable=0
date1=1685446229
value1=109860.000000
</object>

<object>
type=32
name=autotrade #258714201 sell 100 WINM23 at 109887.05, TP, profit 2
hidden=1
descr=[tp 109895]
color=1918177
selectable=0
date1=1685446253
value1=109887.050000
</object>

<object>
type=31
name=autotrade #258714390 buy 100 WINM23 at 109925, WINM23
hidden=1
color=11296515
selectable=0
date1=1685446538
value1=109925.000000
</object>

<object>
type=32
name=autotrade #258714410 sell 100 WINM23 at 109945, profit 164.00, 
hidden=1
color=1918177
selectable=0
date1=1685446565
value1=109945.000000
</object>

<object>
type=31
name=autotrade #258714898 buy 300 WINM23 at 109711.017, WINM23
hidden=1
color=11296515
selectable=0
date1=1685447168
value1=109711.016667
</object>

<object>
type=32
name=autotrade #258714968 sell 300 WINM23 at 109731.017, profit 196.
hidden=1
color=1918177
selectable=0
date1=1685447174
value1=109731.016667
</object>

<object>
type=31
name=autotrade #258715603 buy 300 WINM23 at 109608.517, WINM23
hidden=1
color=11296515
selectable=0
date1=1685447752
value1=109608.516667
</object>

<object>
type=32
name=autotrade #258716138 sell 300 WINM23 at 109621.667, profit 3.30
hidden=1
color=1918177
selectable=0
date1=1685448531
value1=109621.666667
</object>

<object>
type=31
name=autotrade #258716669 buy 200 WINM23 at 109337.775, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449011
value1=109337.775000
</object>

<object>
type=32
name=autotrade #258716720 sell 200 WINM23 at 109355, profit 13.78, W
hidden=1
color=1918177
selectable=0
date1=1685449020
value1=109355.000000
</object>

<object>
type=31
name=autotrade #258716839 buy 300 WINM23 at 109256.75, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449085
value1=109256.750000
</object>

<object>
type=32
name=autotrade #258716902 sell 300 WINM23 at 109271.7, profit 3.65, 
hidden=1
color=1918177
selectable=0
date1=1685449095
value1=109271.700000
</object>

<object>
type=31
name=autotrade #258717020 buy 300 WINM23 at 109316.05, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449207
value1=109316.050000
</object>

<object>
type=32
name=autotrade #258717119 sell 300 WINM23 at 109335, profit 7.58, WI
hidden=1
color=1918177
selectable=0
date1=1685449218
value1=109335.000000
</object>

<object>
type=31
name=autotrade #258717184 buy 300 WINM23 at 109354.133, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449242
value1=109354.133333
</object>

<object>
type=31
name=autotrade #258717288 buy 100 WINM23 at 109275, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449311
value1=109275.000000
</object>

<object>
type=32
name=autotrade #258717601 sell 400 WINM23 at 109341.825, profit 12.7
hidden=1
color=1918177
selectable=0
date1=1685449656
value1=109341.825000
</object>

<object>
type=31
name=autotrade #258717752 buy 400 WINM23 at 109455.838, WINM23
hidden=1
color=11296515
selectable=0
date1=1685449690
value1=109455.837500
</object>

<object>
type=32
name=autotrade #258717952 sell 400 WINM23 at 109501.1, profit 403.13
hidden=1
color=1918177
selectable=0
date1=1685449836
value1=109501.100000
</object>

<object>
type=31
name=autotrade #258718442 buy 400 WINM23 at 109385.625, WINM23
hidden=1
color=11296515
selectable=0
date1=1685450528
value1=109385.625000
</object>

<object>
type=32
name=autotrade #258718539 sell 400 WINM23 at 109401.9, profit 158.88
hidden=1
color=1918177
selectable=0
date1=1685450552
value1=109401.900000
</object>

<object>
type=31
name=autotrade #258718642 buy 400 WINM23 at 109420.025, WINM23
hidden=1
color=11296515
selectable=0
date1=1685450594
value1=109420.025000
</object>

<object>
type=32
name=autotrade #258722344 sell 400 WINM23 at 109453.15, profit 153.8
hidden=1
color=1918177
selectable=0
date1=1685457390
value1=109453.150000
</object>

<object>
type=31
name=autotrade #258744784 buy 100 WINM23 at 108835, WINM23
hidden=1
color=11296515
selectable=0
date1=1685539447
value1=108835.000000
</object>

<object>
type=32
name=autotrade #258744844 sell 100 WINM23 at 108845, profit 4.00, WI
hidden=1
color=1918177
selectable=0
date1=1685539509
value1=108845.000000
</object>

<object>
type=31
name=autotrade #258744978 buy 100 WINM23 at 108905, WINM23
hidden=1
color=11296515
selectable=0
date1=1685539715
value1=108905.000000
</object>

<object>
type=32
name=autotrade #258745013 sell 100 WINM23 at 108925, TP, profit 148.
hidden=1
descr=[tp 108930]
color=1918177
selectable=0
date1=1685539759
value1=108925.000000
</object>

<object>
type=31
name=autotrade #258745124 buy 200 WINM23 at 108975, WINM23
hidden=1
color=11296515
selectable=0
date1=1685539871
value1=108975.000000
</object>

<object>
type=31
name=autotrade #258745223 buy 100 WINM23 at 108920, WINM23
hidden=1
color=11296515
selectable=0
date1=1685539941
value1=108920.000000
</object>

<object>
type=32
name=autotrade #258745287 sell 300 WINM23 at 108973.8, profit 198.00
hidden=1
color=1918177
selectable=0
date1=1685540058
value1=108973.800000
</object>

<object>
type=32
name=autotrade #258748567 sell 300 WINM23 at 109346.833, WINM23
hidden=1
color=1918177
selectable=0
date1=1685544278
value1=109346.833333
</object>

<object>
type=31
name=autotrade #258748667 buy 300 WINM23 at 109317.283, profit 76.40
hidden=1
color=11296515
selectable=0
date1=1685544355
value1=109317.283333
</object>

<object>
type=31
name=autotrade #258751559 buy 300 WINM23 at 109176.633, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549250
value1=109176.633333
</object>

<object>
type=32
name=autotrade #258751612 sell 300 WINM23 at 109190, profit 144.36, 
hidden=1
color=1918177
selectable=0
date1=1685549257
value1=109190.000000
</object>

<object>
type=31
name=autotrade #258751648 buy 300 WINM23 at 109180, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549291
value1=109180.000000
</object>

<object>
type=32
name=autotrade #258751700 sell 300 WINM23 at 109193.183, profit 162.
hidden=1
color=1918177
selectable=0
date1=1685549297
value1=109193.183333
</object>

<object>
type=31
name=autotrade #258751806 buy 300 WINM23 at 109230, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549394
value1=109230.000000
</object>

<object>
type=32
name=autotrade #258751887 sell 300 WINM23 at 109234.833, profit 2.00
hidden=1
color=1918177
selectable=0
date1=1685549425
value1=109234.833333
</object>

<object>
type=31
name=autotrade #258751960 buy 300 WINM23 at 109262.217, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549537
value1=109262.216667
</object>

<object>
type=32
name=autotrade #258752007 sell 300 WINM23 at 109267.85, profit 24.91
hidden=1
color=1918177
selectable=0
date1=1685549558
value1=109267.850000
</object>

<object>
type=31
name=autotrade #258752064 buy 300 WINM23 at 109292.467, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549567
value1=109292.466667
</object>

<object>
type=32
name=autotrade #258752126 sell 300 WINM23 at 109297.767, profit 81.3
hidden=1
color=1918177
selectable=0
date1=1685549586
value1=109297.766667
</object>

<object>
type=31
name=autotrade #258752223 buy 200 WINM23 at 109250, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549762
value1=109250.000000
</object>

<object>
type=31
name=autotrade #258752335 buy 100 WINM23 at 109125, WINM23
hidden=1
color=11296515
selectable=0
date1=1685549914
value1=109125.000000
</object>

<object>
type=32
name=autotrade #258752706 sell 300 WINM23 at 109218.133, profit 9.33
hidden=1
color=1918177
selectable=0
date1=1685550686
value1=109218.133333
</object>

<object>
type=31
name=autotrade #258753010 buy 100 WINM23 at 109280, WINM23
hidden=1
color=11296515
selectable=0
date1=1685550845
value1=109280.000000
</object>

<object>
type=32
name=autotrade #258753024 sell 100 WINM23 at 109290, TP, profit 108.
hidden=1
descr=[tp 109300]
color=1918177
selectable=0
date1=1685550874
value1=109290.000000
</object>

<object>
type=31
name=autotrade #258764819 buy 100 WINM23 at 109141.15, WINM23
hidden=1
color=11296515
selectable=0
date1=1685617345
value1=109141.150000
</object>

<object>
type=32
name=autotrade #258764855 sell 100 WINM23 at 109180.55, profit 96.47
hidden=1
color=1918177
selectable=0
date1=1685617358
value1=109180.550000
</object>

<object>
type=31
name=autotrade #258765727 buy 100 WINM23 at 108975.25, WINM23
hidden=1
color=11296515
selectable=0
date1=1685617701
value1=108975.250000
</object>

<object>
type=32
name=autotrade #258765765 sell 100 WINM23 at 108995, profit 43.45, W
hidden=1
color=1918177
selectable=0
date1=1685617764
value1=108995.000000
</object>

<object>
type=31
name=autotrade #258766007 buy 100 WINM23 at 109100.05, WINM23
hidden=1
color=11296515
selectable=0
date1=1685618088
value1=109100.050000
</object>

<object>
type=32
name=autotrade #258766070 sell 100 WINM23 at 109113.95, TP, profit 3
hidden=1
descr=[tp 109125]
color=1918177
selectable=0
date1=1685618136
value1=109113.950000
</object>

<object>
type=31
name=autotrade #258766304 buy 150 WINM23 at 109137.933, WINM23
hidden=1
color=11296515
selectable=0
date1=1685618504
value1=109137.933333
</object>

<object>
type=32
name=autotrade #258766334 sell 150 WINM23 at 109144.433, profit 15.5
hidden=1
color=1918177
selectable=0
date1=1685618512
value1=109144.433333
</object>

<object>
type=31
name=autotrade #258766406 buy 200 WINM23 at 109237.6, WINM23
hidden=1
color=11296515
selectable=0
date1=1685618557
value1=109237.600000
</object>

<object>
type=32
name=autotrade #258766444 sell 200 WINM23 at 109270, profit 71.28, W
hidden=1
color=1918177
selectable=0
date1=1685618561
value1=109270.000000
</object>

<object>
type=31
name=autotrade #258766920 buy 200 WINM23 at 109119.025, WINM23
hidden=1
color=11296515
selectable=0
date1=1685619058
value1=109119.025000
</object>

<object>
type=32
name=autotrade #258766985 sell 200 WINM23 at 109125, profit 13.15, W
hidden=1
color=1918177
selectable=0
date1=1685619127
value1=109125.000000
</object>

<object>
type=31
name=autotrade #258767053 buy 200 WINM23 at 109200, WINM23
hidden=1
color=11296515
selectable=0
date1=1685619166
value1=109200.000000
</object>

<object>
type=32
name=autotrade #258767097 sell 200 WINM23 at 109211.125, profit 6.00
hidden=1
color=1918177
selectable=0
date1=1685619194
value1=109211.125000
</object>

<object>
type=32
name=autotrade #258767221 sell 200 WINM23 at 109137.775, WINM23
hidden=1
color=1918177
selectable=0
date1=1685619327
value1=109137.775000
</object>

<object>
type=31
name=autotrade #258768830 buy 200 WINM23 at 109820.25, profit -1 500
hidden=1
color=11296515
selectable=0
date1=1685620796
value1=109820.250000
</object>

<object>
type=31
name=autotrade #258768986 buy 50 WINM23 at 109845, WINM23
hidden=1
color=11296515
selectable=0
date1=1685620864
value1=109845.000000
</object>

<object>
type=32
name=autotrade #258770761 sell 50 WINM23 at 110240, profit 869.00, W
hidden=1
color=1918177
selectable=0
date1=1685622095
value1=110240.000000
</object>

<object>
type=32
name=autotrade #258772225 sell 150 WINM23 at 110563.033, WINM23
hidden=1
color=1918177
selectable=0
date1=1685622926
value1=110563.033333
</object>

<object>
type=31
name=autotrade #258772287 buy 150 WINM23 at 110525, profit 83.67, WI
hidden=1
color=11296515
selectable=0
date1=1685622933
value1=110525.000000
</object>

<object>
type=32
name=autotrade #258772462 sell 200 WINM23 at 110458.725, WINM23
hidden=1
color=1918177
selectable=0
date1=1685623153
value1=110458.725000
</object>

<object>
type=32
name=autotrade #258776560 sell 10 WINM23 at 110895, WINM23
hidden=1
color=1918177
selectable=0
date1=1685629570
value1=110895.000000
</object>

<object>
type=31
name=autotrade #258776751 buy 10 WINM23 at 110825, profit 140.00, WI
hidden=1
color=11296515
selectable=0
date1=1685630061
value1=110825.000000
</object>

<object>
type=32
name=autotrade #258776916 sell 20 WINM23 at 110695, WINM23
hidden=1
color=1918177
selectable=0
date1=1685630254
value1=110695.000000
</object>

<object>
type=32
name=autotrade #258778078 sell 20 WINM23 at 110817.5, WINM23
hidden=1
color=1918177
selectable=0
date1=1685632767
value1=110817.500000
</object>

<object>
type=32
name=autotrade #258778113 sell 10 WINM23 at 110885, WINM23
hidden=1
color=1918177
selectable=0
date1=1685632864
value1=110885.000000
</object>

<object>
type=31
name=autotrade #258778256 buy 50 WINM23 at 110985, SL, profit -446.6
hidden=1
descr=[sl 110955]
color=11296515
selectable=0
date1=1685633248
value1=110985.000000
</object>

<object>
type=32
name=autotrade #258779454 sell 20 WINM23 at 110890, WINM23
hidden=1
color=1918177
selectable=0
date1=1685635298
value1=110890.000000
</object>

<object>
type=31
name=autotrade #258779474 buy 20 WINM23 at 110885, profit 11.00, WIN
hidden=1
color=11296515
selectable=0
date1=1685635367
value1=110885.000000
</object>

<object>
type=32
name=autotrade #258792197 sell 20 WINM23 at 112920, WINM23
hidden=1
color=1918177
selectable=0
date1=1685706091
value1=112920.000000
</object>

<object>
type=31
name=autotrade #258793991 buy 20 WINM23 at 113325, SL, profit -1 620
hidden=1
descr=[sl 113325]
color=11296515
selectable=0
date1=1685710560
value1=113325.000000
</object>

<object>
type=32
name=autotrade #258794273 sell 15 WINM23 at 113285, WINM23
hidden=1
color=1918177
selectable=0
date1=1685710918
value1=113285.000000
</object>

<object>
type=31
name=autotrade #258794424 buy 15 WINM23 at 113220, profit 195.00, WI
hidden=1
color=11296515
selectable=0
date1=1685711436
value1=113220.000000
</object>

<object>
type=32
name=autotrade #258794724 sell 15 WINM23 at 112995, WINM23
hidden=1
color=1918177
selectable=0
date1=1685711804
value1=112995.000000
</object>

<object>
type=31
name=autotrade #258795015 buy 15 WINM23 at 112995, profit 0.00, WINM
hidden=1
color=11296515
selectable=0
date1=1685712324
value1=112995.000000
</object>

<object>
type=32
name=autotrade #258795457 sell 15 WINM23 at 112860, WINM23
hidden=1
color=1918177
selectable=0
date1=1685713056
value1=112860.000000
</object>

<object>
type=31
name=autotrade #258795480 buy 15 WINM23 at 112845, profit 45.00, WIN
hidden=1
color=11296515
selectable=0
date1=1685713089
value1=112845.000000
</object>

<object>
type=32
name=autotrade #258796514 sell 15 WINM23 at 112710, WINM23
hidden=1
color=1918177
selectable=0
date1=1685715335
value1=112710.000000
</object>

<object>
type=31
name=autotrade #258796563 buy 15 WINM23 at 112660, profit 150.00, WI
hidden=1
color=11296515
selectable=0
date1=1685715401
value1=112660.000000
</object>

<object>
type=32
name=autotrade #258796990 sell 20 WINM23 at 112700, WINM23
hidden=1
color=1918177
selectable=0
date1=1685716499
value1=112700.000000
</object>

<object>
type=31
name=autotrade #258797045 buy 20 WINM23 at 112680, profit 80.00, WIN
hidden=1
color=11296515
selectable=0
date1=1685716603
value1=112680.000000
</object>

<object>
type=31
name=autotrade #258797160 buy 20 WINM23 at 112635, WINM23
hidden=1
color=11296515
selectable=0
date1=1685716908
value1=112635.000000
</object>

<object>
type=32
name=autotrade #258797350 sell 20 WINM23 at 112665, profit 120.00, W
hidden=1
color=1918177
selectable=0
date1=1685717319
value1=112665.000000
</object>

<object>
type=31
name=autotrade #258797373 buy 20 WINM23 at 112725, WINM23
hidden=1
color=11296515
selectable=0
date1=1685717367
value1=112725.000000
</object>

<object>
type=32
name=autotrade #258797429 sell 20 WINM23 at 112745, TP, profit 80.00
hidden=1
descr=[tp 112760]
color=1918177
selectable=0
date1=1685717464
value1=112745.000000
</object>

<object>
type=32
name=autotrade #258797591 sell 20 WINM23 at 112615, WINM23
hidden=1
color=1918177
selectable=0
date1=1685718211
value1=112615.000000
</object>

<object>
type=31
name=autotrade #258797601 buy 20 WINM23 at 112585, profit 120.00, WI
hidden=1
color=11296515
selectable=0
date1=1685718219
value1=112585.000000
</object>

<object>
type=32
name=autotrade #258797671 sell 20 WINM23 at 112565, WINM23
hidden=1
color=1918177
selectable=0
date1=1685718303
value1=112565.000000
</object>

<object>
type=31
name=autotrade #258797750 buy 20 WINM23 at 112540, profit 100.00, WI
hidden=1
color=11296515
selectable=0
date1=1685718472
value1=112540.000000
</object>

<object>
type=32
name=autotrade #258799436 sell 20 WINM23 at 113040, WINM23
hidden=1
color=1918177
selectable=0
date1=1685721188
value1=113040.000000
</object>

<object>
type=31
name=autotrade #258799887 buy 20 WINM23 at 113000, profit 160.00, WI
hidden=1
color=11296515
selectable=0
date1=1685722160
value1=113000.000000
</object>

<object>
type=31
name=autotrade #258801213 buy 20 WINM23 at 113250, WINM23
hidden=1
color=11296515
selectable=0
date1=1685725136
value1=113250.000000
</object>

<object>
type=32
name=autotrade #258801339 sell 20 WINM23 at 113020, profit -920.00, 
hidden=1
color=1918177
selectable=0
date1=1685725337
value1=113020.000000
</object>

<object>
type=31
name=autotrade #258801410 buy 15 WINM23 at 113080, WINM23
hidden=1
color=11296515
selectable=0
date1=1685725759
value1=113080.000000
</object>

<object>
type=32
name=autotrade #258801519 sell 15 WINM23 at 113190, profit 330.00, W
hidden=1
color=1918177
selectable=0
date1=1685726105
value1=113190.000000
</object>

<object>
type=32
name=autotrade #258801536 sell 20 WINM23 at 113145, WINM23
hidden=1
color=1918177
selectable=0
date1=1685726169
value1=113145.000000
</object>

<object>
type=31
name=autotrade #258801563 buy 20 WINM23 at 113105, profit 160.00, WI
hidden=1
color=11296515
selectable=0
date1=1685726198
value1=113105.000000
</object>

<object>
type=32
name=autotrade #258805276 sell 75 WINM23 at 113210, WINM23
hidden=1
color=1918177
selectable=0
date1=1685959388
value1=113210.000000
</object>

<object>
type=31
name=autotrade #258805315 buy 75 WINM23 at 113140, profit 574.00, WI
hidden=1
color=11296515
selectable=0
date1=1685959414
value1=113140.000000
</object>

<object>
type=32
name=autotrade #258805998 sell 100 WINM23 at 113287.05, WINM23
hidden=1
color=1918177
selectable=0
date1=1685959828
value1=113287.050000
</object>

<object>
type=31
name=autotrade #258806028 buy 100 WINM23 at 113265, profit 180.81, W
hidden=1
color=11296515
selectable=0
date1=1685959847
value1=113265.000000
</object>

<object>
type=32
name=autotrade #258806120 sell 100 WINM23 at 113192.05, WINM23
hidden=1
color=1918177
selectable=0
date1=1685959928
value1=113192.050000
</object>

<object>
type=31
name=autotrade #258806140 buy 100 WINM23 at 113135, profit 467.81, W
hidden=1
color=11296515
selectable=0
date1=1685959941
value1=113135.000000
</object>

<object>
type=32
name=autotrade #258806410 sell 200 WINM23 at 113037.5, WINM23
hidden=1
color=1918177
selectable=0
date1=1685960262
value1=113037.500000
</object>

<object>
type=31
name=autotrade #258807057 buy 100 WINM23 at 112975, profit 337.50, W
hidden=1
color=11296515
selectable=0
date1=1685961115
value1=112975.000000
</object>

<object>
type=31
name=autotrade #258807234 buy 50 WINM23 at 113000, profit 7.50, WINM
hidden=1
color=11296515
selectable=0
date1=1685961198
value1=113000.000000
</object>

<object>
type=31
name=autotrade #258807294 buy 50 WINM23 at 113015, profit 184.50, WI
hidden=1
color=11296515
selectable=0
date1=1685961264
value1=113015.000000
</object>

<object>
type=32
name=autotrade #258807605 sell 200 WINM23 at 113057.45, WINM23
hidden=1
color=1918177
selectable=0
date1=1685961511
value1=113057.450000
</object>

<object>
type=31
name=autotrade #258807797 buy 100 WINM23 at 113000, profit 471.09, W
hidden=1
color=11296515
selectable=0
date1=1685961728
value1=113000.000000
</object>

<object>
type=32
name=autotrade #258807918 sell 100 WINM23 at 113003.6, WINM23
hidden=1
color=1918177
selectable=0
date1=1685961920
value1=113003.600000
</object>

<object>
type=32
name=autotrade #258808073 sell 100 WINM23 at 113020, WINM23
hidden=1
color=1918177
selectable=0
date1=1685962093
value1=113020.000000
</object>

<object>
type=32
name=autotrade #258808135 sell 100 WINM23 at 113150, WINM23
hidden=1
color=1918177
selectable=0
date1=1685962180
value1=113150.000000
</object>

<object>
type=31
name=autotrade #258808439 buy 400 WINM23 at 112921.063, profit 1 170
hidden=1
color=11296515
selectable=0
date1=1685962465
value1=112921.062500
</object>

<object>
type=32
name=autotrade #258808607 sell 200 WINM23 at 112898.525, WINM23
hidden=1
color=1918177
selectable=0
date1=1685962527
value1=112898.525000
</object>

<object>
type=32
name=autotrade #258808718 sell 100 WINM23 at 112975, WINM23
hidden=1
color=1918177
selectable=0
date1=1685962615
value1=112975.000000
</object>

<object>
type=31
name=autotrade #258808816 buy 300 WINM23 at 112888.1, profit 319.94,
hidden=1
color=11296515
selectable=0
date1=1685962772
value1=112888.100000
</object>

<object>
type=32
name=autotrade #258809307 sell 500 WINM23 at 112947.82, WINM23
hidden=1
color=1918177
selectable=0
date1=1685962898
value1=112947.820000
</object>

<object>
type=31
name=autotrade #258809454 buy 500 WINM23 at 112933.9, profit 146.12,
hidden=1
color=11296515
selectable=0
date1=1685962905
value1=112933.900000
</object>

<object>
type=32
name=autotrade #258809708 sell 500 WINM23 at 112744.53, WINM23
hidden=1
color=1918177
selectable=0
date1=1685963079
value1=112744.530000
</object>

<object>
type=31
name=autotrade #258810243 buy 500 WINM23 at 112719.84, profit 242.15
hidden=1
color=11296515
selectable=0
date1=1685963426
value1=112719.840000
</object>

<object>
type=32
name=autotrade #258810609 sell 500 WINM23 at 112570.49, WINM23
hidden=1
color=1918177
selectable=0
date1=1685963593
value1=112570.490000
</object>

<object>
type=31
name=autotrade #258810740 buy 500 WINM23 at 112539.34, profit 205.84
hidden=1
color=11296515
selectable=0
date1=1685963636
value1=112539.340000
</object>

<object>
type=32
name=autotrade #258810964 sell 500 WINM23 at 112417.46, WINM23
hidden=1
color=1918177
selectable=0
date1=1685963663
value1=112417.460000
</object>

<object>
type=31
name=autotrade #258811088 buy 500 WINM23 at 112387.06, profit 307.17
hidden=1
color=11296515
selectable=0
date1=1685963671
value1=112387.060000
</object>

<object>
type=32
name=autotrade #258819698 sell 500 WINM23 at 112696.77, WINM23
hidden=1
color=1918177
selectable=0
date1=1685978821
value1=112696.770000
</object>

<object>
type=32
name=autotrade #258819887 sell 100 WINM23 at 112770, WINM23
hidden=1
color=1918177
selectable=0
date1=1685979045
value1=112770.000000
</object>

<object>
type=32
name=autotrade #258820068 sell 100 WINM23 at 112735, WINM23
hidden=1
color=1918177
selectable=0
date1=1685979400
value1=112735.000000
</object>

<object>
type=31
name=autotrade #258821617 buy 100 WINM23 at 113140, WINM23
hidden=1
color=11296515
selectable=0
date1=1685982594
value1=113140.000000
</object>

<object>
type=32
name=autotrade #258821798 sell 100 WINM23 at 113299.85, profit 1 312
hidden=1
color=1918177
selectable=0
date1=1685982636
value1=113299.850000
</object>

<object>
type=32
name=autotrade #258821828 sell 200 WINM23 at 113255, WINM23
hidden=1
color=1918177
selectable=0
date1=1685982670
value1=113255.000000
</object>

<object>
type=32
name=autotrade #258821969 sell 100 WINM23 at 113134.95, WINM23
hidden=1
color=1918177
selectable=0
date1=1685982808
value1=113134.950000
</object>

<object>
type=31
name=autotrade #258822782 buy 300 WINM23 at 113154.067, profit 532.8
hidden=1
color=11296515
selectable=0
date1=1685984849
value1=113154.066667
</object>

<object>
type=32
name=autotrade #258822858 sell 60 WINM23 at 113130, WINM23
hidden=1
descr=SHORT
color=1918177
selectable=0
date1=1685984951
value1=113130.000000
</object>

<object>
type=31
name=autotrade #258822886 buy 60 WINM23 at 113120, profit 82.00, WIN
hidden=1
color=11296515
selectable=0
date1=1685985071
value1=113120.000000
</object>

<object>
type=31
name=autotrade #258822930 buy 60 WINM23 at 113190, WINM23
hidden=1
descr=LONG
color=11296515
selectable=0
date1=1685985217
value1=113190.000000
</object>

<object>
type=32
name=autotrade #258822948 sell 60 WINM23 at 113205, profit 123.00, W
hidden=1
color=1918177
selectable=0
date1=1685985256
value1=113205.000000
</object>

<object>
type=32
name=autotrade #258823753 sell 100 WINM23 at 113165.75, WINM23
hidden=1
color=1918177
selectable=0
date1=1686042248
value1=113165.750000
</object>

<object>
type=32
name=autotrade #258828715 sell 10 WINM23 at 113610, WINM23
hidden=1
color=1918177
selectable=0
date1=1686046175
value1=113610.000000
</object>

<object>
type=32
name=autotrade #258829912 sell 5 WINM23 at 113395, WINM23
hidden=1
color=1918177
selectable=0
date1=1686046841
value1=113395.000000
</object>

<object>
type=31
name=autotrade #258833527 buy 15 WINM23 at 114020, SL, profit -1 445
hidden=1
descr=[sl 114025]
color=11296515
selectable=0
date1=1686049552
value1=114020.000000
</object>

<object>
type=32
name=autotrade #258839919 sell 15 WINM23 at 114800, WINM23
hidden=1
color=1918177
selectable=0
date1=1686057152
value1=114800.000000
</object>

<object>
type=31
name=autotrade #258840746 buy 15 WINM23 at 114650, profit 450.00, WI
hidden=1
color=11296515
selectable=0
date1=1686058047
value1=114650.000000
</object>

<object>
type=32
name=autotrade #258841127 sell 15 WINM23 at 114750, WINM23
hidden=1
color=1918177
selectable=0
date1=1686058988
value1=114750.000000
</object>

<object>
type=32
name=autotrade #258842087 sell 5 WINM23 at 114790, WINM23
hidden=1
color=1918177
selectable=0
date1=1686060330
value1=114790.000000
</object>

<object>
type=31
name=autotrade #258842599 buy 20 WINM23 at 115015, SL, profit -1 020
hidden=1
descr=[sl 115040]
color=11296515
selectable=0
date1=1686060727
value1=115015.000000
</object>

<object>
type=32
name=autotrade #258853248 sell 35 WINM23 at 115730, WINM23
hidden=1
descr=SHORT
color=1918177
selectable=0
date1=1686132922
value1=115730.000000
</object>

<object>
type=31
name=autotrade #258853845 buy 25 WINM23 at 115730, profit 0.00, WINM
hidden=1
color=11296515
selectable=0
date1=1686133376
value1=115730.000000
</object>

<object>
type=32
name=autotrade #258853972 sell 25 WINM23 at 115795, WINM23
hidden=1
color=1918177
selectable=0
date1=1686133538
value1=115795.000000
</object>

<object>
type=32
name=autotrade #258854336 sell 25 WINM23 at 115970, WINM23
hidden=1
color=1918177
selectable=0
date1=1686133827
value1=115970.000000
</object>

<object>
type=31
name=autotrade #258855748 buy 60 WINM23 at 115825, profit 237.42, WI
hidden=1
color=11296515
selectable=0
date1=1686134528
value1=115825.000000
</object>

<object>
type=31
name=autotrade #258856298 buy 5 WINM23 at 116140, WINM23
hidden=1
color=11296515
selectable=0
date1=1686135022
value1=116140.000000
</object>

<object>
type=32
name=autotrade #258856639 sell 5 WINM23 at 116250, profit 110.00, WI
hidden=1
color=1918177
selectable=0
date1=1686135077
value1=116250.000000
</object>

<object>
type=32
name=autotrade #258856971 sell 50 WINM23 at 116065, WINM23
hidden=1
color=1918177
selectable=0
date1=1686135213
value1=116065.000000
</object>

<object>
type=31
name=autotrade #258856979 buy 50 WINM23 at 116045, profit 148.00, WI
hidden=1
color=11296515
selectable=0
date1=1686135220
value1=116045.000000
</object>

<object>
type=32
name=autotrade #258858001 sell 50 WINM23 at 116045, WINM23
hidden=1
color=1918177
selectable=0
date1=1686136434
value1=116045.000000
</object>

<object>
type=32
name=autotrade #258858062 sell 50 WINM23 at 116095, WINM23
hidden=1
color=1918177
selectable=0
date1=1686136538
value1=116095.000000
</object>

<object>
type=31
name=autotrade #258858094 buy 100 WINM23 at 116035, profit 259.00, W
hidden=1
color=11296515
selectable=0
date1=1686136549
value1=116035.000000
</object>

<object>
type=32
name=autotrade #258858706 sell 50 WINM23 at 115880, WINM23
hidden=1
color=1918177
selectable=0
date1=1686137110
value1=115880.000000
</object>

<object>
type=31
name=autotrade #258858764 buy 50 WINM23 at 115830, TP, profit 370.00
hidden=1
descr=[tp 115815]
color=11296515
selectable=0
date1=1686137123
value1=115830.000000
</object>

<object>
type=32
name=autotrade #258858924 sell 25 WINM23 at 115765, WINM23
hidden=1
color=1918177
selectable=0
date1=1686137252
value1=115765.000000
</object>

<object>
type=31
name=autotrade #258858970 buy 25 WINM23 at 115750, profit 75.00, WIN
hidden=1
color=11296515
selectable=0
date1=1686137314
value1=115750.000000
</object>

<object>
type=32
name=autotrade #258859069 sell 60 WINM23 at 115800, WINM23
hidden=1
color=1918177
selectable=0
date1=1686137416
value1=115800.000000
</object>

<object>
type=31
name=autotrade #258859078 buy 60 WINM23 at 115771.917, profit 222.00
hidden=1
color=11296515
selectable=0
date1=1686137420
value1=115771.916667
</object>

<object>
type=32
name=autotrade #258859200 sell 100 WINM23 at 115705, WINM23
hidden=1
color=1918177
selectable=0
date1=1686137509
value1=115705.000000
</object>

<object>
type=31
name=autotrade #258859288 buy 100 WINM23 at 115682.6, profit 185.00,
hidden=1
color=11296515
selectable=0
date1=1686137571
value1=115682.600000
</object>

<object>
type=32
name=autotrade #258860662 sell 350 WINM23 at 115447.143, WINM23
hidden=1
color=1918177
selectable=0
date1=1686138334
value1=115447.142857
</object>

<object>
type=31
name=autotrade #258860786 buy 350 WINM23 at 115437.214, profit 89.86
hidden=1
color=11296515
selectable=0
date1=1686138513
value1=115437.214286
</object>

<object>
type=32
name=autotrade #258865116 sell 350 WINM23 at 115400, WINM23
hidden=1
color=1918177
selectable=0
date1=1686144762
value1=115400.000000
</object>

<object>
type=31
name=autotrade #258866153 buy 350 WINM23 at 115371.757, TP, profit 2
hidden=1
descr=[tp 115360]
color=11296515
selectable=0
date1=1686146127
value1=115371.757143
</object>

<object>
type=32
name=autotrade #258879259 sell 65 WINM23 at 116643.077, WINM23
hidden=1
descr=SHORT
color=1918177
selectable=0
date1=1686306449
value1=116643.076923
</object>

<object>
type=31
name=autotrade #258879345 buy 65 WINM23 at 116620, profit 161.54, WI
hidden=1
color=11296515
selectable=0
date1=1686306530
value1=116620.000000
</object>

<object>
type=32
name=autotrade #258880269 sell 50 WINM23 at 116755, WINM23
hidden=1
color=1918177
selectable=0
date1=1686307488
value1=116755.000000
</object>

<object>
type=31
name=autotrade #258880350 buy 50 WINM23 at 116745, profit 70.00, WIN
hidden=1
color=11296515
selectable=0
date1=1686307526
value1=116745.000000
</object>

<object>
type=32
name=autotrade #258880838 sell 17 WINM23 at 116770, WINM23
hidden=1
descr=SHORT
color=1918177
selectable=0
date1=1686308308
value1=116770.000000
</object>

<object>
type=32
name=autotrade #258880938 sell 20 WINM23 at 116875, WINM23
hidden=1
color=1918177
selectable=0
date1=1686308428
value1=116875.000000
</object>

<object>
type=32
name=autotrade #258881353 sell 10 WINM23 at 117120, WINM23
hidden=1
color=1918177
selectable=0
date1=1686308583
value1=117120.000000
</object>

<object>
type=32
name=autotrade #258881494 sell 10 WINM23 at 117075, WINM23
hidden=1
color=1918177
selectable=0
date1=1686308709
value1=117075.000000
</object>

<object>
type=32
name=autotrade #258881743 sell 3 WINM23 at 117245, WINM23
hidden=1
color=1918177
selectable=0
date1=1686308966
value1=117245.000000
</object>

<object>
type=32
name=autotrade #258881859 sell 10 WINM23 at 117140, WINM23
hidden=1
color=1918177
selectable=0
date1=1686309065
value1=117140.000000
</object>

<object>
type=32
name=autotrade #258882324 sell 3 WINM23 at 117300, WINM23
hidden=1
color=1918177
selectable=0
date1=1686309290
value1=117300.000000
</object>

<object>
type=32
name=autotrade #258883488 sell 3 WINM23 at 117465, WINM23
hidden=1
color=1918177
selectable=0
date1=1686309883
value1=117465.000000
</object>

<object>
type=32
name=autotrade #258883956 sell 3 WINM23 at 117720, WINM23
hidden=1
color=1918177
selectable=0
date1=1686310130
value1=117720.000000
</object>

<object>
type=32
name=autotrade #258885025 sell 20 WINM23 at 117450, WINM23
hidden=1
color=1918177
selectable=0
date1=1686311433
value1=117450.000000
</object>

<object>
type=32
name=autotrade #258885684 sell 100 WINM23 at 117400, WINM23
hidden=1
color=1918177
selectable=0
date1=1686312111
value1=117400.000000
</object>

<object>
type=32
name=autotrade #258889573 sell 5 WINM23 at 117375, WINM23
hidden=1
color=1918177
selectable=0
date1=1686321103
value1=117375.000000
</object>

<object>
type=32
name=autotrade #258889937 sell 50 WINM23 at 117340, WINM23
hidden=1
color=1918177
selectable=0
date1=1686322083
value1=117340.000000
</object>

<object>
type=32
name=autotrade #258890232 sell 50 WINM23 at 117325, WINM23
hidden=1
color=1918177
selectable=0
date1=1686322666
value1=117325.000000
</object>

<object>
type=31
name=autotrade #258891036 buy 304 WINM23 at 117236.628, profit 87.72
hidden=1
color=11296515
selectable=0
date1=1686324640
value1=117236.628289
</object>

<object>
type=32
name=autotrade #258896010 sell 5 WINM23 at 117760, WINM23
hidden=1
color=1918177
selectable=0
date1=1686562037
value1=117760.000000
</object>

<object>
type=32
name=autotrade #258896081 sell 5 WINM23 at 117855, WINM23
hidden=1
color=1918177
selectable=0
date1=1686562105
value1=117855.000000
</object>

<object>
type=31
name=autotrade #258896137 buy 5 WINM23 at 117805, profit 2.50, WINM2
hidden=1
color=11296515
selectable=0
date1=1686562152
value1=117805.000000
</object>

<object>
type=32
name=autotrade #258896230 sell 5 WINM23 at 117880, WINM23
hidden=1
color=1918177
selectable=0
date1=1686562229
value1=117880.000000
</object>

<object>
type=32
name=autotrade #258896504 sell 5 WINM23 at 117960, WINM23
hidden=1
color=1918177
selectable=0
date1=1686562459
value1=117960.000000
</object>

<object>
type=31
name=autotrade #258896884 buy 15 WINM23 at 117850, profit 97.50, WIN
hidden=1
color=11296515
selectable=0
date1=1686562934
value1=117850.000000
</object>

<object>
type=32
name=autotrade #258897412 sell 100 WINM23 at 117662.1, WINM23
hidden=1
color=1918177
selectable=0
date1=1686563400
value1=117662.100000
</object>

<object>
type=31
name=autotrade #258897489 buy 100 WINM23 at 117655, profit 45.44, WI
hidden=1
color=11296515
selectable=0
date1=1686563510
value1=117655.000000
</object>

<object>
type=31
name=autotrade #258898698 buy 30 WINM23 at 117435, WINM23
hidden=1
color=11296515
selectable=0
date1=1686564747
value1=117435.000000
</object>

<object>
type=32
name=autotrade #258898768 sell 30 WINM23 at 117440, profit 30.00, WI
hidden=1
color=1918177
selectable=0
date1=1686564830
value1=117440.000000
</object>

<object>
type=32
name=autotrade #258900737 sell 5 WINM23 at 117010, WINM23
hidden=1
color=1918177
selectable=0
date1=1686566216
value1=117010.000000
</object>

<object>
type=32
name=autotrade #258900943 sell 5 WINM23 at 116900, WINM23
hidden=1
color=1918177
selectable=0
date1=1686566299
value1=116900.000000
</object>

<object>
type=31
name=autotrade #258901040 buy 10 WINM23 at 116850, profit 210.00, WI
hidden=1
color=11296515
selectable=0
date1=1686566395
value1=116850.000000
</object>

<object>
type=32
name=autotrade #258901879 sell 50 WINM23 at 117055, WINM23
hidden=1
color=1918177
selectable=0
date1=1686567186
value1=117055.000000
</object>

<object>
type=32
name=autotrade #258902046 sell 50 WINM23 at 117210, WINM23
hidden=1
color=1918177
selectable=0
date1=1686567285
value1=117210.000000
</object>

<object>
type=31
name=autotrade #258902126 buy 100 WINM23 at 117085, profit 304.00, W
hidden=1
color=11296515
selectable=0
date1=1686567346
value1=117085.000000
</object>

<object>
type=32
name=autotrade #258902172 sell 300 WINM23 at 117021.933, WINM23
hidden=1
color=1918177
selectable=0
date1=1686567362
value1=117021.933333
</object>

<object>
type=31
name=autotrade #258902257 buy 300 WINM23 at 116998.9, TP, profit 172
hidden=1
descr=[tp 116980]
color=11296515
selectable=0
date1=1686567412
value1=116998.900000
</object>

<object>
type=32
name=autotrade #258902486 sell 300 WINM23 at 117177.983, WINM23
hidden=1
color=1918177
selectable=0
date1=1686567632
value1=117177.983333
</object>

<object>
type=31
name=autotrade #258902576 buy 300 WINM23 at 117152.15, profit 179.09
hidden=1
color=11296515
selectable=0
date1=1686567664
value1=117152.150000
</object>

<object>
type=32
name=autotrade #258902825 sell 300 WINM23 at 117106.75, WINM23
hidden=1
color=1918177
selectable=0
date1=1686567857
value1=117106.750000
</object>

<object>
type=31
name=autotrade #258902877 buy 300 WINM23 at 117098.233, profit 75.20
hidden=1
color=11296515
selectable=0
date1=1686567889
value1=117098.233333
</object>

<object>
type=32
name=autotrade #258903920 sell 300 WINM23 at 117195, WINM23
hidden=1
color=1918177
selectable=0
date1=1686569761
value1=117195.000000
</object>

<object>
type=31
name=autotrade #258903988 buy 300 WINM23 at 117182.267, TP, profit 9
hidden=1
descr=[tp 117175]
color=11296515
selectable=0
date1=1686569807
value1=117182.266667
</object>

<object>
type=32
name=autotrade #258905055 sell 300 WINM23 at 117506.983, WINM23
hidden=1
color=1918177
selectable=0
date1=1686570723
value1=117506.983333
</object>

<object>
type=31
name=autotrade #258905125 buy 300 WINM23 at 117492.117, profit 108.6
hidden=1
color=11296515
selectable=0
date1=1686570734
value1=117492.116667
</object>

<object>
type=32
name=autotrade #258905413 sell 300 WINM23 at 117564.217, WINM23
hidden=1
color=1918177
selectable=0
date1=1686571190
value1=117564.216667
</object>

<object>
type=31
name=autotrade #258905731 buy 300 WINM23 at 117532.717, TP, profit 2
hidden=1
descr=[tp 117520]
color=11296515
selectable=0
date1=1686571444
value1=117532.716667
</object>

<object>
type=32
name=autotrade #258906876 sell 300 WINM23 at 117807.017, WINM23
hidden=1
color=1918177
selectable=0
date1=1686572375
value1=117807.016667
</object>

<object>
type=31
name=autotrade #258906925 buy 300 WINM23 at 117755.033, TP, profit 3
hidden=1
descr=[tp 117750]
color=11296515
selectable=0
date1=1686572393
value1=117755.033333
</object>

<object>
type=32
name=autotrade #258907129 sell 300 WINM23 at 117692.317, WINM23
hidden=1
color=1918177
selectable=0
date1=1686572762
value1=117692.316667
</object>

<object>
type=32
name=autotrade #258907250 sell 100 WINM23 at 117790, WINM23
hidden=1
color=1918177
selectable=0
date1=1686572840
value1=117790.000000
</object>

<object>
type=31
name=autotrade #258907688 buy 400 WINM23 at 117671.188, TP, profit 2
hidden=1
descr=[tp 117660]
color=11296515
selectable=0
date1=1686573405
value1=117671.187500
</object>

<object>
type=32
name=autotrade #258919973 sell 30 WINM23 at 117980, WINM23
hidden=1
color=1918177
selectable=0
date1=1686650121
value1=117980.000000
</object>

<object>
type=31
name=autotrade #258920001 buy 30 WINM23 at 117955, profit 10.00, WIN
hidden=1
color=11296515
selectable=0
date1=1686650159
value1=117955.000000
</object>

<object>
type=32
name=autotrade #258921507 sell 150 WINM23 at 117880, WINM23
hidden=1
color=1918177
selectable=0
date1=1686650972
value1=117880.000000
</object>

<object>
type=31
name=autotrade #258921535 buy 150 WINM23 at 117850, TP, profit 216.0
hidden=1
descr=[tp 117845]
color=11296515
selectable=0
date1=1686650989
value1=117850.000000
</object>

<object>
type=32
name=autotrade #258921624 sell 10 WINM23 at 117920, WINM23
hidden=1
color=1918177
selectable=0
date1=1686651016
value1=117920.000000
</object>

<object>
type=31
name=autotrade #258921662 buy 2 WINM23 at 117870, profit 20.00, WINM
hidden=1
color=11296515
selectable=0
date1=1686651062
value1=117870.000000
</object>

<object>
type=31
name=autotrade #258921711 buy 8 WINM23 at 117840, profit 128.00, WIN
hidden=1
color=11296515
selectable=0
date1=1686651149
value1=117840.000000
</object>

<object>
type=32
name=autotrade #258922156 sell 80 WINM23 at 117775, WINM23
hidden=1
descr=SHORT
color=1918177
selectable=0
date1=1686651656
value1=117775.000000
</object>

<object>
type=31
name=autotrade #258922273 buy 80 WINM23 at 117750, profit 180.00, WI
hidden=1
color=11296515
selectable=0
date1=1686651729
value1=117750.000000
</object>

<object>
type=32
name=autotrade #258922826 sell 200 WINM23 at 117733.225, WINM23
hidden=1
color=1918177
selectable=0
date1=1686652222
value1=117733.225000
</object>

<object>
type=31
name=autotrade #258922884 buy 200 WINM23 at 117698.85, TP, profit 24
hidden=1
descr=[tp 117705]
color=11296515
selectable=0
date1=1686652251
value1=117698.850000
</object>

<object>
type=32
name=autotrade #258923433 sell 200 WINM23 at 117793.325, WINM23
hidden=1
color=1918177
selectable=0
date1=1686652655
value1=117793.325000
</object>

<object>
type=31
name=autotrade #258923468 buy 200 WINM23 at 117771.6, profit 167.94,
hidden=1
color=11296515
selectable=0
date1=1686652671
value1=117771.600000
</object>

<object>
type=32
name=autotrade #258923593 sell 300 WINM23 at 117666.517, WINM23
hidden=1
color=1918177
selectable=0
date1=1686652700
value1=117666.516667
</object>

<object>
type=31
name=autotrade #258923720 buy 300 WINM23 at 117630.5, profit 262.92,
hidden=1
color=11296515
selectable=0
date1=1686652708
value1=117630.500000
</object>

<object>
type=32
name=autotrade #258923864 sell 300 WINM23 at 117702.15, WINM23
hidden=1
color=1918177
selectable=0
date1=1686652778
value1=117702.150000
</object>

<object>
type=32
name=autotrade #258923997 sell 100 WINM23 at 117780, WINM23
hidden=1
color=1918177
selectable=0
date1=1686652848
value1=117780.000000
</object>

<object>
type=31
name=autotrade #258924685 buy 400 WINM23 at 117667.813, profit 56.61
hidden=1
color=11296515
selectable=0
date1=1686653284
value1=117667.812500
</object>

<object>
type=32
name=autotrade #258924807 sell 100 WINM23 at 117620, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653308
value1=117620.000000
</object>

<object>
type=32
name=autotrade #258924910 sell 50 WINM23 at 117700, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653377
value1=117700.000000
</object>

<object>
type=31
name=autotrade #258925001 buy 150 WINM23 at 117620, profit 192.00, W
hidden=1
color=11296515
selectable=0
date1=1686653466
value1=117620.000000
</object>

<object>
type=32
name=autotrade #258925263 sell 150 WINM23 at 117814.4, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653703
value1=117814.400000
</object>

<object>
type=31
name=autotrade #258925290 buy 150 WINM23 at 117812.267, profit 31.68
hidden=1
color=11296515
selectable=0
date1=1686653716
value1=117812.266667
</object>

<object>
type=32
name=autotrade #258925324 sell 150 WINM23 at 117805, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653731
value1=117805.000000
</object>

<object>
type=31
name=autotrade #258925351 buy 150 WINM23 at 117785, profit 144.00, W
hidden=1
color=11296515
selectable=0
date1=1686653749
value1=117785.000000
</object>

<object>
type=32
name=autotrade #258925383 sell 200 WINM23 at 117779.425, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653770
value1=117779.425000
</object>

<object>
type=31
name=autotrade #258925422 buy 200 WINM23 at 117765.625, TP, profit 1
hidden=1
descr=[tp 117760]
color=11296515
selectable=0
date1=1686653844
value1=117765.625000
</object>

<object>
type=32
name=autotrade #258925522 sell 200 WINM23 at 117655, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653901
value1=117655.000000
</object>

<object>
type=31
name=autotrade #258925564 buy 200 WINM23 at 117637.9, profit 144.00,
hidden=1
color=11296515
selectable=0
date1=1686653907
value1=117637.900000
</object>

<object>
type=32
name=autotrade #258925712 sell 300 WINM23 at 117540, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653934
value1=117540.000000
</object>

<object>
type=31
name=autotrade #258925826 buy 300 WINM23 at 117535, profit 36.00, WI
hidden=1
color=11296515
selectable=0
date1=1686653940
value1=117535.000000
</object>

<object>
type=32
name=autotrade #258925909 sell 300 WINM23 at 117502.833, WINM23
hidden=1
color=1918177
selectable=0
date1=1686653949
value1=117502.833333
</object>

<object>
type=31
name=autotrade #258926010 buy 300 WINM23 at 117460, TP, profit 299.8
hidden=1
descr=[tp 117445]
color=11296515
selectable=0
date1=1686653988
value1=117460.000000
</object>

<object>
type=31
name=autotrade #258938478 buy 300 WINM23 at 116737.05, WINM23
hidden=1
color=11296515
selectable=0
date1=1686672080
value1=116737.050000
</object>

<object>
type=31
name=autotrade #258938563 buy 100 WINM23 at 116700, WINM23
hidden=1
color=11296515
selectable=0
date1=1686672167
value1=116700.000000
</object>

<object>
type=31
name=autotrade #258938893 buy 100 WINM23 at 116650, WINM23
hidden=1
color=11296515
selectable=0
date1=1686672926
value1=116650.000000
</object>

<object>
type=32
name=autotrade #258939141 sell 500 WINM23 at 116719.7, profit 91.94,
hidden=1
color=1918177
selectable=0
date1=1686673476
value1=116719.700000
</object>

<object>
type=31
name=autotrade #258939262 buy 300 WINM23 at 116725.417, WINM23
hidden=1
color=11296515
selectable=0
date1=1686673519
value1=116725.416667
</object>

<object>
type=31
name=autotrade #258939333 buy 100 WINM23 at 116680, WINM23
hidden=1
color=11296515
selectable=0
date1=1686673643
value1=116680.000000
</object>

<object>
type=31
name=autotrade #258939398 buy 100 WINM23 at 116670, WINM23
hidden=1
color=11296515
selectable=0
date1=1686673755
value1=116670.000000
</object>

<object>
type=32
name=autotrade #258939446 sell 500 WINM23 at 116722.36, TP, profit 1
hidden=1
descr=[tp 116730]
color=1918177
selectable=0
date1=1686673836
value1=116722.360000
</object>

<object>
type=2
name=autotrade #257978060 -> #257978599, profit 25.00, WINM23
hidden=1
descr=108515 -> 108390
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1681812083
date2=1681812333
value1=108515.000000
value2=108390.000000
</object>

<object>
type=2
name=autotrade #257978599 -> #257979327, profit 111.00, WINM23
hidden=1
descr=108390 -> 107960
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1681812333
date2=1681812586
value1=108390.000000
value2=107960.000000
</object>

<object>
type=2
name=autotrade #257988040 -> #257988629, TP, profit 132.00, WINM23
hidden=1
descr=108110 -> 108330
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681818588
date2=1681819047
value1=108110.000000
value2=108330.000000
</object>

<object>
type=2
name=autotrade #257998879 -> #257999027, WINM23
hidden=1
descr=108315 -> 108260
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681834133
date2=1681834300
value1=108315.000000
value2=108260.000000
</object>

<object>
type=2
name=autotrade #257999027 -> #257999988, WINM23
hidden=1
descr=108260 -> 107985
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681834300
date2=1681835888
value1=108260.000000
value2=107985.000000
</object>

<object>
type=2
name=autotrade #257999988 -> #258001082, WINM23
hidden=1
descr=107985 -> 108095
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681835888
date2=1681838741
value1=107985.000000
value2=108095.000000
</object>

<object>
type=2
name=autotrade #258001082 -> #258001194, profit -177.00, WINM23
hidden=1
descr=108095 -> 108100
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681838741
date2=1681839139
value1=108095.000000
value2=108100.000000
</object>

<object>
type=2
name=autotrade #258036465 -> #258036652, profit 24.00, WINM23
hidden=1
descr=105690 -> 105570
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1681985121
date2=1681985199
value1=105690.000000
value2=105570.000000
</object>

<object>
type=2
name=autotrade #258036652 -> #258037452, profit 120.00, WINM23
hidden=1
descr=105570 -> 105090
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1681985199
date2=1681985524
value1=105570.000000
value2=105090.000000
</object>

<object>
type=2
name=autotrade #258041821 -> #258042354, SL, profit -180.00, WINM23
hidden=1
descr=105455 -> 105905
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1681988404
date2=1681988710
value1=105455.000000
value2=105905.000000
</object>

<object>
type=2
name=autotrade #258042394 -> #258042544, profit 22.00, WINM23
hidden=1
descr=105870 -> 105980
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681988730
date2=1681988803
value1=105870.000000
value2=105980.000000
</object>

<object>
type=2
name=autotrade #258043196 -> #258043502, TP, profit 140.00, WINM23
hidden=1
descr=106220 -> 106290
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681989106
date2=1681989249
value1=106220.000000
value2=106290.000000
</object>

<object>
type=2
name=autotrade #258044713 -> #258044774, TP, profit 90.00, WINM23
hidden=1
descr=105945 -> 105990
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681990368
date2=1681990423
value1=105945.000000
value2=105990.000000
</object>

<object>
type=2
name=autotrade #258047810 -> #258047823, profit 25.00, WINM23
hidden=1
descr=106035 -> 106060
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1681993601
date2=1681993637
value1=106035.000000
value2=106060.000000
</object>

<object>
type=2
name=autotrade #258065621 -> #258065811, WINM23
hidden=1
descr=105530 -> 105630
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682333623
date2=1682333753
value1=105530.000000
value2=105630.000000
</object>

<object>
type=2
name=autotrade #258065811 -> #258065847, TP, profit 210.00, WINM23
hidden=1
descr=105630 -> 105685
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682333753
date2=1682333794
value1=105630.000000
value2=105685.000000
</object>

<object>
type=2
name=autotrade #258067633 -> #258067771, profit 54.00, WINM23
hidden=1
descr=106250 -> 106154
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682335068
date2=1682335234
value1=106250.000000
value2=106154.000000
</object>

<object>
type=2
name=autotrade #258082902 -> #258083541, profit 32.00, WINM23
hidden=1
descr=104950 -> 104870
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682416914
date2=1682417215
value1=104950.000000
value2=104870.000000
</object>

<object>
type=2
name=autotrade #258083541 -> #258084711, profit 36.00, WINM23
hidden=1
descr=104870 -> 104770
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682417215
date2=1682417920
value1=104870.000000
value2=104770.000000
</object>

<object>
type=2
name=autotrade #258084711 -> #258085302, profit 20.00, WINM23
hidden=1
descr=104770 -> 104900
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682417920
date2=1682418341
value1=104770.000000
value2=104900.000000
</object>

<object>
type=2
name=autotrade #258088953 -> #258088959, profit 70.00, WINM23
hidden=1
descr=104545 -> 104510
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682420967
date2=1682420975
value1=104545.000000
value2=104510.000000
</object>

<object>
type=2
name=autotrade #258088984 -> #258089017, profit 10.00, WINM23
hidden=1
descr=104470 -> 104465
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682420985
date2=1682421001
value1=104470.000000
value2=104465.000000
</object>

<object>
type=2
name=autotrade #258089106 -> #258089979, TP, profit 80.00, WINM23
hidden=1
descr=104365 -> 104325
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682421075
date2=1682422199
value1=104365.000000
value2=104325.000000
</object>

<object>
type=2
name=autotrade #258091739 -> #258091744, TP, profit 40.00, WINM23
hidden=1
descr=104475 -> 104495
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682424302
date2=1682424320
value1=104475.000000
value2=104495.000000
</object>

<object>
type=2
name=autotrade #258092625 -> #258092674, profit 50.00, WINM23
hidden=1
descr=104625 -> 104600
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682425229
date2=1682425245
value1=104625.000000
value2=104600.000000
</object>

<object>
type=2
name=autotrade #258107828 -> #258107927, profit 27.00, WINM23
hidden=1
descr=105140 -> 105185
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682503872
date2=1682503950
value1=105140.000000
value2=105185.000000
</object>

<object>
type=2
name=autotrade #258108443 -> #258108618, profit 90.00, WINM23
hidden=1
descr=104835 -> 104790
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682504264
date2=1682504317
value1=104835.000000
value2=104790.000000
</object>

<object>
type=2
name=autotrade #258109672 -> #258109712, profit 15.00, WINM23
hidden=1
descr=104750 -> 104735
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682505087
date2=1682505105
value1=104750.000000
value2=104735.000000
</object>

<object>
type=2
name=autotrade #258112600 -> #258112774, TP, profit 100.00, WINM23
hidden=1
descr=104355 -> 104455
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682507559
date2=1682507653
value1=104355.000000
value2=104455.000000
</object>

<object>
type=2
name=autotrade #258113340 -> #258113363, profit 80.00, WINM23
hidden=1
descr=104225 -> 104185
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682508040
date2=1682508052
value1=104225.000000
value2=104185.000000
</object>

<object>
type=2
name=autotrade #258113492 -> #258113514, profit 10.00, WINM23
hidden=1
descr=104115 -> 104110
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682508132
date2=1682508147
value1=104115.000000
value2=104110.000000
</object>

<object>
type=2
name=autotrade #258113539 -> #258113694, profit -330.00, WINM23
hidden=1
descr=104080 -> 104245
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682508172
date2=1682508431
value1=104080.000000
value2=104245.000000
</object>

<object>
type=2
name=autotrade #258113706 -> #258113959, TP, profit 350.00, WINM23
hidden=1
descr=104245 -> 104420
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682508439
date2=1682508708
value1=104245.000000
value2=104420.000000
</object>

<object>
type=2
name=autotrade #258125129 -> #258125177, TP, profit 70.00, WINM23
hidden=1
descr=104100 -> 104135
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682524661
date2=1682524844
value1=104100.000000
value2=104135.000000
</object>

<object>
type=2
name=autotrade #258137160 -> #258137255, profit 11.00, WINM23
hidden=1
descr=103895 -> 103950
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682592649
date2=1682592817
value1=103895.000000
value2=103950.000000
</object>

<object>
type=2
name=autotrade #258137382 -> #258137453, profit 13.00, WINM23
hidden=1
descr=104015 -> 104080
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682592981
date2=1682593017
value1=104015.000000
value2=104080.000000
</object>

<object>
type=2
name=autotrade #258143389 -> #258143558, profit 11.00, WINM23
hidden=1
descr=103890 -> 103835
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682600161
date2=1682600380
value1=103890.000000
value2=103835.000000
</object>

<object>
type=2
name=autotrade #258143737 -> #258143845, profit -84.00, WINM23
hidden=1
descr=103650 -> 103860
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1682600504
date2=1682600583
value1=103650.000000
value2=103860.000000
</object>

<object>
type=2
name=autotrade #258143860 -> #258143967, SL, profit -33.00, WINM23
hidden=1
descr=103875 -> 103710
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682600604
date2=1682600690
value1=103875.000000
value2=103710.000000
</object>

<object>
type=2
name=autotrade #258148403 -> #258148559, profit -28.00, WINM23
hidden=1
descr=104395 -> 104255
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1682607959
date2=1682608139
value1=104395.000000
value2=104255.000000
</object>

<object>
type=2
name=autotrade #258300150 -> #258300383, profit 24.00, WINM23
hidden=1
descr=107230 -> 107110
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683544204
date2=1683544314
value1=107230.000000
value2=107110.000000
</object>

<object>
type=2
name=autotrade #258300383 -> #258301377, WINM23
hidden=1
descr=107110 -> 107335
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683544314
date2=1683545482
value1=107110.000000
value2=107335.000000
</object>

<object>
type=2
name=autotrade #258301377 -> #258303546, TP, profit 142.00, WINM23
hidden=1
descr=107335 -> 107105
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683545482
date2=1683547779
value1=107335.000000
value2=107105.000000
</object>

<object>
type=2
name=autotrade #258325727 -> #258326156, profit 6.00, WINM23
hidden=1
descr=107855 -> 107840
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683630501
date2=1683630858
value1=107855.000000
value2=107840.000000
</object>

<object>
type=2
name=autotrade #258326156 -> #258326870, WINM23
hidden=1
descr=107840 -> 108010
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683630858
date2=1683631616
value1=107840.000000
value2=108010.000000
</object>

<object>
type=2
name=autotrade #258326870 -> #258327070, profit 13.20, WINM23
hidden=1
descr=108010 -> 107887
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683631616
date2=1683631925
value1=108010.000000
value2=107887.000000
</object>

<object>
type=2
name=autotrade #258327998 -> #258328014, TP, profit 30.00, WINM23
hidden=1
descr=108015 -> 107985
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683633145
date2=1683633158
value1=108015.000000
value2=107985.000000
</object>

<object>
type=2
name=autotrade #258331053 -> #258331084, profit 90.00, WINM23
hidden=1
descr=108500 -> 108470
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683635229
date2=1683635260
value1=108500.000000
value2=108470.000000
</object>

<object>
type=2
name=autotrade #258331084 -> #258331140, profit 150.00, WINM23
hidden=1
descr=108470 -> 108450
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683635260
date2=1683635357
value1=108470.000000
value2=108450.000000
</object>

<object>
type=2
name=autotrade #258331284 -> #258331641, profit 660.00, WINM23
hidden=1
descr=108385 -> 108275
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683635578
date2=1683635826
value1=108385.000000
value2=108275.000000
</object>

<object>
type=2
name=autotrade #258334731 -> #258334959, WINM23
hidden=1
descr=108740 -> 108675
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683639456
date2=1683639854
value1=108740.000000
value2=108675.000000
</object>

<object>
type=2
name=autotrade #258334959 -> #258335309, WINM23
hidden=1
descr=108675 -> 108665
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683639854
date2=1683640601
value1=108675.000000
value2=108665.000000
</object>

<object>
type=2
name=autotrade #258335309 -> #258335722, WINM23
hidden=1
descr=108665 -> 108545
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683640601
date2=1683641676
value1=108665.000000
value2=108545.000000
</object>

<object>
type=2
name=autotrade #258335722 -> #258336401, WINM23
hidden=1
descr=108545 -> 108485
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683641676
date2=1683643058
value1=108545.000000
value2=108485.000000
</object>

<object>
type=2
name=autotrade #258336401 -> #258337462, WINM23
hidden=1
descr=108485 -> 108425
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683643058
date2=1683645288
value1=108485.000000
value2=108425.000000
</object>

<object>
type=2
name=autotrade #258337462 -> #258338207, WINM23
hidden=1
descr=108425 -> 108440
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683645288
date2=1683647135
value1=108425.000000
value2=108440.000000
</object>

<object>
type=2
name=autotrade #258338207 -> #258338476, profit 611.10, WINM23
hidden=1
descr=108440 -> 108280.45
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683647135
date2=1683647490
value1=108440.000000
value2=108280.450000
</object>

<object>
type=2
name=autotrade #258352569 -> #258352585, profit 300.00, WINM23
hidden=1
descr=108470 -> 108500
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683715028
date2=1683715038
value1=108470.000000
value2=108500.000000
</object>

<object>
type=2
name=autotrade #258355804 -> #258355814, profit 90.00, WINM23
hidden=1
descr=107985 -> 108015
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683715964
date2=1683715979
value1=107985.000000
value2=108015.000000
</object>

<object>
type=2
name=autotrade #258355924 -> #258355939, profit 240.00, WINM23
hidden=1
descr=108030 -> 108070
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683716080
date2=1683716088
value1=108030.000000
value2=108070.000000
</object>

<object>
type=2
name=autotrade #258377647 -> #258377716, profit 56.00, WINM23
hidden=1
descr=107845 -> 107885
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683800129
date2=1683800145
value1=107845.000000
value2=107885.000000
</object>

<object>
type=2
name=autotrade #258378385 -> #258379002, WINM23
hidden=1
descr=108095 -> 107970
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683800441
date2=1683800832
value1=108095.000000
value2=107970.000000
</object>

<object>
type=2
name=autotrade #258379002 -> #258379196, profit 38.50, WINM23
hidden=1
descr=107970 -> 108060
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683800832
date2=1683800961
value1=107970.000000
value2=108060.000000
</object>

<object>
type=2
name=autotrade #258381117 -> #258381155, profit 56.00, WINM23
hidden=1
descr=107920 -> 107880
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683802213
date2=1683802224
value1=107920.000000
value2=107880.000000
</object>

<object>
type=2
name=autotrade #258381848 -> #258381873, profit 63.00, WINM23
hidden=1
descr=108240 -> 108285
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683802636
date2=1683802645
value1=108240.000000
value2=108285.000000
</object>

<object>
type=2
name=autotrade #258395179 -> #258395204, profit 28.00, WINM23
hidden=1
descr=108840 -> 108820
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683816553
date2=1683816564
value1=108840.000000
value2=108820.000000
</object>

<object>
type=2
name=autotrade #258398725 -> #258398906, profit 84.00, WINM23
hidden=1
descr=109605 -> 109545
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683819831
date2=1683819955
value1=109605.000000
value2=109545.000000
</object>

<object>
type=2
name=autotrade #258399110 -> #258399140, TP, profit 83.02, WINM23
hidden=1
descr=109534.3 -> 109475
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683820223
date2=1683820240
value1=109534.300000
value2=109475.000000
</object>

<object>
type=2
name=autotrade #258399504 -> #258399594, profit 20.86, WINM23
hidden=1
descr=109314.9 -> 109300
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683820688
date2=1683820786
value1=109314.900000
value2=109300.000000
</object>

<object>
type=2
name=autotrade #258399702 -> #258399807, WINM23
hidden=1
descr=109330 -> 109340
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683820886
date2=1683821063
value1=109330.000000
value2=109340.000000
</object>

<object>
type=2
name=autotrade #258399807 -> #258399848, profit 28.00, WINM23
hidden=1
descr=109340 -> 109316.95
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683821063
date2=1683821146
value1=109340.000000
value2=109316.950000
</object>

<object>
type=2
name=autotrade #258409370 -> #258409420, TP, profit 250.00, WINM23
hidden=1
descr=108945 -> 108970
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683888044
date2=1683888075
value1=108945.000000
value2=108970.000000
</object>

<object>
type=2
name=autotrade #258410422 -> #258410535, profit 650.00, WINM23
hidden=1
descr=109195 -> 109260
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683888627
date2=1683888677
value1=109195.000000
value2=109260.000000
</object>

<object>
type=2
name=autotrade #258410887 -> #258410923, profit 180.00, WINM23
hidden=1
descr=109485 -> 109515
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1683888786
date2=1683888808
value1=109485.000000
value2=109515.000000
</object>

<object>
type=2
name=autotrade #258412022 -> #258412157, WINM23
hidden=1
descr=109465 -> 109565
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683889338
date2=1683889458
value1=109465.000000
value2=109565.000000
</object>

<object>
type=2
name=autotrade #258412157 -> #258412281, profit 970.00, WINM23
hidden=1
descr=109565 -> 109465
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683889458
date2=1683889597
value1=109565.000000
value2=109465.000000
</object>

<object>
type=2
name=autotrade #258412318 -> #258412386, TP, profit 582.00, WINM23
hidden=1
descr=109460 -> 109430
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683889617
date2=1683889673
value1=109460.000000
value2=109430.000000
</object>

<object>
type=2
name=autotrade #258413443 -> #258413658, WINM23
hidden=1
descr=109685 -> 109785
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683890494
date2=1683890777
value1=109685.000000
value2=109785.000000
</object>

<object>
type=2
name=autotrade #258413658 -> #258413918, profit 937.67, WINM23
hidden=1
descr=109785 -> 109670
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683890777
date2=1683891035
value1=109785.000000
value2=109670.000000
</object>

<object>
type=2
name=autotrade #258423637 -> #258423659, profit 300.00, WINM23
hidden=1
descr=109560 -> 109530
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1683906543
date2=1683906555
value1=109560.000000
value2=109530.000000
</object>

<object>
type=2
name=autotrade #258434172 -> #258434355, profit 2.00, WINM23
hidden=1
descr=109460 -> 109455
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684147723
date2=1684147863
value1=109460.000000
value2=109455.000000
</object>

<object>
type=2
name=autotrade #258438500 -> #258438515, profit 150.00, WINM23
hidden=1
descr=109715 -> 109690
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684152980
date2=1684153031
value1=109715.000000
value2=109690.000000
</object>

<object>
type=2
name=autotrade #258444492 -> #258444711, WINM23
hidden=1
descr=109955 -> 110020
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684163826
date2=1684164103
value1=109955.000000
value2=110020.000000
</object>

<object>
type=2
name=autotrade #258444711 -> #258445123, WINM23
hidden=1
descr=110020 -> 110000
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684164103
date2=1684164432
value1=110020.000000
value2=110000.000000
</object>

<object>
type=2
name=autotrade #258445123 -> #258445198, TP, profit 300.00, WINM23
hidden=1
descr=110000 -> 109975
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684164432
date2=1684164538
value1=110000.000000
value2=109975.000000
</object>

<object>
type=2
name=autotrade #258445706 -> #258445769, WINM23
hidden=1
descr=110011.25 -> 110055
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684165280
date2=1684165377
value1=110011.250000
value2=110055.000000
</object>

<object>
type=2
name=autotrade #258445769 -> #258446315, WINM23
hidden=1
descr=110055 -> 110345
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684165377
date2=1684165521
value1=110055.000000
value2=110345.000000
</object>

<object>
type=2
name=autotrade #258446315 -> #258446516, WINM23
hidden=1
descr=110345 -> 110290
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684165521
date2=1684165665
value1=110345.000000
value2=110290.000000
</object>

<object>
type=2
name=autotrade #258446516 -> #258446746, WINM23
hidden=1
descr=110290 -> 110235
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684165665
date2=1684165855
value1=110290.000000
value2=110235.000000
</object>

<object>
type=2
name=autotrade #258446746 -> #258447008, WINM23
hidden=1
descr=110235 -> 110160
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684165855
date2=1684166138
value1=110235.000000
value2=110160.000000
</object>

<object>
type=2
name=autotrade #258447008 -> #258447350, profit 607.53, WINM23
hidden=1
descr=110160 -> 110070
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684166138
date2=1684166235
value1=110160.000000
value2=110070.000000
</object>

<object>
type=2
name=autotrade #258452941 -> #258453077, profit 200.00, WINM23
hidden=1
descr=109840 -> 109815
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684229428
date2=1684229562
value1=109840.000000
value2=109815.000000
</object>

<object>
type=2
name=autotrade #258454730 -> #258454821, profit 360.00, WINM23
hidden=1
descr=110230 -> 110275
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684231254
date2=1684231292
value1=110230.000000
value2=110275.000000
</object>

<object>
type=2
name=autotrade #258456623 -> #258456848, WINM23
hidden=1
descr=110440 -> 110480
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684232292
date2=1684232581
value1=110440.000000
value2=110480.000000
</object>

<object>
type=2
name=autotrade #258456848 -> #258456882, profit 200.00, WINM23
hidden=1
descr=110480 -> 110435
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684232581
date2=1684232612
value1=110480.000000
value2=110435.000000
</object>

<object>
type=2
name=autotrade #258458302 -> #258458330, profit 270.00, WINM23
hidden=1
descr=111015 -> 110970
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684233311
date2=1684233325
value1=111015.000000
value2=110970.000000
</object>

<object>
type=2
name=autotrade #258458387 -> #258458684, profit 600.00, WINM23
hidden=1
descr=110875 -> 110801
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684233344
date2=1684233534
value1=110875.000000
value2=110801.000000
</object>

<object>
type=2
name=autotrade #258484379 -> #258484397, profit 344.00, WINM23
hidden=1
descr=110410 -> 110370
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684318996
date2=1684319010
value1=110410.000000
value2=110370.000000
</object>

<object>
type=2
name=autotrade #258485154 -> #258485182, profit 473.00, WINM23
hidden=1
descr=110265 -> 110210
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684319666
date2=1684319679
value1=110265.000000
value2=110210.000000
</object>

<object>
type=2
name=autotrade #258485692 -> #258485779, WINM23
hidden=1
descr=110285 -> 110375
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684320019
date2=1684320096
value1=110285.000000
value2=110375.000000
</object>

<object>
type=2
name=autotrade #258485779 -> #258485840, profit 290.25, WINM23
hidden=1
descr=110375 -> 110285
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684320096
date2=1684320155
value1=110375.000000
value2=110285.000000
</object>

<object>
type=2
name=autotrade #258488451 -> #258488586, WINM23
hidden=1
descr=110071.875 -> 110175
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684322287
date2=1684322392
value1=110071.875000
value2=110175.000000
</object>

<object>
type=2
name=autotrade #258488586 -> #258488696, WINM23
hidden=1
descr=110175 -> 110185
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684322392
date2=1684322581
value1=110175.000000
value2=110185.000000
</object>

<object>
type=2
name=autotrade #258488696 -> #258490062, profit 742.47, WINM23
hidden=1
descr=110185 -> 110035
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684322581
date2=1684323935
value1=110185.000000
value2=110035.000000
</object>

<object>
type=2
name=autotrade #258495998 -> #258496031, TP, profit 301.00, WINM23
hidden=1
descr=110510 -> 110475
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684331779
date2=1684331822
value1=110510.000000
value2=110475.000000
</object>

<object>
type=2
name=autotrade #258506778 -> #258506843, profit 440.00, WINM23
hidden=1
descr=109985 -> 110035
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684404116
date2=1684404130
value1=109985.000000
value2=110035.000000
</object>

<object>
type=2
name=autotrade #258511849 -> #258511971, profit 704.00, WINM23
hidden=1
descr=109815 -> 109735.6
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684407665
date2=1684407697
value1=109815.000000
value2=109735.600000
</object>

<object>
type=2
name=autotrade #258512892 -> #258512945, profit 396.00, WINM23
hidden=1
descr=110320 -> 110365
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684408370
date2=1684408387
value1=110320.000000
value2=110365.000000
</object>

<object>
type=2
name=autotrade #258513609 -> #258513708, WINM23
hidden=1
descr=110250 -> 110315
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684408968
date2=1684409091
value1=110250.000000
value2=110315.000000
</object>

<object>
type=2
name=autotrade #258513708 -> #258513871, WINM23
hidden=1
descr=110315 -> 110360
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684409091
date2=1684409240
value1=110315.000000
value2=110360.000000
</object>

<object>
type=2
name=autotrade #258513871 -> #258514060, WINM23
hidden=1
descr=110360 -> 110355
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684409240
date2=1684409541
value1=110360.000000
value2=110355.000000
</object>

<object>
type=2
name=autotrade #258514060 -> #258514339, profit 256.35, WINM23
hidden=1
descr=110355 -> 110297.109
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684409541
date2=1684409765
value1=110355.000000
value2=110297.108696
</object>

<object>
type=2
name=autotrade #258532658 -> #258532680, profit 390.00, WINM23
hidden=1
descr=110910 -> 110845
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684491181
date2=1684491193
value1=110910.000000
value2=110845.000000
</object>

<object>
type=2
name=autotrade #258532942 -> #258542520, WINM23
hidden=1
descr=110640 -> 111570
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684491296
date2=1684502116
value1=110640.000000
value2=111570.000000
</object>

<object>
type=2
name=autotrade #258556712 -> #258556758, TP, profit 110.00, WINM23
hidden=1
descr=111290 -> 111235
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684749844
date2=1684749849
value1=111290.000000
value2=111235.000000
</object>

<object>
type=2
name=autotrade #258557943 -> #258559729, profit 28.00, WINM23
hidden=1
descr=111955 -> 111842.5
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684750265
date2=1684751617
value1=111955.000000
value2=111842.500000
</object>

<object>
type=2
name=autotrade #258559729 -> #258559935, profit 51.00, WINM23
hidden=1
descr=111842.5 -> 111700
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684751617
date2=1684751735
value1=111842.500000
value2=111700.000000
</object>

<object>
type=2
name=autotrade #258559935 -> #258560256, profit 99.00, WINM23
hidden=1
descr=111700 -> 111460
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684751735
date2=1684751961
value1=111700.000000
value2=111460.000000
</object>

<object>
type=2
name=autotrade #258560256 -> #258560600, profit 85.00, WINM23
hidden=1
descr=111460 -> 111563.333
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684751961
date2=1684752186
value1=111460.000000
value2=111563.333333
</object>

<object>
type=2
name=autotrade #258560883 -> #258560905, profit 574.00, WINM23
hidden=1
descr=111200 -> 111130
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684752402
date2=1684752410
value1=111200.000000
value2=111130.000000
</object>

<object>
type=2
name=autotrade #258563560 -> #258563742, WINM23
hidden=1
descr=111535.4 -> 111435
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684755262
date2=1684755576
value1=111535.400000
value2=111435.000000
</object>

<object>
type=2
name=autotrade #258563742 -> #258564557, profit 2.66, WINM23
hidden=1
descr=111435 -> 111520
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684755576
date2=1684756463
value1=111435.000000
value2=111520.000000
</object>

<object>
type=2
name=autotrade #258564896 -> #258564905, profit 123.00, WINM23
hidden=1
descr=111330 -> 111315
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684756944
date2=1684756953
value1=111330.000000
value2=111315.000000
</object>

<object>
type=2
name=autotrade #258580510 -> #258580887, WINM23
hidden=1
descr=111285 -> 111440
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684837365
date2=1684837794
value1=111285.000000
value2=111440.000000
</object>

<object>
type=2
name=autotrade #258580887 -> #258580957, profit 165.00, WINM23
hidden=1
descr=111440 -> 111335
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684837794
date2=1684837816
value1=111440.000000
value2=111335.000000
</object>

<object>
type=2
name=autotrade #258581224 -> #258581379, WINM23
hidden=1
descr=111205 -> 111335
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684837883
date2=1684838020
value1=111205.000000
value2=111335.000000
</object>

<object>
type=2
name=autotrade #258581379 -> #258581398, profit 117.00, WINM23
hidden=1
descr=111335 -> 111255
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684838020
date2=1684838046
value1=111335.000000
value2=111255.000000
</object>

<object>
type=2
name=autotrade #258583682 -> #258583768, WINM23
hidden=1
descr=111365 -> 111395
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684840251
date2=1684840354
value1=111365.000000
value2=111395.000000
</object>

<object>
type=2
name=autotrade #258583768 -> #258583789, profit 25.00, WINM23
hidden=1
descr=111395 -> 111370
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684840354
date2=1684840374
value1=111395.000000
value2=111370.000000
</object>

<object>
type=2
name=autotrade #258583789 -> #258583852, profit 230.00, WINM23
hidden=1
descr=111370 -> 111295
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684840374
date2=1684840435
value1=111370.000000
value2=111295.000000
</object>

<object>
type=2
name=autotrade #258589250 -> #258589834, profit 220.00, WINM23
hidden=1
descr=111835 -> 111615
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684847026
date2=1684847527
value1=111835.000000
value2=111615.000000
</object>

<object>
type=2
name=autotrade #258589961 -> #258589983, profit 50.00, WINM23
hidden=1
descr=111630 -> 111605
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684847757
date2=1684847786
value1=111630.000000
value2=111605.000000
</object>

<object>
type=2
name=autotrade #258600286 -> #258600440, WINM23
hidden=1
descr=110545 -> 110430
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684919608
date2=1684919962
value1=110545.000000
value2=110430.000000
</object>

<object>
type=2
name=autotrade #258600440 -> #258601731, profit 6.00, WINM23
hidden=1
descr=110430 -> 110495
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684919962
date2=1684921339
value1=110430.000000
value2=110495.000000
</object>

<object>
type=2
name=autotrade #258601922 -> #258605073, WINM23
hidden=1
descr=110575 -> 110025
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684921443
date2=1684923657
value1=110575.000000
value2=110025.000000
</object>

<object>
type=2
name=autotrade #258605073 -> #258610598, WINM23
hidden=1
descr=110025 -> 110065
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684923657
date2=1684928530
value1=110025.000000
value2=110065.000000
</object>

<object>
type=2
name=autotrade #258610598 -> #258612220, profit 18.67, WINM23
hidden=1
descr=110065 -> 110235
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684928530
date2=1684931030
value1=110065.000000
value2=110235.000000
</object>

<object>
type=2
name=autotrade #258612360 -> #258612535, WINM23
hidden=1
descr=110380 -> 110265
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684931044
date2=1684931200
value1=110380.000000
value2=110265.000000
</object>

<object>
type=2
name=autotrade #258612535 -> #258613447, WINM23
hidden=1
descr=110265 -> 110050
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684931200
date2=1684932329
value1=110265.000000
value2=110050.000000
</object>

<object>
type=2
name=autotrade #258613447 -> #258614674, profit -880.25, WINM23
hidden=1
descr=110050 -> 109638.75
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1684932329
date2=1684933928
value1=110050.000000
value2=109638.750000
</object>

<object>
type=2
name=autotrade #258614696 -> #258615031, profit 188.46, WINM23
hidden=1
descr=109644.617 -> 109513.683
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684933936
date2=1684934186
value1=109644.616667
value2=109513.683333
</object>

<object>
type=2
name=autotrade #258622470 -> #258622606, profit 4.00, WINM23
hidden=1
descr=109430 -> 109420
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1684944328
date2=1684944662
value1=109430.000000
value2=109420.000000
</object>

<object>
type=2
name=autotrade #258628058 -> #258628124, TP, profit 110.00, WINM23
hidden=1
descr=111225 -> 111115
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685006954
date2=1685007019
value1=111225.000000
value2=111115.000000
</object>

<object>
type=2
name=autotrade #258628804 -> #258628846, profit 15.00, WINM23
hidden=1
descr=111230 -> 111215
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685007931
date2=1685008001
value1=111230.000000
value2=111215.000000
</object>

<object>
type=2
name=autotrade #258631684 -> #258632258, profit 125.00, WINM23
hidden=1
descr=111280 -> 111155
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685010089
date2=1685010668
value1=111280.000000
value2=111155.000000
</object>

<object>
type=2
name=autotrade #258632258 -> #258632499, profit 60.00, WINM23
hidden=1
descr=111155 -> 110997.5
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685010668
date2=1685010772
value1=111155.000000
value2=110997.500000
</object>

<object>
type=2
name=autotrade #258632499 -> #258632929, profit 51.00, WINM23
hidden=1
descr=110997.5 -> 111025
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685010772
date2=1685011010
value1=110997.500000
value2=111025.000000
</object>

<object>
type=2
name=autotrade #258632929 -> #258633239, TP, profit 220.00, WINM23
hidden=1
descr=111025 -> 110730
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685011010
date2=1685011218
value1=111025.000000
value2=110730.000000
</object>

<object>
type=2
name=autotrade #258633809 -> #258633836, profit 195.00, WINM23
hidden=1
descr=111085 -> 111150
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685011556
date2=1685011562
value1=111085.000000
value2=111150.000000
</object>

<object>
type=2
name=autotrade #258633894 -> #258634604, profit -2 760.00, WINM23
hidden=1
descr=111215 -> 110870
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685011585
date2=1685012349
value1=111215.000000
value2=110870.000000
</object>

<object>
type=2
name=autotrade #258634624 -> #258635359, profit 800.00, WINM23
hidden=1
descr=110855 -> 110759.333
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685012363
date2=1685013056
value1=110855.000000
value2=110759.333333
</object>

<object>
type=2
name=autotrade #258639770 -> #258639905, profit 320.00, WINM23
hidden=1
descr=110835 -> 110795
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685018060
date2=1685018206
value1=110835.000000
value2=110795.000000
</object>

<object>
type=2
name=autotrade #258643795 -> #258643804, profit 160.00, WINM23
hidden=1
descr=111095 -> 111115
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685024671
date2=1685024680
value1=111095.000000
value2=111115.000000
</object>

<object>
type=2
name=autotrade #258648522 -> #258648598, profit 180.13, WINM23
hidden=1
descr=110697.517 -> 110678.467
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685032436
date2=1685032448
value1=110697.516667
value2=110678.466667
</object>

<object>
type=2
name=autotrade #258688160 -> #258689265, WINM23
hidden=1
descr=111090 -> 111245
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685360239
date2=1685361629
value1=111090.000000
value2=111245.000000
</object>

<object>
type=2
name=autotrade #258689265 -> #258689637, profit 172.50, WINM23
hidden=1
descr=111245 -> 111340
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685361629
date2=1685361933
value1=111245.000000
value2=111340.000000
</object>

<object>
type=2
name=autotrade #258689637 -> #258690061, WINM23
hidden=1
descr=111340 -> 111275
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685361933
date2=1685362285
value1=111340.000000
value2=111275.000000
</object>

<object>
type=2
name=autotrade #258690061 -> #258690162, profit 33.75, WINM23
hidden=1
descr=111275 -> 111390
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685362285
date2=1685362369
value1=111275.000000
value2=111390.000000
</object>

<object>
type=2
name=autotrade #258690162 -> #258690247, WINM23
hidden=1
descr=111390 -> 111300
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685362369
date2=1685362447
value1=111390.000000
value2=111300.000000
</object>

<object>
type=2
name=autotrade #258690247 -> #258690337, profit 98.31, WINM23
hidden=1
descr=111300 -> 111325
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685362447
date2=1685362660
value1=111300.000000
value2=111325.000000
</object>

<object>
type=2
name=autotrade #258690337 -> #258690390, profit 49.69, WINM23
hidden=1
descr=111325 -> 111330
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685362660
date2=1685362765
value1=111325.000000
value2=111330.000000
</object>

<object>
type=2
name=autotrade #258690601 -> #258690615, profit 44.00, WINM23
hidden=1
descr=111300 -> 111320
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685363219
date2=1685363244
value1=111300.000000
value2=111320.000000
</object>

<object>
type=2
name=autotrade #258690867 -> #258690918, profit 4.00, WINM23
hidden=1
descr=111040 -> 111022.15
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685363359
date2=1685363373
value1=111040.000000
value2=111022.150000
</object>

<object>
type=2
name=autotrade #258693178 -> #258693241, profit 36.25, WINM23
hidden=1
descr=111066.475 -> 111053.95
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685367681
date2=1685367738
value1=111066.475000
value2=111053.950000
</object>

<object>
type=2
name=autotrade #258693585 -> #258693701, TP, profit 97.41, WINM23
hidden=1
descr=110929.275 -> 110893.475
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685367976
date2=1685368046
value1=110929.275000
value2=110893.475000
</object>

<object>
type=2
name=autotrade #258696506 -> #258696575, WINM23
hidden=1
descr=110855 -> 110825
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685372401
date2=1685372598
value1=110855.000000
value2=110825.000000
</object>

<object>
type=2
name=autotrade #258696575 -> #258696771, TP, profit 407.00, WINM23
hidden=1
descr=110825 -> 110887.975
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685372598
date2=1685373098
value1=110825.000000
value2=110887.975000
</object>

<object>
type=2
name=autotrade #258696938 -> #258697057, profit 193.39, WINM23
hidden=1
descr=110958.867 -> 110982.633
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685373245
date2=1685373265
value1=110958.866667
value2=110982.633333
</object>

<object>
type=2
name=autotrade #258697297 -> #258697346, profit 15.61, WINM23
hidden=1
descr=110993.85 -> 111001.783
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685373477
date2=1685373485
value1=110993.850000
value2=111001.783333
</object>

<object>
type=2
name=autotrade #258697902 -> #258698010, profit 185.00, WINM23
hidden=1
descr=111250 -> 111267.167
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685373822
date2=1685373824
value1=111250.000000
value2=111267.166667
</object>

<object>
type=2
name=autotrade #258698183 -> #258698224, profit 115.56, WINM23
hidden=1
descr=111349.383 -> 111359.2
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685373881
date2=1685373885
value1=111349.383333
value2=111359.200000
</object>

<object>
type=2
name=autotrade #258698364 -> #258699114, TP, profit 340.49, WINM23
hidden=1
descr=111223.988 -> 111260.85
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685373932
date2=1685375167
value1=111223.987500
value2=111260.850000
</object>

<object>
type=2
name=autotrade #258699260 -> #258699292, profit 92.87, WINM23
hidden=1
descr=111237.45 -> 111248.3
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685375226
date2=1685375253
value1=111237.450000
value2=111248.300000
</object>

<object>
type=2
name=autotrade #258699339 -> #258699402, profit 183.34, WINM23
hidden=1
descr=111230.225 -> 111249.275
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685375316
date2=1685375363
value1=111230.225000
value2=111249.275000
</object>

<object>
type=2
name=autotrade #258702806 -> #258702870, SL, profit -17.00, WINM23
hidden=1
descr=111400 -> 111315
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685437685
date2=1685437786
value1=111400.000000
value2=111315.000000
</object>

<object>
type=2
name=autotrade #258703022 -> #258703046, profit 369.00, WINM23
hidden=1
descr=111460 -> 111415
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685437868
date2=1685437902
value1=111460.000000
value2=111415.000000
</object>

<object>
type=2
name=autotrade #258703347 -> #258703352, profit 150.00, WINM23
hidden=1
descr=111340 -> 111315
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685438271
date2=1685438277
value1=111340.000000
value2=111315.000000
</object>

<object>
type=2
name=autotrade #258706401 -> #258706608, WINM23
hidden=1
descr=111609.45 -> 111715
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685441198
date2=1685441344
value1=111609.450000
value2=111715.000000
</object>

<object>
type=2
name=autotrade #258706608 -> #258706821, TP, profit 283.99, WINM23
hidden=1
descr=111715 -> 111612.167
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685441344
date2=1685441529
value1=111715.000000
value2=111612.166667
</object>

<object>
type=2
name=autotrade #258707048 -> #258707083, profit 156.09, WINM23
hidden=1
descr=111514.036 -> 111495.607
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685441584
date2=1685441590
value1=111514.035714
value2=111495.607143
</object>

<object>
type=2
name=autotrade #258709835 -> #258710002, TP, profit 227.26, WINM23
hidden=1
descr=110667.286 -> 110691.964
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685442771
date2=1685442905
value1=110667.285714
value2=110691.964286
</object>

<object>
type=2
name=autotrade #258710733 -> #258710783, profit 118.49, WINM23
hidden=1
descr=110410.55 -> 110425
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685443255
date2=1685443331
value1=110410.550000
value2=110425.000000
</object>

<object>
type=2
name=autotrade #258710892 -> #258710993, WINM23
hidden=1
descr=110525 -> 110395
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685443429
date2=1685443497
value1=110525.000000
value2=110395.000000
</object>

<object>
type=2
name=autotrade #258710993 -> #258711253, profit 205.00, WINM23
hidden=1
descr=110395 -> 110480.1
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685443497
date2=1685443637
value1=110395.000000
value2=110480.100000
</object>

<object>
type=2
name=autotrade #258714148 -> #258714201, TP, profit 246.00, WINM23
hidden=1
descr=109860 -> 109887.05
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685446229
date2=1685446253
value1=109860.000000
value2=109887.050000
</object>

<object>
type=2
name=autotrade #258714390 -> #258714410, profit 164.00, WINM23
hidden=1
descr=109925 -> 109945
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685446538
date2=1685446565
value1=109925.000000
value2=109945.000000
</object>

<object>
type=2
name=autotrade #258714898 -> #258714968, profit 196.66, WINM23
hidden=1
descr=109711.017 -> 109731.017
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685447168
date2=1685447174
value1=109711.016667
value2=109731.016667
</object>

<object>
type=2
name=autotrade #258715603 -> #258716138, profit 3.30, WINM23
hidden=1
descr=109608.517 -> 109621.667
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685447752
date2=1685448531
value1=109608.516667
value2=109621.666667
</object>

<object>
type=2
name=autotrade #258716669 -> #258716720, profit 13.78, WINM23
hidden=1
descr=109337.775 -> 109355
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449011
date2=1685449020
value1=109337.775000
value2=109355.000000
</object>

<object>
type=2
name=autotrade #258716839 -> #258716902, profit 3.65, WINM23
hidden=1
descr=109256.75 -> 109271.7
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449085
date2=1685449095
value1=109256.750000
value2=109271.700000
</object>

<object>
type=2
name=autotrade #258717020 -> #258717119, profit 7.58, WINM23
hidden=1
descr=109316.05 -> 109335
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449207
date2=1685449218
value1=109316.050000
value2=109335.000000
</object>

<object>
type=2
name=autotrade #258717184 -> #258717288, WINM23
hidden=1
descr=109354.133 -> 109275
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449242
date2=1685449311
value1=109354.133333
value2=109275.000000
</object>

<object>
type=2
name=autotrade #258717288 -> #258717601, profit 12.78, WINM23
hidden=1
descr=109275 -> 109341.825
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449311
date2=1685449656
value1=109275.000000
value2=109341.825000
</object>

<object>
type=2
name=autotrade #258717752 -> #258717952, profit 403.13, WINM23
hidden=1
descr=109455.838 -> 109501.1
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685449690
date2=1685449836
value1=109455.837500
value2=109501.100000
</object>

<object>
type=2
name=autotrade #258718442 -> #258718539, profit 158.88, WINM23
hidden=1
descr=109385.625 -> 109401.9
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685450528
date2=1685450552
value1=109385.625000
value2=109401.900000
</object>

<object>
type=2
name=autotrade #258718642 -> #258722344, profit 153.89, WINM23
hidden=1
descr=109420.025 -> 109453.15
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685450594
date2=1685457390
value1=109420.025000
value2=109453.150000
</object>

<object>
type=2
name=autotrade #258744784 -> #258744844, profit 4.00, WINM23
hidden=1
descr=108835 -> 108845
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685539447
date2=1685539509
value1=108835.000000
value2=108845.000000
</object>

<object>
type=2
name=autotrade #258744978 -> #258745013, TP, profit 148.00, WINM23
hidden=1
descr=108905 -> 108925
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685539715
date2=1685539759
value1=108905.000000
value2=108925.000000
</object>

<object>
type=2
name=autotrade #258745124 -> #258745223, WINM23
hidden=1
descr=108975 -> 108920
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685539871
date2=1685539941
value1=108975.000000
value2=108920.000000
</object>

<object>
type=2
name=autotrade #258745223 -> #258745287, profit 198.00, WINM23
hidden=1
descr=108920 -> 108973.8
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685539941
date2=1685540058
value1=108920.000000
value2=108973.800000
</object>

<object>
type=2
name=autotrade #258748567 -> #258748667, profit 76.40, WINM23
hidden=1
descr=109346.833 -> 109317.283
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685544278
date2=1685544355
value1=109346.833333
value2=109317.283333
</object>

<object>
type=2
name=autotrade #258751559 -> #258751612, profit 144.36, WINM23
hidden=1
descr=109176.633 -> 109190
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549250
date2=1685549257
value1=109176.633333
value2=109190.000000
</object>

<object>
type=2
name=autotrade #258751648 -> #258751700, profit 162.00, WINM23
hidden=1
descr=109180 -> 109193.183
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549291
date2=1685549297
value1=109180.000000
value2=109193.183333
</object>

<object>
type=2
name=autotrade #258751806 -> #258751887, profit 2.00, WINM23
hidden=1
descr=109230 -> 109234.833
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549394
date2=1685549425
value1=109230.000000
value2=109234.833333
</object>

<object>
type=2
name=autotrade #258751960 -> #258752007, profit 24.91, WINM23
hidden=1
descr=109262.217 -> 109267.85
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549537
date2=1685549558
value1=109262.216667
value2=109267.850000
</object>

<object>
type=2
name=autotrade #258752064 -> #258752126, profit 81.36, WINM23
hidden=1
descr=109292.467 -> 109297.767
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549567
date2=1685549586
value1=109292.466667
value2=109297.766667
</object>

<object>
type=2
name=autotrade #258752223 -> #258752335, WINM23
hidden=1
descr=109250 -> 109125
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549762
date2=1685549914
value1=109250.000000
value2=109125.000000
</object>

<object>
type=2
name=autotrade #258752335 -> #258752706, profit 9.33, WINM23
hidden=1
descr=109125 -> 109218.133
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685549914
date2=1685550686
value1=109125.000000
value2=109218.133333
</object>

<object>
type=2
name=autotrade #258753010 -> #258753024, TP, profit 108.00, WINM23
hidden=1
descr=109280 -> 109290
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685550845
date2=1685550874
value1=109280.000000
value2=109290.000000
</object>

<object>
type=2
name=autotrade #258764819 -> #258764855, profit 96.47, WINM23
hidden=1
descr=109141.15 -> 109180.55
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685617345
date2=1685617358
value1=109141.150000
value2=109180.550000
</object>

<object>
type=2
name=autotrade #258765727 -> #258765765, profit 43.45, WINM23
hidden=1
descr=108975.25 -> 108995
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685617701
date2=1685617764
value1=108975.250000
value2=108995.000000
</object>

<object>
type=2
name=autotrade #258766007 -> #258766070, TP, profit 32.89, WINM23
hidden=1
descr=109100.05 -> 109113.95
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685618088
date2=1685618136
value1=109100.050000
value2=109113.950000
</object>

<object>
type=2
name=autotrade #258766304 -> #258766334, profit 15.55, WINM23
hidden=1
descr=109137.933 -> 109144.433
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685618504
date2=1685618512
value1=109137.933333
value2=109144.433333
</object>

<object>
type=2
name=autotrade #258766406 -> #258766444, profit 71.28, WINM23
hidden=1
descr=109237.6 -> 109270
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685618557
date2=1685618561
value1=109237.600000
value2=109270.000000
</object>

<object>
type=2
name=autotrade #258766920 -> #258766985, profit 13.15, WINM23
hidden=1
descr=109119.025 -> 109125
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685619058
date2=1685619127
value1=109119.025000
value2=109125.000000
</object>

<object>
type=2
name=autotrade #258767053 -> #258767097, profit 6.00, WINM23
hidden=1
descr=109200 -> 109211.125
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685619166
date2=1685619194
value1=109200.000000
value2=109211.125000
</object>

<object>
type=2
name=autotrade #258767221 -> #258768830, profit -1 500.90, WINM23
hidden=1
descr=109137.775 -> 109820.25
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685619327
date2=1685620796
value1=109137.775000
value2=109820.250000
</object>

<object>
type=2
name=autotrade #258768986 -> #258770761, profit 869.00, WINM23
hidden=1
descr=109845 -> 110240
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685620864
date2=1685622095
value1=109845.000000
value2=110240.000000
</object>

<object>
type=2
name=autotrade #258772225 -> #258772287, profit 83.67, WINM23
hidden=1
descr=110563.033 -> 110525
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685622926
date2=1685622933
value1=110563.033333
value2=110525.000000
</object>

<object>
type=2
name=autotrade #258776560 -> #258776751, profit 140.00, WINM23
hidden=1
descr=110895 -> 110825
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685629570
date2=1685630061
value1=110895.000000
value2=110825.000000
</object>

<object>
type=2
name=autotrade #258776916 -> #258778078, WINM23
hidden=1
descr=110695 -> 110817.5
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685630254
date2=1685632767
value1=110695.000000
value2=110817.500000
</object>

<object>
type=2
name=autotrade #258778078 -> #258778113, WINM23
hidden=1
descr=110817.5 -> 110885
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685632767
date2=1685632864
value1=110817.500000
value2=110885.000000
</object>

<object>
type=2
name=autotrade #258778113 -> #258778256, SL, profit -446.60, WINM23
hidden=1
descr=110885 -> 110985
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685632864
date2=1685633248
value1=110885.000000
value2=110985.000000
</object>

<object>
type=2
name=autotrade #258779454 -> #258779474, profit 11.00, WINM23
hidden=1
descr=110890 -> 110885
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685635298
date2=1685635367
value1=110890.000000
value2=110885.000000
</object>

<object>
type=2
name=autotrade #258792197 -> #258793991, SL, profit -1 620.00, WINM2
hidden=1
descr=112920 -> 113325
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685706091
date2=1685710560
value1=112920.000000
value2=113325.000000
</object>

<object>
type=2
name=autotrade #258794273 -> #258794424, profit 195.00, WINM23
hidden=1
descr=113285 -> 113220
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685710918
date2=1685711436
value1=113285.000000
value2=113220.000000
</object>

<object>
type=2
name=autotrade #258794724 -> #258795015, profit 0.00, WINM23
hidden=1
descr=112995 -> 112995
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685711804
date2=1685712324
value1=112995.000000
value2=112995.000000
</object>

<object>
type=2
name=autotrade #258795457 -> #258795480, profit 45.00, WINM23
hidden=1
descr=112860 -> 112845
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685713056
date2=1685713089
value1=112860.000000
value2=112845.000000
</object>

<object>
type=2
name=autotrade #258796514 -> #258796563, profit 150.00, WINM23
hidden=1
descr=112710 -> 112660
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685715335
date2=1685715401
value1=112710.000000
value2=112660.000000
</object>

<object>
type=2
name=autotrade #258796990 -> #258797045, profit 80.00, WINM23
hidden=1
descr=112700 -> 112680
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685716499
date2=1685716603
value1=112700.000000
value2=112680.000000
</object>

<object>
type=2
name=autotrade #258797160 -> #258797350, profit 120.00, WINM23
hidden=1
descr=112635 -> 112665
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685716908
date2=1685717319
value1=112635.000000
value2=112665.000000
</object>

<object>
type=2
name=autotrade #258797373 -> #258797429, TP, profit 80.00, WINM23
hidden=1
descr=112725 -> 112745
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685717367
date2=1685717464
value1=112725.000000
value2=112745.000000
</object>

<object>
type=2
name=autotrade #258797591 -> #258797601, profit 120.00, WINM23
hidden=1
descr=112615 -> 112585
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685718211
date2=1685718219
value1=112615.000000
value2=112585.000000
</object>

<object>
type=2
name=autotrade #258797671 -> #258797750, profit 100.00, WINM23
hidden=1
descr=112565 -> 112540
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685718303
date2=1685718472
value1=112565.000000
value2=112540.000000
</object>

<object>
type=2
name=autotrade #258799436 -> #258799887, profit 160.00, WINM23
hidden=1
descr=113040 -> 113000
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685721188
date2=1685722160
value1=113040.000000
value2=113000.000000
</object>

<object>
type=2
name=autotrade #258801213 -> #258801339, profit -920.00, WINM23
hidden=1
descr=113250 -> 113020
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685725136
date2=1685725337
value1=113250.000000
value2=113020.000000
</object>

<object>
type=2
name=autotrade #258801410 -> #258801519, profit 330.00, WINM23
hidden=1
descr=113080 -> 113190
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685725759
date2=1685726105
value1=113080.000000
value2=113190.000000
</object>

<object>
type=2
name=autotrade #258801536 -> #258801563, profit 160.00, WINM23
hidden=1
descr=113145 -> 113105
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685726169
date2=1685726198
value1=113145.000000
value2=113105.000000
</object>

<object>
type=2
name=autotrade #258805276 -> #258805315, profit 574.00, WINM23
hidden=1
descr=113210 -> 113140
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685959388
date2=1685959414
value1=113210.000000
value2=113140.000000
</object>

<object>
type=2
name=autotrade #258805998 -> #258806028, profit 180.81, WINM23
hidden=1
descr=113287.05 -> 113265
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685959828
date2=1685959847
value1=113287.050000
value2=113265.000000
</object>

<object>
type=2
name=autotrade #258806120 -> #258806140, profit 467.81, WINM23
hidden=1
descr=113192.05 -> 113135
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685959928
date2=1685959941
value1=113192.050000
value2=113135.000000
</object>

<object>
type=2
name=autotrade #258806410 -> #258807057, profit 337.50, WINM23
hidden=1
descr=113037.5 -> 112975
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685960262
date2=1685961115
value1=113037.500000
value2=112975.000000
</object>

<object>
type=2
name=autotrade #258807057 -> #258807234, profit 7.50, WINM23
hidden=1
descr=112975 -> 113000
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685961115
date2=1685961198
value1=112975.000000
value2=113000.000000
</object>

<object>
type=2
name=autotrade #258807234 -> #258807294, profit 184.50, WINM23
hidden=1
descr=113000 -> 113015
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685961198
date2=1685961264
value1=113000.000000
value2=113015.000000
</object>

<object>
type=2
name=autotrade #258807605 -> #258807797, profit 471.09, WINM23
hidden=1
descr=113057.45 -> 113000
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685961511
date2=1685961728
value1=113057.450000
value2=113000.000000
</object>

<object>
type=2
name=autotrade #258807797 -> #258807918, WINM23
hidden=1
descr=113000 -> 113003.6
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685961728
date2=1685961920
value1=113000.000000
value2=113003.600000
</object>

<object>
type=2
name=autotrade #258807918 -> #258808073, WINM23
hidden=1
descr=113003.6 -> 113020
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685961920
date2=1685962093
value1=113003.600000
value2=113020.000000
</object>

<object>
type=2
name=autotrade #258808073 -> #258808135, WINM23
hidden=1
descr=113020 -> 113150
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685962093
date2=1685962180
value1=113020.000000
value2=113150.000000
</object>

<object>
type=2
name=autotrade #258808135 -> #258808439, profit 1 170.65, WINM23
hidden=1
descr=113150 -> 112921.063
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685962180
date2=1685962465
value1=113150.000000
value2=112921.062500
</object>

<object>
type=2
name=autotrade #258808607 -> #258808718, WINM23
hidden=1
descr=112898.525 -> 112975
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685962527
date2=1685962615
value1=112898.525000
value2=112975.000000
</object>

<object>
type=2
name=autotrade #258808718 -> #258808816, profit 319.94, WINM23
hidden=1
descr=112975 -> 112888.1
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685962615
date2=1685962772
value1=112975.000000
value2=112888.100000
</object>

<object>
type=2
name=autotrade #258809307 -> #258809454, profit 146.12, WINM23
hidden=1
descr=112947.82 -> 112933.9
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685962898
date2=1685962905
value1=112947.820000
value2=112933.900000
</object>

<object>
type=2
name=autotrade #258809708 -> #258810243, profit 242.15, WINM23
hidden=1
descr=112744.53 -> 112719.84
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685963079
date2=1685963426
value1=112744.530000
value2=112719.840000
</object>

<object>
type=2
name=autotrade #258810609 -> #258810740, profit 205.84, WINM23
hidden=1
descr=112570.49 -> 112539.34
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685963593
date2=1685963636
value1=112570.490000
value2=112539.340000
</object>

<object>
type=2
name=autotrade #258810964 -> #258811088, profit 307.17, WINM23
hidden=1
descr=112417.46 -> 112387.06
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685963663
date2=1685963671
value1=112417.460000
value2=112387.060000
</object>

<object>
type=2
name=autotrade #258819698 -> #258819887, WINM23
hidden=1
descr=112696.77 -> 112770
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685978821
date2=1685979045
value1=112696.770000
value2=112770.000000
</object>

<object>
type=2
name=autotrade #258819887 -> #258820068, WINM23
hidden=1
descr=112770 -> 112735
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685979045
date2=1685979400
value1=112770.000000
value2=112735.000000
</object>

<object>
type=2
name=autotrade #258821617 -> #258821798, profit 1 312.00, WINM23
hidden=1
descr=113140 -> 113299.85
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685982594
date2=1685982636
value1=113140.000000
value2=113299.850000
</object>

<object>
type=2
name=autotrade #258821828 -> #258821969, WINM23
hidden=1
descr=113255 -> 113134.95
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685982670
date2=1685982808
value1=113255.000000
value2=113134.950000
</object>

<object>
type=2
name=autotrade #258821969 -> #258822782, profit 532.86, WINM23
hidden=1
descr=113134.95 -> 113154.067
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685982808
date2=1685984849
value1=113134.950000
value2=113154.066667
</object>

<object>
type=2
name=autotrade #258822858 -> #258822886, profit 82.00, WINM23
hidden=1
descr=113130 -> 113120
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1685984951
date2=1685985071
value1=113130.000000
value2=113120.000000
</object>

<object>
type=2
name=autotrade #258822930 -> #258822948, profit 123.00, WINM23
hidden=1
descr=113190 -> 113205
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1685985217
date2=1685985256
value1=113190.000000
value2=113205.000000
</object>

<object>
type=2
name=autotrade #258828715 -> #258829912, WINM23
hidden=1
descr=113610 -> 113395
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686046175
date2=1686046841
value1=113610.000000
value2=113395.000000
</object>

<object>
type=2
name=autotrade #258829912 -> #258833527, SL, profit -1 445.00, WINM2
hidden=1
descr=113395 -> 114020
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686046841
date2=1686049552
value1=113395.000000
value2=114020.000000
</object>

<object>
type=2
name=autotrade #258839919 -> #258840746, profit 450.00, WINM23
hidden=1
descr=114800 -> 114650
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686057152
date2=1686058047
value1=114800.000000
value2=114650.000000
</object>

<object>
type=2
name=autotrade #258841127 -> #258842087, WINM23
hidden=1
descr=114750 -> 114790
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686058988
date2=1686060330
value1=114750.000000
value2=114790.000000
</object>

<object>
type=2
name=autotrade #258842087 -> #258842599, SL, profit -1 020.00, WINM2
hidden=1
descr=114790 -> 115015
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686060330
date2=1686060727
value1=114790.000000
value2=115015.000000
</object>

<object>
type=2
name=autotrade #258853248 -> #258853845, profit 0.00, WINM23
hidden=1
descr=115730 -> 115730
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686132922
date2=1686133376
value1=115730.000000
value2=115730.000000
</object>

<object>
type=2
name=autotrade #258853845 -> #258853972, WINM23
hidden=1
descr=115730 -> 115795
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686133376
date2=1686133538
value1=115730.000000
value2=115795.000000
</object>

<object>
type=2
name=autotrade #258853972 -> #258854336, WINM23
hidden=1
descr=115795 -> 115970
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686133538
date2=1686133827
value1=115795.000000
value2=115970.000000
</object>

<object>
type=2
name=autotrade #258854336 -> #258855748, profit 237.42, WINM23
hidden=1
descr=115970 -> 115825
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686133827
date2=1686134528
value1=115970.000000
value2=115825.000000
</object>

<object>
type=2
name=autotrade #258856298 -> #258856639, profit 110.00, WINM23
hidden=1
descr=116140 -> 116250
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686135022
date2=1686135077
value1=116140.000000
value2=116250.000000
</object>

<object>
type=2
name=autotrade #258856971 -> #258856979, profit 148.00, WINM23
hidden=1
descr=116065 -> 116045
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686135213
date2=1686135220
value1=116065.000000
value2=116045.000000
</object>

<object>
type=2
name=autotrade #258858001 -> #258858062, WINM23
hidden=1
descr=116045 -> 116095
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686136434
date2=1686136538
value1=116045.000000
value2=116095.000000
</object>

<object>
type=2
name=autotrade #258858062 -> #258858094, profit 259.00, WINM23
hidden=1
descr=116095 -> 116035
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686136538
date2=1686136549
value1=116095.000000
value2=116035.000000
</object>

<object>
type=2
name=autotrade #258858706 -> #258858764, TP, profit 370.00, WINM23
hidden=1
descr=115880 -> 115830
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686137110
date2=1686137123
value1=115880.000000
value2=115830.000000
</object>

<object>
type=2
name=autotrade #258858924 -> #258858970, profit 75.00, WINM23
hidden=1
descr=115765 -> 115750
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686137252
date2=1686137314
value1=115765.000000
value2=115750.000000
</object>

<object>
type=2
name=autotrade #258859069 -> #258859078, profit 222.00, WINM23
hidden=1
descr=115800 -> 115771.917
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686137416
date2=1686137420
value1=115800.000000
value2=115771.916667
</object>

<object>
type=2
name=autotrade #258859200 -> #258859288, profit 185.00, WINM23
hidden=1
descr=115705 -> 115682.6
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686137509
date2=1686137571
value1=115705.000000
value2=115682.600000
</object>

<object>
type=2
name=autotrade #258860662 -> #258860786, profit 89.86, WINM23
hidden=1
descr=115447.143 -> 115437.214
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686138334
date2=1686138513
value1=115447.142857
value2=115437.214286
</object>

<object>
type=2
name=autotrade #258865116 -> #258866153, TP, profit 222.00, WINM23
hidden=1
descr=115400 -> 115371.757
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686144762
date2=1686146127
value1=115400.000000
value2=115371.757143
</object>

<object>
type=2
name=autotrade #258879259 -> #258879345, profit 161.54, WINM23
hidden=1
descr=116643.077 -> 116620
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686306449
date2=1686306530
value1=116643.076923
value2=116620.000000
</object>

<object>
type=2
name=autotrade #258880269 -> #258880350, profit 70.00, WINM23
hidden=1
descr=116755 -> 116745
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686307488
date2=1686307526
value1=116755.000000
value2=116745.000000
</object>

<object>
type=2
name=autotrade #258880838 -> #258880938, WINM23
hidden=1
descr=116770 -> 116875
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686308308
date2=1686308428
value1=116770.000000
value2=116875.000000
</object>

<object>
type=2
name=autotrade #258880938 -> #258881353, WINM23
hidden=1
descr=116875 -> 117120
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686308428
date2=1686308583
value1=116875.000000
value2=117120.000000
</object>

<object>
type=2
name=autotrade #258881353 -> #258881494, WINM23
hidden=1
descr=117120 -> 117075
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686308583
date2=1686308709
value1=117120.000000
value2=117075.000000
</object>

<object>
type=2
name=autotrade #258881494 -> #258881743, WINM23
hidden=1
descr=117075 -> 117245
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686308709
date2=1686308966
value1=117075.000000
value2=117245.000000
</object>

<object>
type=2
name=autotrade #258881743 -> #258881859, WINM23
hidden=1
descr=117245 -> 117140
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686308966
date2=1686309065
value1=117245.000000
value2=117140.000000
</object>

<object>
type=2
name=autotrade #258881859 -> #258882324, WINM23
hidden=1
descr=117140 -> 117300
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686309065
date2=1686309290
value1=117140.000000
value2=117300.000000
</object>

<object>
type=2
name=autotrade #258882324 -> #258883488, WINM23
hidden=1
descr=117300 -> 117465
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686309290
date2=1686309883
value1=117300.000000
value2=117465.000000
</object>

<object>
type=2
name=autotrade #258883488 -> #258883956, WINM23
hidden=1
descr=117465 -> 117720
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686309883
date2=1686310130
value1=117465.000000
value2=117720.000000
</object>

<object>
type=2
name=autotrade #258883956 -> #258885025, WINM23
hidden=1
descr=117720 -> 117450
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686310130
date2=1686311433
value1=117720.000000
value2=117450.000000
</object>

<object>
type=2
name=autotrade #258885025 -> #258885684, WINM23
hidden=1
descr=117450 -> 117400
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686311433
date2=1686312111
value1=117450.000000
value2=117400.000000
</object>

<object>
type=2
name=autotrade #258885684 -> #258889573, WINM23
hidden=1
descr=117400 -> 117375
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686312111
date2=1686321103
value1=117400.000000
value2=117375.000000
</object>

<object>
type=2
name=autotrade #258889573 -> #258889937, WINM23
hidden=1
descr=117375 -> 117340
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686321103
date2=1686322083
value1=117375.000000
value2=117340.000000
</object>

<object>
type=2
name=autotrade #258889937 -> #258890232, WINM23
hidden=1
descr=117340 -> 117325
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686322083
date2=1686322666
value1=117340.000000
value2=117325.000000
</object>

<object>
type=2
name=autotrade #258890232 -> #258891036, profit 87.72, WINM23
hidden=1
descr=117325 -> 117236.628
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686322666
date2=1686324640
value1=117325.000000
value2=117236.628289
</object>

<object>
type=2
name=autotrade #258896010 -> #258896081, WINM23
hidden=1
descr=117760 -> 117855
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686562037
date2=1686562105
value1=117760.000000
value2=117855.000000
</object>

<object>
type=2
name=autotrade #258896081 -> #258896137, profit 2.50, WINM23
hidden=1
descr=117855 -> 117805
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686562105
date2=1686562152
value1=117855.000000
value2=117805.000000
</object>

<object>
type=2
name=autotrade #258896137 -> #258896230, WINM23
hidden=1
descr=117805 -> 117880
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686562152
date2=1686562229
value1=117805.000000
value2=117880.000000
</object>

<object>
type=2
name=autotrade #258896230 -> #258896504, WINM23
hidden=1
descr=117880 -> 117960
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686562229
date2=1686562459
value1=117880.000000
value2=117960.000000
</object>

<object>
type=2
name=autotrade #258896504 -> #258896884, profit 97.50, WINM23
hidden=1
descr=117960 -> 117850
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686562459
date2=1686562934
value1=117960.000000
value2=117850.000000
</object>

<object>
type=2
name=autotrade #258897412 -> #258897489, profit 45.44, WINM23
hidden=1
descr=117662.1 -> 117655
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686563400
date2=1686563510
value1=117662.100000
value2=117655.000000
</object>

<object>
type=2
name=autotrade #258898698 -> #258898768, profit 30.00, WINM23
hidden=1
descr=117435 -> 117440
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686564747
date2=1686564830
value1=117435.000000
value2=117440.000000
</object>

<object>
type=2
name=autotrade #258900737 -> #258900943, WINM23
hidden=1
descr=117010 -> 116900
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686566216
date2=1686566299
value1=117010.000000
value2=116900.000000
</object>

<object>
type=2
name=autotrade #258900943 -> #258901040, profit 210.00, WINM23
hidden=1
descr=116900 -> 116850
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686566299
date2=1686566395
value1=116900.000000
value2=116850.000000
</object>

<object>
type=2
name=autotrade #258901879 -> #258902046, WINM23
hidden=1
descr=117055 -> 117210
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686567186
date2=1686567285
value1=117055.000000
value2=117210.000000
</object>

<object>
type=2
name=autotrade #258902046 -> #258902126, profit 304.00, WINM23
hidden=1
descr=117210 -> 117085
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686567285
date2=1686567346
value1=117210.000000
value2=117085.000000
</object>

<object>
type=2
name=autotrade #258902172 -> #258902257, TP, profit 172.37, WINM23
hidden=1
descr=117021.933 -> 116998.9
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686567362
date2=1686567412
value1=117021.933333
value2=116998.900000
</object>

<object>
type=2
name=autotrade #258902486 -> #258902576, profit 179.09, WINM23
hidden=1
descr=117177.983 -> 117152.15
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686567632
date2=1686567664
value1=117177.983333
value2=117152.150000
</object>

<object>
type=2
name=autotrade #258902825 -> #258902877, profit 75.20, WINM23
hidden=1
descr=117106.75 -> 117098.233
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686567857
date2=1686567889
value1=117106.750000
value2=117098.233333
</object>

<object>
type=2
name=autotrade #258903920 -> #258903988, TP, profit 96.00, WINM23
hidden=1
descr=117195 -> 117182.267
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686569761
date2=1686569807
value1=117195.000000
value2=117182.266667
</object>

<object>
type=2
name=autotrade #258905055 -> #258905125, profit 108.69, WINM23
hidden=1
descr=117506.983 -> 117492.117
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686570723
date2=1686570734
value1=117506.983333
value2=117492.116667
</object>

<object>
type=2
name=autotrade #258905413 -> #258905731, TP, profit 218.99, WINM23
hidden=1
descr=117564.217 -> 117532.717
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686571190
date2=1686571444
value1=117564.216667
value2=117532.716667
</object>

<object>
type=2
name=autotrade #258906876 -> #258906925, TP, profit 332.91, WINM23
hidden=1
descr=117807.017 -> 117755.033
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686572375
date2=1686572393
value1=117807.016667
value2=117755.033333
</object>

<object>
type=2
name=autotrade #258907129 -> #258907250, WINM23
hidden=1
descr=117692.317 -> 117790
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686572762
date2=1686572840
value1=117692.316667
value2=117790.000000
</object>

<object>
type=2
name=autotrade #258907250 -> #258907688, TP, profit 299.12, WINM23
hidden=1
descr=117790 -> 117671.188
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686572840
date2=1686573405
value1=117790.000000
value2=117671.187500
</object>

<object>
type=2
name=autotrade #258919973 -> #258920001, profit 10.00, WINM23
hidden=1
descr=117980 -> 117955
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686650121
date2=1686650159
value1=117980.000000
value2=117955.000000
</object>

<object>
type=2
name=autotrade #258921507 -> #258921535, TP, profit 216.00, WINM23
hidden=1
descr=117880 -> 117850
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686650972
date2=1686650989
value1=117880.000000
value2=117850.000000
</object>

<object>
type=2
name=autotrade #258921624 -> #258921662, profit 20.00, WINM23
hidden=1
descr=117920 -> 117870
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686651016
date2=1686651062
value1=117920.000000
value2=117870.000000
</object>

<object>
type=2
name=autotrade #258921662 -> #258921711, profit 128.00, WINM23
hidden=1
descr=117870 -> 117840
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686651062
date2=1686651149
value1=117870.000000
value2=117840.000000
</object>

<object>
type=2
name=autotrade #258922156 -> #258922273, profit 180.00, WINM23
hidden=1
descr=117775 -> 117750
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686651656
date2=1686651729
value1=117775.000000
value2=117750.000000
</object>

<object>
type=2
name=autotrade #258922826 -> #258922884, TP, profit 242.06, WINM23
hidden=1
descr=117733.225 -> 117698.85
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686652222
date2=1686652251
value1=117733.225000
value2=117698.850000
</object>

<object>
type=2
name=autotrade #258923433 -> #258923468, profit 167.94, WINM23
hidden=1
descr=117793.325 -> 117771.6
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686652655
date2=1686652671
value1=117793.325000
value2=117771.600000
</object>

<object>
type=2
name=autotrade #258923593 -> #258923720, profit 262.92, WINM23
hidden=1
descr=117666.517 -> 117630.5
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686652700
date2=1686652708
value1=117666.516667
value2=117630.500000
</object>

<object>
type=2
name=autotrade #258923864 -> #258923997, WINM23
hidden=1
descr=117702.15 -> 117780
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686652778
date2=1686652848
value1=117702.150000
value2=117780.000000
</object>

<object>
type=2
name=autotrade #258923997 -> #258924685, profit 56.61, WINM23
hidden=1
descr=117780 -> 117667.813
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686652848
date2=1686653284
value1=117780.000000
value2=117667.812500
</object>

<object>
type=2
name=autotrade #258924807 -> #258924910, WINM23
hidden=1
descr=117620 -> 117700
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653308
date2=1686653377
value1=117620.000000
value2=117700.000000
</object>

<object>
type=2
name=autotrade #258924910 -> #258925001, profit 192.00, WINM23
hidden=1
descr=117700 -> 117620
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653377
date2=1686653466
value1=117700.000000
value2=117620.000000
</object>

<object>
type=2
name=autotrade #258925263 -> #258925290, profit 31.68, WINM23
hidden=1
descr=117814.4 -> 117812.267
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653703
date2=1686653716
value1=117814.400000
value2=117812.266667
</object>

<object>
type=2
name=autotrade #258925324 -> #258925351, profit 144.00, WINM23
hidden=1
descr=117805 -> 117785
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653731
date2=1686653749
value1=117805.000000
value2=117785.000000
</object>

<object>
type=2
name=autotrade #258925383 -> #258925422, TP, profit 103.86, WINM23
hidden=1
descr=117779.425 -> 117765.625
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653770
date2=1686653844
value1=117779.425000
value2=117765.625000
</object>

<object>
type=2
name=autotrade #258925522 -> #258925564, profit 144.00, WINM23
hidden=1
descr=117655 -> 117637.9
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653901
date2=1686653907
value1=117655.000000
value2=117637.900000
</object>

<object>
type=2
name=autotrade #258925712 -> #258925826, profit 36.00, WINM23
hidden=1
descr=117540 -> 117535
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653934
date2=1686653940
value1=117540.000000
value2=117535.000000
</object>

<object>
type=2
name=autotrade #258925909 -> #258926010, TP, profit 299.83, WINM23
hidden=1
descr=117502.833 -> 117460
color=1918177
style=2
selectable=0
ray1=0
ray2=0
date1=1686653949
date2=1686653988
value1=117502.833333
value2=117460.000000
</object>

<object>
type=2
name=autotrade #258938478 -> #258938563, WINM23
hidden=1
descr=116737.05 -> 116700
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686672080
date2=1686672167
value1=116737.050000
value2=116700.000000
</object>

<object>
type=2
name=autotrade #258938563 -> #258938893, WINM23
hidden=1
descr=116700 -> 116650
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686672167
date2=1686672926
value1=116700.000000
value2=116650.000000
</object>

<object>
type=2
name=autotrade #258938893 -> #258939141, profit 91.94, WINM23
hidden=1
descr=116650 -> 116719.7
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686672926
date2=1686673476
value1=116650.000000
value2=116719.700000
</object>

<object>
type=2
name=autotrade #258939262 -> #258939333, WINM23
hidden=1
descr=116725.417 -> 116680
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686673519
date2=1686673643
value1=116725.416667
value2=116680.000000
</object>

<object>
type=2
name=autotrade #258939333 -> #258939398, WINM23
hidden=1
descr=116680 -> 116670
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686673643
date2=1686673755
value1=116680.000000
value2=116670.000000
</object>

<object>
type=2
name=autotrade #258939398 -> #258939446, TP, profit 142.20, WINM23
hidden=1
descr=116670 -> 116722.36
color=11296515
style=2
selectable=0
ray1=0
ray2=0
date1=1686673755
date2=1686673836
value1=116670.000000
value2=116722.360000
</object>

<object>
type=2
name=2023.02.13 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1676280120
date2=1677143700
value1=111295.000000
value2=111295.000000
</object>

<object>
type=2
name=2023.02.14 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1676366280
date2=1677149100
value1=111410.000000
value2=111410.000000
</object>

<object>
type=2
name=2023.02.15 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1676452380
date2=1677070860
value1=111700.000000
value2=111700.000000
</object>

<object>
type=2
name=2023.02.16 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1676538360
date2=1685699880
value1=112850.000000
value2=112850.000000
</object>

<object>
type=2
name=2023.02.17 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1676624400
date2=1685700120
value1=113010.000000
value2=113010.000000
</object>

<object>
type=2
name=2023.02.22 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677070800
date2=1677236880
value1=110570.000000
value2=110570.000000
</object>

<object>
type=2
name=2023.02.23 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677142860
date2=1684845840
value1=112125.000000
value2=112125.000000
</object>

<object>
type=2
name=2023.02.24 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677229260
date2=1677506040
value1=109340.000000
value2=109340.000000
</object>

<object>
type=2
name=2023.02.27 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677488400
date2=1677577260
value1=109300.000000
value2=109300.000000
</object>

<object>
type=2
name=2023.02.28 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677575100
date2=1678291020
value1=109000.000000
value2=109000.000000
</object>

<object>
type=2
name=2023.03.01 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677661380
date2=1677857520
value1=106990.000000
value2=106990.000000
</object>

<object>
type=2
name=2023.03.02 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677747660
date2=1678126260
value1=107970.000000
value2=107970.000000
</object>

<object>
type=2
name=2023.03.03 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1677834240
date2=1678205760
value1=107105.000000
value2=107105.000000
</object>

<object>
type=2
name=2023.03.06 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678093200
date2=1678193400
value1=106970.000000
value2=106970.000000
</object>

<object>
type=2
name=2023.03.07 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678180440
date2=1678444200
value1=107345.000000
value2=107345.000000
</object>

<object>
type=2
name=2023.03.08 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678266120
date2=1681224060
value1=108515.000000
value2=108515.000000
</object>

<object>
type=2
name=2023.03.09 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678352400
date2=1678455240
value1=107850.000000
value2=107850.000000
</object>

<object>
type=2
name=2023.03.10 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678438860
date2=1678708080
value1=106525.000000
value2=106525.000000
</object>

<object>
type=2
name=2023.03.13 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678698000
date2=1678786200
value1=105795.000000
value2=105795.000000
</object>

<object>
type=2
name=2023.03.14 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678784520
date2=1678963080
value1=105860.000000
value2=105860.000000
</object>

<object>
type=2
name=2023.03.15 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678870800
date2=1679327100
value1=103720.000000
value2=103720.000000
</object>

<object>
type=2
name=2023.03.16 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1678957200
date2=1680167100
value1=105765.000000
value2=105765.000000
</object>

<object>
type=2
name=2023.03.17 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679043660
date2=1680264960
value1=104790.000000
value2=104790.000000
</object>

<object>
type=2
name=2023.03.20 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679302860
date2=1679397720
value1=103620.000000
value2=103620.000000
</object>

<object>
type=2
name=2023.03.21 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679389200
date2=1679499660
value1=103810.000000
value2=103810.000000
</object>

<object>
type=2
name=2023.03.22 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679475660
date2=1679566380
value1=103370.000000
value2=103370.000000
</object>

<object>
type=2
name=2023.03.23 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679562060
date2=1679648700
value1=99735.000000
value2=99735.000000
</object>

<object>
type=2
name=2023.03.24 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679648400
date2=1686675219
value1=101390.000000
value2=101390.000000
</object>

<object>
type=101
name=2023.03.24 00:00 POC L
hidden=1
descr=101390
color=42495
selectable=0
angle=0
date1=1686675519
value1=101390.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.03.27 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679907600
date2=1679994120
value1=102000.000000
value2=102000.000000
</object>

<object>
type=2
name=2023.03.28 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1679994000
date2=1680695160
value1=101990.000000
value2=101990.000000
</object>

<object>
type=2
name=2023.03.29 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680080400
date2=1680517260
value1=103450.000000
value2=103450.000000
</object>

<object>
type=2
name=2023.03.30 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680166800
date2=1680261360
value1=105630.000000
value2=105630.000000
</object>

<object>
type=2
name=2023.03.31 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680253260
date2=1681207860
value1=106060.000000
value2=106060.000000
</object>

<object>
type=2
name=2023.04.03 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680512400
date2=1680691860
value1=103300.000000
value2=103300.000000
</object>

<object>
type=2
name=2023.04.04 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680598800
date2=1680687000
value1=104185.000000
value2=104185.000000
</object>

<object>
type=2
name=2023.04.05 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680685200
date2=1680771600
value1=102885.000000
value2=102885.000000
</object>

<object>
type=2
name=2023.04.06 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1680771600
date2=1681118640
value1=102820.000000
value2=102820.000000
</object>

<object>
type=2
name=2023.04.10 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681117200
date2=1682521380
value1=103805.000000
value2=103805.000000
</object>

<object>
type=2
name=2023.04.11 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681203600
date2=1681290240
value1=108280.000000
value2=108280.000000
</object>

<object>
type=2
name=2023.04.12 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681290000
date2=1681376820
value1=109110.000000
value2=109110.000000
</object>

<object>
type=2
name=2023.04.13 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681376400
date2=1681463040
value1=108580.000000
value2=108580.000000
</object>

<object>
type=2
name=2023.04.14 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681462800
date2=1681723500
value1=108190.000000
value2=108190.000000
</object>

<object>
type=2
name=2023.04.17 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681722000
date2=1681812600
value1=107850.000000
value2=107850.000000
</object>

<object>
type=2
name=2023.04.18 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681808400
date2=1683553080
value1=108015.000000
value2=108015.000000
</object>

<object>
type=2
name=2023.04.19 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681894800
date2=1681982700
value1=106110.000000
value2=106110.000000
</object>

<object>
type=2
name=2023.04.20 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1681981200
date2=1682333880
value1=105930.000000
value2=105930.000000
</object>

<object>
type=2
name=2023.04.24 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1682326800
date2=1682499600
value1=105670.000000
value2=105670.000000
</object>

<object>
type=2
name=2023.04.25 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1682413200
date2=1682506440
value1=104465.000000
value2=104465.000000
</object>

<object>
type=2
name=2023.04.26 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1682499600
date2=1682586000
value1=104415.000000
value2=104415.000000
</object>

<object>
type=2
name=2023.04.27 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1682586000
date2=1682672400
value1=104270.000000
value2=104270.000000
</object>

<object>
type=2
name=2023.04.28 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1682672400
date2=1683022080
value1=105475.000000
value2=105475.000000
</object>

<object>
type=2
name=2023.05.02 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683018000
date2=1683104400
value1=103305.000000
value2=103305.000000
</object>

<object>
type=2
name=2023.05.03 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683104400
date2=1683190800
value1=103165.000000
value2=103165.000000
</object>

<object>
type=2
name=2023.05.04 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683190800
date2=1686675219
value1=103580.000000
value2=103580.000000
</object>

<object>
type=101
name=2023.05.04 00:00 POC L
hidden=1
descr=103580
color=42495
selectable=0
angle=0
date1=1686675519
value1=103580.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.05.05 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683277200
date2=1686675219
value1=104165.000000
value2=104165.000000
</object>

<object>
type=101
name=2023.05.05 00:00 POC L
hidden=1
descr=104165
color=42495
selectable=0
angle=0
date1=1686675519
value1=104165.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.05.08 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683536400
date2=1683628440
value1=107370.000000
value2=107370.000000
</object>

<object>
type=2
name=2023.05.09 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683622800
date2=1683711000
value1=108545.000000
value2=108545.000000
</object>

<object>
type=2
name=2023.05.10 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683709200
date2=1683795600
value1=108355.000000
value2=108355.000000
</object>

<object>
type=2
name=2023.05.11 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683795600
date2=1686675219
value1=108315.000000
value2=108315.000000
</object>

<object>
type=101
name=2023.05.11 00:00 POC L
hidden=1
descr=108315
color=42495
selectable=0
angle=0
date1=1686675519
value1=108315.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.05.12 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1683882000
date2=1684147380
value1=109470.000000
value2=109470.000000
</object>

<object>
type=2
name=2023.05.15 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684227600
value1=109790.000000
value2=109790.000000
</object>

<object>
type=2
name=2023.05.16 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684317780
value1=110160.000000
value2=110160.000000
</object>

<object>
type=2
name=2023.05.17 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684400460
value1=110355.000000
value2=110355.000000
</object>

<object>
type=2
name=2023.05.18 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684922280
value1=110275.000000
value2=110275.000000
</object>

<object>
type=2
name=2023.05.19 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684840680
value1=111570.000000
value2=111570.000000
</object>

<object>
type=2
name=2023.05.23 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684918860
value1=110825.000000
value2=110825.000000
</object>

<object>
type=2
name=2023.05.24 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1685444340
value1=109985.000000
value2=109985.000000
</object>

<object>
type=2
name=2023.05.25 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685103660
value1=110875.000000
value2=110875.000000
</object>

<object>
type=2
name=2023.05.26 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685350800
value1=111720.000000
value2=111720.000000
</object>

<object>
type=2
name=2023.05.29 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110650.000000
value2=110650.000000
</object>

<object>
type=2
name=2023.05.29 00:00 12
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110662.000000
value2=110662.000000
</object>

<object>
type=2
name=2023.05.29 00:00 24
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110674.000000
value2=110674.000000
</object>

<object>
type=2
name=2023.05.29 00:00 36
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110686.000000
value2=110686.000000
</object>

<object>
type=2
name=2023.05.29 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110698.000000
value2=110698.000000
</object>

<object>
type=2
name=2023.05.29 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110710.000000
value2=110710.000000
</object>

<object>
type=2
name=2023.05.29 00:00 72
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=110722.000000
value2=110722.000000
</object>

<object>
type=2
name=2023.05.29 00:00 84
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351432
value1=110734.000000
value2=110734.000000
</object>

<object>
type=2
name=2023.05.29 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685352064
value1=110746.000000
value2=110746.000000
</object>

<object>
type=2
name=2023.05.29 00:00 108
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353012
value1=110758.000000
value2=110758.000000
</object>

<object>
type=2
name=2023.05.29 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685354592
value1=110770.000000
value2=110770.000000
</object>

<object>
type=2
name=2023.05.29 00:00 132
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685356488
value1=110782.000000
value2=110782.000000
</object>

<object>
type=2
name=2023.05.29 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357120
value1=110794.000000
value2=110794.000000
</object>

<object>
type=2
name=2023.05.29 00:00 156
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359016
value1=110806.000000
value2=110806.000000
</object>

<object>
type=2
name=2023.05.29 00:00 168
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360596
value1=110818.000000
value2=110818.000000
</object>

<object>
type=2
name=2023.05.29 00:00 180
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360596
value1=110830.000000
value2=110830.000000
</object>

<object>
type=2
name=2023.05.29 00:00 192
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685361544
value1=110842.000000
value2=110842.000000
</object>

<object>
type=2
name=2023.05.29 00:00 204
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685363440
value1=110854.000000
value2=110854.000000
</object>

<object>
type=2
name=2023.05.29 00:00 216
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685367548
value1=110866.000000
value2=110866.000000
</object>

<object>
type=2
name=2023.05.29 00:00 228
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685369760
value1=110878.000000
value2=110878.000000
</object>

<object>
type=2
name=2023.05.29 00:00 240
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685373236
value1=110890.000000
value2=110890.000000
</object>

<object>
type=2
name=2023.05.29 00:00 252
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685371972
value1=110902.000000
value2=110902.000000
</object>

<object>
type=2
name=2023.05.29 00:00 264
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685372604
value1=110914.000000
value2=110914.000000
</object>

<object>
type=2
name=2023.05.29 00:00 276
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685372604
value1=110926.000000
value2=110926.000000
</object>

<object>
type=2
name=2023.05.29 00:00 288
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685371024
value1=110938.000000
value2=110938.000000
</object>

<object>
type=2
name=2023.05.29 00:00 300
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685375132
value1=110950.000000
value2=110950.000000
</object>

<object>
type=2
name=2023.05.29 00:00 312
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685374816
value1=110962.000000
value2=110962.000000
</object>

<object>
type=2
name=2023.05.29 00:00 324
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685379240
value1=110974.000000
value2=110974.000000
</object>

<object>
type=2
name=2023.05.29 00:00 336
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685377660
value1=110986.000000
value2=110986.000000
</object>

<object>
type=2
name=2023.05.29 00:00 348
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685377660
value1=110998.000000
value2=110998.000000
</object>

<object>
type=2
name=2023.05.29 00:00 360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685378292
value1=111010.000000
value2=111010.000000
</object>

<object>
type=2
name=2023.05.29 00:00 372
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685376396
value1=111022.000000
value2=111022.000000
</object>

<object>
type=2
name=2023.05.29 00:00 384
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685374184
value1=111034.000000
value2=111034.000000
</object>

<object>
type=2
name=2023.05.29 00:00 396
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685372288
value1=111046.000000
value2=111046.000000
</object>

<object>
type=2
name=2023.05.29 00:00 408
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685370708
value1=111058.000000
value2=111058.000000
</object>

<object>
type=2
name=2023.05.29 00:00 420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685373552
value1=111070.000000
value2=111070.000000
</object>

<object>
type=2
name=2023.05.29 00:00 432
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685375764
value1=111082.000000
value2=111082.000000
</object>

<object>
type=2
name=2023.05.29 00:00 444
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685376396
value1=111094.000000
value2=111094.000000
</object>

<object>
type=2
name=2023.05.29 00:00 456
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685377660
value1=111106.000000
value2=111106.000000
</object>

<object>
type=2
name=2023.05.29 00:00 468
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685375448
value1=111118.000000
value2=111118.000000
</object>

<object>
type=2
name=2023.05.29 00:00 480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685372920
value1=111130.000000
value2=111130.000000
</object>

<object>
type=2
name=2023.05.29 00:00 492
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685367232
value1=111142.000000
value2=111142.000000
</object>

<object>
type=2
name=2023.05.29 00:00 504
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685365652
value1=111154.000000
value2=111154.000000
</object>

<object>
type=2
name=2023.05.29 00:00 516
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685364704
value1=111166.000000
value2=111166.000000
</object>

<object>
type=2
name=2023.05.29 00:00 528
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685364388
value1=111178.000000
value2=111178.000000
</object>

<object>
type=2
name=2023.05.29 00:00 540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360912
value1=111190.000000
value2=111190.000000
</object>

<object>
type=2
name=2023.05.29 00:00 552
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359964
value1=111202.000000
value2=111202.000000
</object>

<object>
type=2
name=2023.05.29 00:00 564
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359016
value1=111214.000000
value2=111214.000000
</object>

<object>
type=2
name=2023.05.29 00:00 576
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685356488
value1=111226.000000
value2=111226.000000
</object>

<object>
type=2
name=2023.05.29 00:00 588
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685356804
value1=111238.000000
value2=111238.000000
</object>

<object>
type=2
name=2023.05.29 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357436
value1=111250.000000
value2=111250.000000
</object>

<object>
type=2
name=2023.05.29 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357752
value1=111262.000000
value2=111262.000000
</object>

<object>
type=2
name=2023.05.29 00:00 624
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358068
value1=111274.000000
value2=111274.000000
</object>

<object>
type=2
name=2023.05.29 00:00 636
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359964
value1=111286.000000
value2=111286.000000
</object>

<object>
type=2
name=2023.05.29 00:00 648
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360596
value1=111298.000000
value2=111298.000000
</object>

<object>
type=2
name=2023.05.29 00:00 660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358700
value1=111310.000000
value2=111310.000000
</object>

<object>
type=2
name=2023.05.29 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358384
value1=111322.000000
value2=111322.000000
</object>

<object>
type=2
name=2023.05.29 00:00 684
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357120
value1=111334.000000
value2=111334.000000
</object>

<object>
type=2
name=2023.05.29 00:00 696
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685354592
value1=111346.000000
value2=111346.000000
</object>

<object>
type=2
name=2023.05.29 00:00 708
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685354592
value1=111358.000000
value2=111358.000000
</object>

<object>
type=2
name=2023.05.29 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353644
value1=111370.000000
value2=111370.000000
</object>

<object>
type=2
name=2023.05.29 00:00 732
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353012
value1=111382.000000
value2=111382.000000
</object>

<object>
type=2
name=2023.05.29 00:00 744
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353644
value1=111394.000000
value2=111394.000000
</object>

<object>
type=2
name=2023.05.29 00:00 756
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685354276
value1=111406.000000
value2=111406.000000
</object>

<object>
type=2
name=2023.05.29 00:00 768
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685355224
value1=111418.000000
value2=111418.000000
</object>

<object>
type=2
name=2023.05.29 00:00 780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358700
value1=111430.000000
value2=111430.000000
</object>

<object>
type=2
name=2023.05.29 00:00 792
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359648
value1=111442.000000
value2=111442.000000
</object>

<object>
type=2
name=2023.05.29 00:00 804
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359332
value1=111454.000000
value2=111454.000000
</object>

<object>
type=2
name=2023.05.29 00:00 816
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359648
value1=111466.000000
value2=111466.000000
</object>

<object>
type=2
name=2023.05.29 00:00 828
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360596
value1=111478.000000
value2=111478.000000
</object>

<object>
type=2
name=2023.05.29 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360912
value1=111490.000000
value2=111490.000000
</object>

<object>
type=2
name=2023.05.29 00:00 852
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685361544
value1=111502.000000
value2=111502.000000
</object>

<object>
type=2
name=2023.05.29 00:00 864
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685361544
value1=111514.000000
value2=111514.000000
</object>

<object>
type=2
name=2023.05.29 00:00 876
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685361860
value1=111526.000000
value2=111526.000000
</object>

<object>
type=2
name=2023.05.29 00:00 888
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685360596
value1=111538.000000
value2=111538.000000
</object>

<object>
type=2
name=2023.05.29 00:00 900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359332
value1=111550.000000
value2=111550.000000
</object>

<object>
type=2
name=2023.05.29 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685359964
value1=111562.000000
value2=111562.000000
</object>

<object>
type=2
name=2023.05.29 00:00 924
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358384
value1=111574.000000
value2=111574.000000
</object>

<object>
type=2
name=2023.05.29 00:00 936
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358700
value1=111586.000000
value2=111586.000000
</object>

<object>
type=2
name=2023.05.29 00:00 948
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358068
value1=111598.000000
value2=111598.000000
</object>

<object>
type=2
name=2023.05.29 00:00 960
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685358384
value1=111610.000000
value2=111610.000000
</object>

<object>
type=2
name=2023.05.29 00:00 972
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357752
value1=111622.000000
value2=111622.000000
</object>

<object>
type=2
name=2023.05.29 00:00 984
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685357436
value1=111634.000000
value2=111634.000000
</object>

<object>
type=2
name=2023.05.29 00:00 996
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685356172
value1=111646.000000
value2=111646.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1008
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685355856
value1=111658.000000
value2=111658.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1020
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685354908
value1=111670.000000
value2=111670.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1032
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353328
value1=111682.000000
value2=111682.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1044
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353012
value1=111694.000000
value2=111694.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1056
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353012
value1=111706.000000
value2=111706.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1068
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685353012
value1=111718.000000
value2=111718.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1080
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685352696
value1=111730.000000
value2=111730.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1092
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685352064
value1=111742.000000
value2=111742.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1104
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685352064
value1=111754.000000
value2=111754.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1116
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351432
value1=111766.000000
value2=111766.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351432
value1=111778.000000
value2=111778.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111790.000000
value2=111790.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1152
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111802.000000
value2=111802.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1164
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111814.000000
value2=111814.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1176
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111826.000000
value2=111826.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1188
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111838.000000
value2=111838.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111850.000000
value2=111850.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1212
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111862.000000
value2=111862.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111874.000000
value2=111874.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1236
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111886.000000
value2=111886.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1248
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111898.000000
value2=111898.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1260
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111910.000000
value2=111910.000000
</object>

<object>
type=2
name=2023.05.29 00:00 1272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685351116
value1=111922.000000
value2=111922.000000
</object>

<object>
type=2
name=2023.05.29 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685350800
date2=1685442000
value1=110970.000000
value2=110970.000000
</object>

<object>
type=2
name=2023.05.30 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685437682
value1=109055.000000
value2=109055.000000
</object>

<object>
type=2
name=2023.05.30 00:00 29
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=109084.000000
value2=109084.000000
</object>

<object>
type=2
name=2023.05.30 00:00 58
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443948
value1=109113.000000
value2=109113.000000
</object>

<object>
type=2
name=2023.05.30 00:00 87
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685446358
value1=109142.000000
value2=109142.000000
</object>

<object>
type=2
name=2023.05.30 00:00 116
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685446358
value1=109171.000000
value2=109171.000000
</object>

<object>
type=2
name=2023.05.30 00:00 145
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685453106
value1=109200.000000
value2=109200.000000
</object>

<object>
type=2
name=2023.05.30 00:00 174
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685459372
value1=109229.000000
value2=109229.000000
</object>

<object>
type=2
name=2023.05.30 00:00 203
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685464192
value1=109258.000000
value2=109258.000000
</object>

<object>
type=2
name=2023.05.30 00:00 232
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685454552
value1=109287.000000
value2=109287.000000
</object>

<object>
type=2
name=2023.05.30 00:00 261
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685452624
value1=109316.000000
value2=109316.000000
</object>

<object>
type=2
name=2023.05.30 00:00 290
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685457926
value1=109345.000000
value2=109345.000000
</object>

<object>
type=2
name=2023.05.30 00:00 319
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685457444
value1=109374.000000
value2=109374.000000
</object>

<object>
type=2
name=2023.05.30 00:00 348
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685459854
value1=109403.000000
value2=109403.000000
</object>

<object>
type=2
name=2023.05.30 00:00 377
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685461300
value1=109432.000000
value2=109432.000000
</object>

<object>
type=2
name=2023.05.30 00:00 406
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685460818
value1=109461.000000
value2=109461.000000
</object>

<object>
type=2
name=2023.05.30 00:00 435
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685458408
value1=109490.000000
value2=109490.000000
</object>

<object>
type=2
name=2023.05.30 00:00 464
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685451178
value1=109519.000000
value2=109519.000000
</object>

<object>
type=2
name=2023.05.30 00:00 493
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685448286
value1=109548.000000
value2=109548.000000
</object>

<object>
type=2
name=2023.05.30 00:00 522
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685456962
value1=109577.000000
value2=109577.000000
</object>

<object>
type=2
name=2023.05.30 00:00 551
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685456480
value1=109606.000000
value2=109606.000000
</object>

<object>
type=2
name=2023.05.30 00:00 580
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685457444
value1=109635.000000
value2=109635.000000
</object>

<object>
type=2
name=2023.05.30 00:00 609
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685453106
value1=109664.000000
value2=109664.000000
</object>

<object>
type=2
name=2023.05.30 00:00 638
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685448286
value1=109693.000000
value2=109693.000000
</object>

<object>
type=2
name=2023.05.30 00:00 667
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=109722.000000
value2=109722.000000
</object>

<object>
type=2
name=2023.05.30 00:00 696
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442502
value1=109751.000000
value2=109751.000000
</object>

<object>
type=2
name=2023.05.30 00:00 725
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444912
value1=109780.000000
value2=109780.000000
</object>

<object>
type=2
name=2023.05.30 00:00 754
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685446840
value1=109809.000000
value2=109809.000000
</object>

<object>
type=2
name=2023.05.30 00:00 783
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685445876
value1=109838.000000
value2=109838.000000
</object>

<object>
type=2
name=2023.05.30 00:00 812
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685446358
value1=109867.000000
value2=109867.000000
</object>

<object>
type=2
name=2023.05.30 00:00 841
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685445394
value1=109896.000000
value2=109896.000000
</object>

<object>
type=2
name=2023.05.30 00:00 870
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442502
value1=109925.000000
value2=109925.000000
</object>

<object>
type=2
name=2023.05.30 00:00 899
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443466
value1=109954.000000
value2=109954.000000
</object>

<object>
type=2
name=2023.05.30 00:00 928
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441056
value1=109983.000000
value2=109983.000000
</object>

<object>
type=2
name=2023.05.30 00:00 957
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=110012.000000
value2=110012.000000
</object>

<object>
type=2
name=2023.05.30 00:00 986
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=110041.000000
value2=110041.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1015
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443466
value1=110070.000000
value2=110070.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1044
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=110099.000000
value2=110099.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1073
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=110128.000000
value2=110128.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1102
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442984
value1=110157.000000
value2=110157.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1131
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441538
value1=110186.000000
value2=110186.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1160
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110215.000000
value2=110215.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1189
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=110244.000000
value2=110244.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1218
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440574
value1=110273.000000
value2=110273.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1247
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441538
value1=110302.000000
value2=110302.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1276
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443948
value1=110331.000000
value2=110331.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1305
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=110360.000000
value2=110360.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1334
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=110389.000000
value2=110389.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1363
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=110418.000000
value2=110418.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1392
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443948
value1=110447.000000
value2=110447.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1421
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443466
value1=110476.000000
value2=110476.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1450
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=110505.000000
value2=110505.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1479
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=110534.000000
value2=110534.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1508
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110563.000000
value2=110563.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1537
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110592.000000
value2=110592.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1566
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441538
value1=110621.000000
value2=110621.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1595
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441538
value1=110650.000000
value2=110650.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1624
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440574
value1=110679.000000
value2=110679.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1653
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440574
value1=110708.000000
value2=110708.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1682
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440574
value1=110737.000000
value2=110737.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1711
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110766.000000
value2=110766.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1740
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=110795.000000
value2=110795.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1769
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=110824.000000
value2=110824.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1798
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=110853.000000
value2=110853.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1827
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110882.000000
value2=110882.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1856
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=110911.000000
value2=110911.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1885
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=110940.000000
value2=110940.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1914
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=110969.000000
value2=110969.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1943
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=110998.000000
value2=110998.000000
</object>

<object>
type=2
name=2023.05.30 00:00 1972
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=111027.000000
value2=111027.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2001
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=111056.000000
value2=111056.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2030
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438164
value1=111085.000000
value2=111085.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2059
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=111114.000000
value2=111114.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=111143.000000
value2=111143.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2117
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=111172.000000
value2=111172.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2146
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=111201.000000
value2=111201.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2175
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=111230.000000
value2=111230.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2204
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=111259.000000
value2=111259.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2233
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685444430
value1=111288.000000
value2=111288.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2262
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685450696
value1=111317.000000
value2=111317.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2291
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685448768
value1=111346.000000
value2=111346.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685445394
value1=111375.000000
value2=111375.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2349
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443948
value1=111404.000000
value2=111404.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2378
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442984
value1=111433.000000
value2=111433.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2407
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=111462.000000
value2=111462.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2436
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=111491.000000
value2=111491.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2465
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=111520.000000
value2=111520.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2494
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=111549.000000
value2=111549.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2523
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685441056
value1=111578.000000
value2=111578.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2552
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=111607.000000
value2=111607.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2581
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443948
value1=111636.000000
value2=111636.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2610
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685443466
value1=111665.000000
value2=111665.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2639
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442502
value1=111694.000000
value2=111694.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2668
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442020
value1=111723.000000
value2=111723.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2697
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685442984
value1=111752.000000
value2=111752.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2726
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=111781.000000
value2=111781.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2755
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440574
value1=111810.000000
value2=111810.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2784
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685440092
value1=111839.000000
value2=111839.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2813
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439610
value1=111868.000000
value2=111868.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2842
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=111897.000000
value2=111897.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2871
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685439128
value1=111926.000000
value2=111926.000000
</object>

<object>
type=2
name=2023.05.30 00:00 2900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685438646
value1=111955.000000
value2=111955.000000
</object>

<object>
type=2
name=2023.05.30 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685437200
date2=1685524440
value1=109235.000000
value2=109235.000000
</object>

<object>
type=2
name=2023.05.31 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=108675.000000
value2=108675.000000
</object>

<object>
type=2
name=2023.05.31 00:00 9
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=108684.000000
value2=108684.000000
</object>

<object>
type=2
name=2023.05.31 00:00 18
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=108693.000000
value2=108693.000000
</object>

<object>
type=2
name=2023.05.31 00:00 27
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524136
value1=108702.000000
value2=108702.000000
</object>

<object>
type=2
name=2023.05.31 00:00 36
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524136
value1=108711.000000
value2=108711.000000
</object>

<object>
type=2
name=2023.05.31 00:00 45
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524136
value1=108720.000000
value2=108720.000000
</object>

<object>
type=2
name=2023.05.31 00:00 54
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524136
value1=108729.000000
value2=108729.000000
</object>

<object>
type=2
name=2023.05.31 00:00 63
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524136
value1=108738.000000
value2=108738.000000
</object>

<object>
type=2
name=2023.05.31 00:00 72
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524672
value1=108747.000000
value2=108747.000000
</object>

<object>
type=2
name=2023.05.31 00:00 81
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685525208
value1=108756.000000
value2=108756.000000
</object>

<object>
type=2
name=2023.05.31 00:00 90
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685525744
value1=108765.000000
value2=108765.000000
</object>

<object>
type=2
name=2023.05.31 00:00 99
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685526280
value1=108774.000000
value2=108774.000000
</object>

<object>
type=2
name=2023.05.31 00:00 108
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527352
value1=108783.000000
value2=108783.000000
</object>

<object>
type=2
name=2023.05.31 00:00 117
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528156
value1=108792.000000
value2=108792.000000
</object>

<object>
type=2
name=2023.05.31 00:00 126
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528960
value1=108801.000000
value2=108801.000000
</object>

<object>
type=2
name=2023.05.31 00:00 135
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685529764
value1=108810.000000
value2=108810.000000
</object>

<object>
type=2
name=2023.05.31 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685530300
value1=108819.000000
value2=108819.000000
</object>

<object>
type=2
name=2023.05.31 00:00 153
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685532176
value1=108828.000000
value2=108828.000000
</object>

<object>
type=2
name=2023.05.31 00:00 162
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685532444
value1=108837.000000
value2=108837.000000
</object>

<object>
type=2
name=2023.05.31 00:00 171
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685533516
value1=108846.000000
value2=108846.000000
</object>

<object>
type=2
name=2023.05.31 00:00 180
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685535124
value1=108855.000000
value2=108855.000000
</object>

<object>
type=2
name=2023.05.31 00:00 189
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685535660
value1=108864.000000
value2=108864.000000
</object>

<object>
type=2
name=2023.05.31 00:00 198
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685537268
value1=108873.000000
value2=108873.000000
</object>

<object>
type=2
name=2023.05.31 00:00 207
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685537000
value1=108882.000000
value2=108882.000000
</object>

<object>
type=2
name=2023.05.31 00:00 216
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685538608
value1=108891.000000
value2=108891.000000
</object>

<object>
type=2
name=2023.05.31 00:00 225
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685539144
value1=108900.000000
value2=108900.000000
</object>

<object>
type=2
name=2023.05.31 00:00 234
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541288
value1=108909.000000
value2=108909.000000
</object>

<object>
type=2
name=2023.05.31 00:00 243
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685540752
value1=108918.000000
value2=108918.000000
</object>

<object>
type=2
name=2023.05.31 00:00 252
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685540484
value1=108927.000000
value2=108927.000000
</object>

<object>
type=2
name=2023.05.31 00:00 261
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685543432
value1=108936.000000
value2=108936.000000
</object>

<object>
type=2
name=2023.05.31 00:00 270
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542896
value1=108945.000000
value2=108945.000000
</object>

<object>
type=2
name=2023.05.31 00:00 279
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685543700
value1=108954.000000
value2=108954.000000
</object>

<object>
type=2
name=2023.05.31 00:00 288
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685544772
value1=108963.000000
value2=108963.000000
</object>

<object>
type=2
name=2023.05.31 00:00 297
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685545844
value1=108972.000000
value2=108972.000000
</object>

<object>
type=2
name=2023.05.31 00:00 306
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685545040
value1=108981.000000
value2=108981.000000
</object>

<object>
type=2
name=2023.05.31 00:00 315
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546916
value1=108990.000000
value2=108990.000000
</object>

<object>
type=2
name=2023.05.31 00:00 324
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546380
value1=108999.000000
value2=108999.000000
</object>

<object>
type=2
name=2023.05.31 00:00 333
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685547184
value1=109008.000000
value2=109008.000000
</object>

<object>
type=2
name=2023.05.31 00:00 342
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546916
value1=109017.000000
value2=109017.000000
</object>

<object>
type=2
name=2023.05.31 00:00 351
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546648
value1=109026.000000
value2=109026.000000
</object>

<object>
type=2
name=2023.05.31 00:00 360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546648
value1=109035.000000
value2=109035.000000
</object>

<object>
type=2
name=2023.05.31 00:00 369
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685547988
value1=109044.000000
value2=109044.000000
</object>

<object>
type=2
name=2023.05.31 00:00 378
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685547988
value1=109053.000000
value2=109053.000000
</object>

<object>
type=2
name=2023.05.31 00:00 387
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685547184
value1=109062.000000
value2=109062.000000
</object>

<object>
type=2
name=2023.05.31 00:00 396
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685548256
value1=109071.000000
value2=109071.000000
</object>

<object>
type=2
name=2023.05.31 00:00 405
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685549864
value1=109080.000000
value2=109080.000000
</object>

<object>
type=2
name=2023.05.31 00:00 414
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685550400
value1=109089.000000
value2=109089.000000
</object>

<object>
type=2
name=2023.05.31 00:00 423
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685550936
value1=109098.000000
value2=109098.000000
</object>

<object>
type=2
name=2023.05.31 00:00 432
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685552008
value1=109107.000000
value2=109107.000000
</object>

<object>
type=2
name=2023.05.31 00:00 441
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685548524
value1=109116.000000
value2=109116.000000
</object>

<object>
type=2
name=2023.05.31 00:00 450
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685547452
value1=109125.000000
value2=109125.000000
</object>

<object>
type=2
name=2023.05.31 00:00 459
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685548256
value1=109134.000000
value2=109134.000000
</object>

<object>
type=2
name=2023.05.31 00:00 468
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546916
value1=109143.000000
value2=109143.000000
</object>

<object>
type=2
name=2023.05.31 00:00 477
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685546380
value1=109152.000000
value2=109152.000000
</object>

<object>
type=2
name=2023.05.31 00:00 486
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685543968
value1=109161.000000
value2=109161.000000
</object>

<object>
type=2
name=2023.05.31 00:00 495
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542628
value1=109170.000000
value2=109170.000000
</object>

<object>
type=2
name=2023.05.31 00:00 504
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542092
value1=109179.000000
value2=109179.000000
</object>

<object>
type=2
name=2023.05.31 00:00 513
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542896
value1=109188.000000
value2=109188.000000
</object>

<object>
type=2
name=2023.05.31 00:00 522
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542896
value1=109197.000000
value2=109197.000000
</object>

<object>
type=2
name=2023.05.31 00:00 531
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541824
value1=109206.000000
value2=109206.000000
</object>

<object>
type=2
name=2023.05.31 00:00 540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685540484
value1=109215.000000
value2=109215.000000
</object>

<object>
type=2
name=2023.05.31 00:00 549
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541020
value1=109224.000000
value2=109224.000000
</object>

<object>
type=2
name=2023.05.31 00:00 558
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541824
value1=109233.000000
value2=109233.000000
</object>

<object>
type=2
name=2023.05.31 00:00 567
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542360
value1=109242.000000
value2=109242.000000
</object>

<object>
type=2
name=2023.05.31 00:00 576
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541556
value1=109251.000000
value2=109251.000000
</object>

<object>
type=2
name=2023.05.31 00:00 585
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541824
value1=109260.000000
value2=109260.000000
</object>

<object>
type=2
name=2023.05.31 00:00 594
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541288
value1=109269.000000
value2=109269.000000
</object>

<object>
type=2
name=2023.05.31 00:00 603
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542628
value1=109278.000000
value2=109278.000000
</object>

<object>
type=2
name=2023.05.31 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541556
value1=109287.000000
value2=109287.000000
</object>

<object>
type=2
name=2023.05.31 00:00 621
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685543432
value1=109296.000000
value2=109296.000000
</object>

<object>
type=2
name=2023.05.31 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685542360
value1=109305.000000
value2=109305.000000
</object>

<object>
type=2
name=2023.05.31 00:00 639
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685541288
value1=109314.000000
value2=109314.000000
</object>

<object>
type=2
name=2023.05.31 00:00 648
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685540752
value1=109323.000000
value2=109323.000000
</object>

<object>
type=2
name=2023.05.31 00:00 657
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685539144
value1=109332.000000
value2=109332.000000
</object>

<object>
type=2
name=2023.05.31 00:00 666
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685536732
value1=109341.000000
value2=109341.000000
</object>

<object>
type=2
name=2023.05.31 00:00 675
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685534588
value1=109350.000000
value2=109350.000000
</object>

<object>
type=2
name=2023.05.31 00:00 684
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685533784
value1=109359.000000
value2=109359.000000
</object>

<object>
type=2
name=2023.05.31 00:00 693
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685534588
value1=109368.000000
value2=109368.000000
</object>

<object>
type=2
name=2023.05.31 00:00 702
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685534588
value1=109377.000000
value2=109377.000000
</object>

<object>
type=2
name=2023.05.31 00:00 711
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685532712
value1=109386.000000
value2=109386.000000
</object>

<object>
type=2
name=2023.05.31 00:00 720
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685531908
value1=109395.000000
value2=109395.000000
</object>

<object>
type=2
name=2023.05.31 00:00 729
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685531104
value1=109404.000000
value2=109404.000000
</object>

<object>
type=2
name=2023.05.31 00:00 738
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685530568
value1=109413.000000
value2=109413.000000
</object>

<object>
type=2
name=2023.05.31 00:00 747
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528960
value1=109422.000000
value2=109422.000000
</object>

<object>
type=2
name=2023.05.31 00:00 756
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527620
value1=109431.000000
value2=109431.000000
</object>

<object>
type=2
name=2023.05.31 00:00 765
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527352
value1=109440.000000
value2=109440.000000
</object>

<object>
type=2
name=2023.05.31 00:00 774
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527084
value1=109449.000000
value2=109449.000000
</object>

<object>
type=2
name=2023.05.31 00:00 783
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527352
value1=109458.000000
value2=109458.000000
</object>

<object>
type=2
name=2023.05.31 00:00 792
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528156
value1=109467.000000
value2=109467.000000
</object>

<object>
type=2
name=2023.05.31 00:00 801
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528156
value1=109476.000000
value2=109476.000000
</object>

<object>
type=2
name=2023.05.31 00:00 810
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685528424
value1=109485.000000
value2=109485.000000
</object>

<object>
type=2
name=2023.05.31 00:00 819
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527888
value1=109494.000000
value2=109494.000000
</object>

<object>
type=2
name=2023.05.31 00:00 828
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527620
value1=109503.000000
value2=109503.000000
</object>

<object>
type=2
name=2023.05.31 00:00 837
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685527084
value1=109512.000000
value2=109512.000000
</object>

<object>
type=2
name=2023.05.31 00:00 846
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685526816
value1=109521.000000
value2=109521.000000
</object>

<object>
type=2
name=2023.05.31 00:00 855
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685526012
value1=109530.000000
value2=109530.000000
</object>

<object>
type=2
name=2023.05.31 00:00 864
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685525744
value1=109539.000000
value2=109539.000000
</object>

<object>
type=2
name=2023.05.31 00:00 873
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524940
value1=109548.000000
value2=109548.000000
</object>

<object>
type=2
name=2023.05.31 00:00 882
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524672
value1=109557.000000
value2=109557.000000
</object>

<object>
type=2
name=2023.05.31 00:00 891
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685524404
value1=109566.000000
value2=109566.000000
</object>

<object>
type=2
name=2023.05.31 00:00 900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109575.000000
value2=109575.000000
</object>

<object>
type=2
name=2023.05.31 00:00 909
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109584.000000
value2=109584.000000
</object>

<object>
type=2
name=2023.05.31 00:00 918
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109593.000000
value2=109593.000000
</object>

<object>
type=2
name=2023.05.31 00:00 927
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109602.000000
value2=109602.000000
</object>

<object>
type=2
name=2023.05.31 00:00 936
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109611.000000
value2=109611.000000
</object>

<object>
type=2
name=2023.05.31 00:00 945
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109620.000000
value2=109620.000000
</object>

<object>
type=2
name=2023.05.31 00:00 954
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109629.000000
value2=109629.000000
</object>

<object>
type=2
name=2023.05.31 00:00 963
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109638.000000
value2=109638.000000
</object>

<object>
type=2
name=2023.05.31 00:00 972
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109647.000000
value2=109647.000000
</object>

<object>
type=2
name=2023.05.31 00:00 981
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523868
value1=109656.000000
value2=109656.000000
</object>

<object>
type=2
name=2023.05.31 00:00 990
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685523600
value1=109665.000000
value2=109665.000000
</object>

<object>
type=2
name=2023.05.31 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685523600
date2=1685613600
value1=109105.000000
value2=109105.000000
</object>

<object>
type=2
name=2023.06.01 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610412
value1=108715.000000
value2=108715.000000
</object>

<object>
type=2
name=2023.06.01 00:00 28
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=108743.000000
value2=108743.000000
</object>

<object>
type=2
name=2023.06.01 00:00 56
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=108771.000000
value2=108771.000000
</object>

<object>
type=2
name=2023.06.01 00:00 84
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=108799.000000
value2=108799.000000
</object>

<object>
type=2
name=2023.06.01 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=108827.000000
value2=108827.000000
</object>

<object>
type=2
name=2023.06.01 00:00 140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=108855.000000
value2=108855.000000
</object>

<object>
type=2
name=2023.06.01 00:00 168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612472
value1=108883.000000
value2=108883.000000
</object>

<object>
type=2
name=2023.06.01 00:00 196
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612884
value1=108911.000000
value2=108911.000000
</object>

<object>
type=2
name=2023.06.01 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613296
value1=108939.000000
value2=108939.000000
</object>

<object>
type=2
name=2023.06.01 00:00 252
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=108967.000000
value2=108967.000000
</object>

<object>
type=2
name=2023.06.01 00:00 280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=108995.000000
value2=108995.000000
</object>

<object>
type=2
name=2023.06.01 00:00 308
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685617004
value1=109023.000000
value2=109023.000000
</object>

<object>
type=2
name=2023.06.01 00:00 336
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685620712
value1=109051.000000
value2=109051.000000
</object>

<object>
type=2
name=2023.06.01 00:00 364
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685623184
value1=109079.000000
value2=109079.000000
</object>

<object>
type=2
name=2023.06.01 00:00 392
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685627304
value1=109107.000000
value2=109107.000000
</object>

<object>
type=2
name=2023.06.01 00:00 420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685625656
value1=109135.000000
value2=109135.000000
</object>

<object>
type=2
name=2023.06.01 00:00 448
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685625656
value1=109163.000000
value2=109163.000000
</object>

<object>
type=2
name=2023.06.01 00:00 476
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685628952
value1=109191.000000
value2=109191.000000
</object>

<object>
type=2
name=2023.06.01 00:00 504
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685629364
value1=109219.000000
value2=109219.000000
</object>

<object>
type=2
name=2023.06.01 00:00 532
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685628128
value1=109247.000000
value2=109247.000000
</object>

<object>
type=2
name=2023.06.01 00:00 560
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624008
value1=109275.000000
value2=109275.000000
</object>

<object>
type=2
name=2023.06.01 00:00 588
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624420
value1=109303.000000
value2=109303.000000
</object>

<object>
type=2
name=2023.06.01 00:00 616
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624832
value1=109331.000000
value2=109331.000000
</object>

<object>
type=2
name=2023.06.01 00:00 644
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624420
value1=109359.000000
value2=109359.000000
</object>

<object>
type=2
name=2023.06.01 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685622360
value1=109387.000000
value2=109387.000000
</object>

<object>
type=2
name=2023.06.01 00:00 700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685621948
value1=109415.000000
value2=109415.000000
</object>

<object>
type=2
name=2023.06.01 00:00 728
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685621124
value1=109443.000000
value2=109443.000000
</object>

<object>
type=2
name=2023.06.01 00:00 756
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685617828
value1=109471.000000
value2=109471.000000
</object>

<object>
type=2
name=2023.06.01 00:00 784
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=109499.000000
value2=109499.000000
</object>

<object>
type=2
name=2023.06.01 00:00 812
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614120
value1=109527.000000
value2=109527.000000
</object>

<object>
type=2
name=2023.06.01 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613708
value1=109555.000000
value2=109555.000000
</object>

<object>
type=2
name=2023.06.01 00:00 868
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614532
value1=109583.000000
value2=109583.000000
</object>

<object>
type=2
name=2023.06.01 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614532
value1=109611.000000
value2=109611.000000
</object>

<object>
type=2
name=2023.06.01 00:00 924
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614532
value1=109639.000000
value2=109639.000000
</object>

<object>
type=2
name=2023.06.01 00:00 952
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614120
value1=109667.000000
value2=109667.000000
</object>

<object>
type=2
name=2023.06.01 00:00 980
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=109695.000000
value2=109695.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=109723.000000
value2=109723.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1036
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=109751.000000
value2=109751.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1064
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613708
value1=109779.000000
value2=109779.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1092
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=109807.000000
value2=109807.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613708
value1=109835.000000
value2=109835.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1148
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612472
value1=109863.000000
value2=109863.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1176
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611648
value1=109891.000000
value2=109891.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1204
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=109919.000000
value2=109919.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1232
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611648
value1=109947.000000
value2=109947.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1260
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=109975.000000
value2=109975.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1288
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=110003.000000
value2=110003.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1316
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=110031.000000
value2=110031.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1344
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110059.000000
value2=110059.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1372
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610412
value1=110087.000000
value2=110087.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1400
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110115.000000
value2=110115.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1428
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110143.000000
value2=110143.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1456
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=110171.000000
value2=110171.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1484
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110199.000000
value2=110199.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1512
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=110227.000000
value2=110227.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=110255.000000
value2=110255.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1568
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610412
value1=110283.000000
value2=110283.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1596
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110311.000000
value2=110311.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1624
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110339.000000
value2=110339.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1652
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=110367.000000
value2=110367.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=110395.000000
value2=110395.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1708
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611648
value1=110423.000000
value2=110423.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1736
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611648
value1=110451.000000
value2=110451.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1764
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613296
value1=110479.000000
value2=110479.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1792
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614120
value1=110507.000000
value2=110507.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1820
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685616180
value1=110535.000000
value2=110535.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1848
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685616592
value1=110563.000000
value2=110563.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1876
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685617004
value1=110591.000000
value2=110591.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1904
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614120
value1=110619.000000
value2=110619.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1932
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615768
value1=110647.000000
value2=110647.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685619476
value1=110675.000000
value2=110675.000000
</object>

<object>
type=2
name=2023.06.01 00:00 1988
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624008
value1=110703.000000
value2=110703.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2016
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624420
value1=110731.000000
value2=110731.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2044
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685626480
value1=110759.000000
value2=110759.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2072
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685632248
value1=110787.000000
value2=110787.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2100
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685638428
value1=110815.000000
value2=110815.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2128
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685631012
value1=110843.000000
value2=110843.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2156
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685626480
value1=110871.000000
value2=110871.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2184
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685630600
value1=110899.000000
value2=110899.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2212
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685624008
value1=110927.000000
value2=110927.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2240
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685619476
value1=110955.000000
value2=110955.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2268
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685619476
value1=110983.000000
value2=110983.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2296
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685617828
value1=111011.000000
value2=111011.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2324
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=111039.000000
value2=111039.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2352
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614120
value1=111067.000000
value2=111067.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2380
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=111095.000000
value2=111095.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2408
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685617004
value1=111123.000000
value2=111123.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2436
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685618652
value1=111151.000000
value2=111151.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2464
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685618240
value1=111179.000000
value2=111179.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2492
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613296
value1=111207.000000
value2=111207.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613708
value1=111235.000000
value2=111235.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2548
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685615356
value1=111263.000000
value2=111263.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2576
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=111291.000000
value2=111291.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2604
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611648
value1=111319.000000
value2=111319.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610824
value1=111347.000000
value2=111347.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2660
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=111375.000000
value2=111375.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2688
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=111403.000000
value2=111403.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2716
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685614944
value1=111431.000000
value2=111431.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2744
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685613296
value1=111459.000000
value2=111459.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2772
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685612060
value1=111487.000000
value2=111487.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2800
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685611236
value1=111515.000000
value2=111515.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2828
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610412
value1=111543.000000
value2=111543.000000
</object>

<object>
type=2
name=2023.06.01 00:00 2856
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1685610412
value1=111571.000000
value2=111571.000000
</object>

<object>
type=2
name=2023.06.01 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685610000
date2=1686675219
value1=110815.000000
value2=110815.000000
</object>

<object>
type=101
name=2023.06.01 00:00 POC L
hidden=1
descr=110815
color=42495
selectable=0
angle=0
date1=1686675519
value1=110815.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.06.02 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=111805.000000
value2=111805.000000
</object>

<object>
type=2
name=2023.06.02 00:00 16
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=111821.000000
value2=111821.000000
</object>

<object>
type=2
name=2023.06.02 00:00 32
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=111837.000000
value2=111837.000000
</object>

<object>
type=2
name=2023.06.02 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111853.000000
value2=111853.000000
</object>

<object>
type=2
name=2023.06.02 00:00 64
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111869.000000
value2=111869.000000
</object>

<object>
type=2
name=2023.06.02 00:00 80
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111885.000000
value2=111885.000000
</object>

<object>
type=2
name=2023.06.02 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111901.000000
value2=111901.000000
</object>

<object>
type=2
name=2023.06.02 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111917.000000
value2=111917.000000
</object>

<object>
type=2
name=2023.06.02 00:00 128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111933.000000
value2=111933.000000
</object>

<object>
type=2
name=2023.06.02 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111949.000000
value2=111949.000000
</object>

<object>
type=2
name=2023.06.02 00:00 160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=111965.000000
value2=111965.000000
</object>

<object>
type=2
name=2023.06.02 00:00 176
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=111981.000000
value2=111981.000000
</object>

<object>
type=2
name=2023.06.02 00:00 192
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=111997.000000
value2=111997.000000
</object>

<object>
type=2
name=2023.06.02 00:00 208
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=112013.000000
value2=112013.000000
</object>

<object>
type=2
name=2023.06.02 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=112029.000000
value2=112029.000000
</object>

<object>
type=2
name=2023.06.02 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=112045.000000
value2=112045.000000
</object>

<object>
type=2
name=2023.06.02 00:00 256
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=112061.000000
value2=112061.000000
</object>

<object>
type=2
name=2023.06.02 00:00 272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696858
value1=112077.000000
value2=112077.000000
</object>

<object>
type=2
name=2023.06.02 00:00 288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697087
value1=112093.000000
value2=112093.000000
</object>

<object>
type=2
name=2023.06.02 00:00 304
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=112109.000000
value2=112109.000000
</object>

<object>
type=2
name=2023.06.02 00:00 320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=112125.000000
value2=112125.000000
</object>

<object>
type=2
name=2023.06.02 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698232
value1=112141.000000
value2=112141.000000
</object>

<object>
type=2
name=2023.06.02 00:00 352
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698232
value1=112157.000000
value2=112157.000000
</object>

<object>
type=2
name=2023.06.02 00:00 368
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698690
value1=112173.000000
value2=112173.000000
</object>

<object>
type=2
name=2023.06.02 00:00 384
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698690
value1=112189.000000
value2=112189.000000
</object>

<object>
type=2
name=2023.06.02 00:00 400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698690
value1=112205.000000
value2=112205.000000
</object>

<object>
type=2
name=2023.06.02 00:00 416
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698690
value1=112221.000000
value2=112221.000000
</object>

<object>
type=2
name=2023.06.02 00:00 432
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699835
value1=112237.000000
value2=112237.000000
</object>

<object>
type=2
name=2023.06.02 00:00 448
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700064
value1=112253.000000
value2=112253.000000
</object>

<object>
type=2
name=2023.06.02 00:00 464
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700293
value1=112269.000000
value2=112269.000000
</object>

<object>
type=2
name=2023.06.02 00:00 480
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698919
value1=112285.000000
value2=112285.000000
</object>

<object>
type=2
name=2023.06.02 00:00 496
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698461
value1=112301.000000
value2=112301.000000
</object>

<object>
type=2
name=2023.06.02 00:00 512
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697087
value1=112317.000000
value2=112317.000000
</object>

<object>
type=2
name=2023.06.02 00:00 528
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=112333.000000
value2=112333.000000
</object>

<object>
type=2
name=2023.06.02 00:00 544
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=112349.000000
value2=112349.000000
</object>

<object>
type=2
name=2023.06.02 00:00 560
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=112365.000000
value2=112365.000000
</object>

<object>
type=2
name=2023.06.02 00:00 576
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697774
value1=112381.000000
value2=112381.000000
</object>

<object>
type=2
name=2023.06.02 00:00 592
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697774
value1=112397.000000
value2=112397.000000
</object>

<object>
type=2
name=2023.06.02 00:00 608
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112413.000000
value2=112413.000000
</object>

<object>
type=2
name=2023.06.02 00:00 624
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112429.000000
value2=112429.000000
</object>

<object>
type=2
name=2023.06.02 00:00 640
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112445.000000
value2=112445.000000
</object>

<object>
type=2
name=2023.06.02 00:00 656
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112461.000000
value2=112461.000000
</object>

<object>
type=2
name=2023.06.02 00:00 672
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112477.000000
value2=112477.000000
</object>

<object>
type=2
name=2023.06.02 00:00 688
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697774
value1=112493.000000
value2=112493.000000
</object>

<object>
type=2
name=2023.06.02 00:00 704
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697774
value1=112509.000000
value2=112509.000000
</object>

<object>
type=2
name=2023.06.02 00:00 720
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698003
value1=112525.000000
value2=112525.000000
</object>

<object>
type=2
name=2023.06.02 00:00 736
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698232
value1=112541.000000
value2=112541.000000
</object>

<object>
type=2
name=2023.06.02 00:00 752
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698919
value1=112557.000000
value2=112557.000000
</object>

<object>
type=2
name=2023.06.02 00:00 768
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699148
value1=112573.000000
value2=112573.000000
</object>

<object>
type=2
name=2023.06.02 00:00 784
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699606
value1=112589.000000
value2=112589.000000
</object>

<object>
type=2
name=2023.06.02 00:00 800
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=112605.000000
value2=112605.000000
</object>

<object>
type=2
name=2023.06.02 00:00 816
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=112621.000000
value2=112621.000000
</object>

<object>
type=2
name=2023.06.02 00:00 832
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=112637.000000
value2=112637.000000
</object>

<object>
type=2
name=2023.06.02 00:00 848
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700980
value1=112653.000000
value2=112653.000000
</object>

<object>
type=2
name=2023.06.02 00:00 864
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701896
value1=112669.000000
value2=112669.000000
</object>

<object>
type=2
name=2023.06.02 00:00 880
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685704186
value1=112685.000000
value2=112685.000000
</object>

<object>
type=2
name=2023.06.02 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685706476
value1=112701.000000
value2=112701.000000
</object>

<object>
type=2
name=2023.06.02 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685706476
value1=112717.000000
value2=112717.000000
</object>

<object>
type=2
name=2023.06.02 00:00 928
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685703728
value1=112733.000000
value2=112733.000000
</object>

<object>
type=2
name=2023.06.02 00:00 944
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685703957
value1=112749.000000
value2=112749.000000
</object>

<object>
type=2
name=2023.06.02 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700980
value1=112765.000000
value2=112765.000000
</object>

<object>
type=2
name=2023.06.02 00:00 976
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700522
value1=112781.000000
value2=112781.000000
</object>

<object>
type=2
name=2023.06.02 00:00 992
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=112797.000000
value2=112797.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=112813.000000
value2=112813.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1024
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685702125
value1=112829.000000
value2=112829.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1040
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685703728
value1=112845.000000
value2=112845.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1056
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685705102
value1=112861.000000
value2=112861.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1072
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685704873
value1=112877.000000
value2=112877.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685705789
value1=112893.000000
value2=112893.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1104
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685708766
value1=112909.000000
value2=112909.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685711514
value1=112925.000000
value2=112925.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1136
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685711514
value1=112941.000000
value2=112941.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1152
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685711972
value1=112957.000000
value2=112957.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1168
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685709453
value1=112973.000000
value2=112973.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1184
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685713804
value1=112989.000000
value2=112989.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685719758
value1=113005.000000
value2=113005.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1216
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685723193
value1=113021.000000
value2=113021.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1232
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685724796
value1=113037.000000
value2=113037.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1248
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685722277
value1=113053.000000
value2=113053.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1264
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685720216
value1=113069.000000
value2=113069.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1280
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685715407
value1=113085.000000
value2=113085.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1296
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685713117
value1=113101.000000
value2=113101.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1312
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685711514
value1=113117.000000
value2=113117.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1328
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685711514
value1=113133.000000
value2=113133.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1344
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685710598
value1=113149.000000
value2=113149.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685708308
value1=113165.000000
value2=113165.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1376
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685706705
value1=113181.000000
value2=113181.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1392
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685704415
value1=113197.000000
value2=113197.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1408
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685704644
value1=113213.000000
value2=113213.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1424
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685704415
value1=113229.000000
value2=113229.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685703041
value1=113245.000000
value2=113245.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1456
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700980
value1=113261.000000
value2=113261.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1472
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=113277.000000
value2=113277.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1488
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685701667
value1=113293.000000
value2=113293.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685700522
value1=113309.000000
value2=113309.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699835
value1=113325.000000
value2=113325.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1536
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699606
value1=113341.000000
value2=113341.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1552
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685699148
value1=113357.000000
value2=113357.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1568
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698461
value1=113373.000000
value2=113373.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1584
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685698232
value1=113389.000000
value2=113389.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1600
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697774
value1=113405.000000
value2=113405.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1616
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697545
value1=113421.000000
value2=113421.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=113437.000000
value2=113437.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1648
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685697316
value1=113453.000000
value2=113453.000000
</object>

<object>
type=2
name=2023.06.02 00:00 1664
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685696629
value1=113469.000000
value2=113469.000000
</object>

<object>
type=2
name=2023.06.02 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685696400
date2=1685956140
value1=113030.000000
value2=113030.000000
</object>

<object>
type=2
name=2023.06.05 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685955890
value1=112005.000000
value2=112005.000000
</object>

<object>
type=2
name=2023.06.05 00:00 14
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685955890
value1=112019.000000
value2=112019.000000
</object>

<object>
type=2
name=2023.06.05 00:00 28
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685955890
value1=112033.000000
value2=112033.000000
</object>

<object>
type=2
name=2023.06.05 00:00 42
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685955890
value1=112047.000000
value2=112047.000000
</object>

<object>
type=2
name=2023.06.05 00:00 56
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685955890
value1=112061.000000
value2=112061.000000
</object>

<object>
type=2
name=2023.06.05 00:00 70
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956180
value1=112075.000000
value2=112075.000000
</object>

<object>
type=2
name=2023.06.05 00:00 84
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956180
value1=112089.000000
value2=112089.000000
</object>

<object>
type=2
name=2023.06.05 00:00 98
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=112103.000000
value2=112103.000000
</object>

<object>
type=2
name=2023.06.05 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=112117.000000
value2=112117.000000
</object>

<object>
type=2
name=2023.06.05 00:00 126
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957050
value1=112131.000000
value2=112131.000000
</object>

<object>
type=2
name=2023.06.05 00:00 140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=112145.000000
value2=112145.000000
</object>

<object>
type=2
name=2023.06.05 00:00 154
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957050
value1=112159.000000
value2=112159.000000
</object>

<object>
type=2
name=2023.06.05 00:00 168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112173.000000
value2=112173.000000
</object>

<object>
type=2
name=2023.06.05 00:00 182
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112187.000000
value2=112187.000000
</object>

<object>
type=2
name=2023.06.05 00:00 196
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=112201.000000
value2=112201.000000
</object>

<object>
type=2
name=2023.06.05 00:00 210
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685958500
value1=112215.000000
value2=112215.000000
</object>

<object>
type=2
name=2023.06.05 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685959080
value1=112229.000000
value2=112229.000000
</object>

<object>
type=2
name=2023.06.05 00:00 238
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685959950
value1=112243.000000
value2=112243.000000
</object>

<object>
type=2
name=2023.06.05 00:00 252
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685960240
value1=112257.000000
value2=112257.000000
</object>

<object>
type=2
name=2023.06.05 00:00 266
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685959660
value1=112271.000000
value2=112271.000000
</object>

<object>
type=2
name=2023.06.05 00:00 280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685959080
value1=112285.000000
value2=112285.000000
</object>

<object>
type=2
name=2023.06.05 00:00 294
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685958790
value1=112299.000000
value2=112299.000000
</object>

<object>
type=2
name=2023.06.05 00:00 308
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685958210
value1=112313.000000
value2=112313.000000
</object>

<object>
type=2
name=2023.06.05 00:00 322
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112327.000000
value2=112327.000000
</object>

<object>
type=2
name=2023.06.05 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112341.000000
value2=112341.000000
</object>

<object>
type=2
name=2023.06.05 00:00 350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112355.000000
value2=112355.000000
</object>

<object>
type=2
name=2023.06.05 00:00 364
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112369.000000
value2=112369.000000
</object>

<object>
type=2
name=2023.06.05 00:00 378
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112383.000000
value2=112383.000000
</object>

<object>
type=2
name=2023.06.05 00:00 392
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112397.000000
value2=112397.000000
</object>

<object>
type=2
name=2023.06.05 00:00 406
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112411.000000
value2=112411.000000
</object>

<object>
type=2
name=2023.06.05 00:00 420
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112425.000000
value2=112425.000000
</object>

<object>
type=2
name=2023.06.05 00:00 434
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112439.000000
value2=112439.000000
</object>

<object>
type=2
name=2023.06.05 00:00 448
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112453.000000
value2=112453.000000
</object>

<object>
type=2
name=2023.06.05 00:00 462
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=112467.000000
value2=112467.000000
</object>

<object>
type=2
name=2023.06.05 00:00 476
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957050
value1=112481.000000
value2=112481.000000
</object>

<object>
type=2
name=2023.06.05 00:00 490
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=112495.000000
value2=112495.000000
</object>

<object>
type=2
name=2023.06.05 00:00 504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=112509.000000
value2=112509.000000
</object>

<object>
type=2
name=2023.06.05 00:00 518
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=112523.000000
value2=112523.000000
</object>

<object>
type=2
name=2023.06.05 00:00 532
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=112537.000000
value2=112537.000000
</object>

<object>
type=2
name=2023.06.05 00:00 546
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=112551.000000
value2=112551.000000
</object>

<object>
type=2
name=2023.06.05 00:00 560
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=112565.000000
value2=112565.000000
</object>

<object>
type=2
name=2023.06.05 00:00 574
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957050
value1=112579.000000
value2=112579.000000
</object>

<object>
type=2
name=2023.06.05 00:00 588
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=112593.000000
value2=112593.000000
</object>

<object>
type=2
name=2023.06.05 00:00 602
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685958210
value1=112607.000000
value2=112607.000000
</object>

<object>
type=2
name=2023.06.05 00:00 616
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685961110
value1=112621.000000
value2=112621.000000
</object>

<object>
type=2
name=2023.06.05 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685967490
value1=112635.000000
value2=112635.000000
</object>

<object>
type=2
name=2023.06.05 00:00 644
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685969810
value1=112649.000000
value2=112649.000000
</object>

<object>
type=2
name=2023.06.05 00:00 658
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685971550
value1=112663.000000
value2=112663.000000
</object>

<object>
type=2
name=2023.06.05 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685973580
value1=112677.000000
value2=112677.000000
</object>

<object>
type=2
name=2023.06.05 00:00 686
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972710
value1=112691.000000
value2=112691.000000
</object>

<object>
type=2
name=2023.06.05 00:00 700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972420
value1=112705.000000
value2=112705.000000
</object>

<object>
type=2
name=2023.06.05 00:00 714
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972710
value1=112719.000000
value2=112719.000000
</object>

<object>
type=2
name=2023.06.05 00:00 728
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685979380
value1=112733.000000
value2=112733.000000
</object>

<object>
type=2
name=2023.06.05 00:00 742
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685983150
value1=112747.000000
value2=112747.000000
</object>

<object>
type=2
name=2023.06.05 00:00 756
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685979380
value1=112761.000000
value2=112761.000000
</object>

<object>
type=2
name=2023.06.05 00:00 770
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685975610
value1=112775.000000
value2=112775.000000
</object>

<object>
type=2
name=2023.06.05 00:00 784
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972130
value1=112789.000000
value2=112789.000000
</object>

<object>
type=2
name=2023.06.05 00:00 798
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685967200
value1=112803.000000
value2=112803.000000
</object>

<object>
type=2
name=2023.06.05 00:00 812
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685963140
value1=112817.000000
value2=112817.000000
</object>

<object>
type=2
name=2023.06.05 00:00 826
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685961980
value1=112831.000000
value2=112831.000000
</object>

<object>
type=2
name=2023.06.05 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685961400
value1=112845.000000
value2=112845.000000
</object>

<object>
type=2
name=2023.06.05 00:00 854
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685962560
value1=112859.000000
value2=112859.000000
</object>

<object>
type=2
name=2023.06.05 00:00 868
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685964010
value1=112873.000000
value2=112873.000000
</object>

<object>
type=2
name=2023.06.05 00:00 882
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685966040
value1=112887.000000
value2=112887.000000
</object>

<object>
type=2
name=2023.06.05 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685968360
value1=112901.000000
value2=112901.000000
</object>

<object>
type=2
name=2023.06.05 00:00 910
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685969810
value1=112915.000000
value2=112915.000000
</object>

<object>
type=2
name=2023.06.05 00:00 924
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970390
value1=112929.000000
value2=112929.000000
</object>

<object>
type=2
name=2023.06.05 00:00 938
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685971840
value1=112943.000000
value2=112943.000000
</object>

<object>
type=2
name=2023.06.05 00:00 952
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970680
value1=112957.000000
value2=112957.000000
</object>

<object>
type=2
name=2023.06.05 00:00 966
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970100
value1=112971.000000
value2=112971.000000
</object>

<object>
type=2
name=2023.06.05 00:00 980
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970390
value1=112985.000000
value2=112985.000000
</object>

<object>
type=2
name=2023.06.05 00:00 994
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970390
value1=112999.000000
value2=112999.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970970
value1=113013.000000
value2=113013.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1022
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970100
value1=113027.000000
value2=113027.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1036
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685968650
value1=113041.000000
value2=113041.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970390
value1=113055.000000
value2=113055.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1064
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970680
value1=113069.000000
value2=113069.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1078
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685971840
value1=113083.000000
value2=113083.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1092
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972130
value1=113097.000000
value2=113097.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1106
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685972710
value1=113111.000000
value2=113111.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685973580
value1=113125.000000
value2=113125.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1134
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685975030
value1=113139.000000
value2=113139.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1148
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685973580
value1=113153.000000
value2=113153.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1162
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685970390
value1=113167.000000
value2=113167.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1176
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685969810
value1=113181.000000
value2=113181.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1190
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685966620
value1=113195.000000
value2=113195.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1204
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685964300
value1=113209.000000
value2=113209.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1218
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685961110
value1=113223.000000
value2=113223.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1232
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685959950
value1=113237.000000
value2=113237.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1246
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=113251.000000
value2=113251.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1260
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=113265.000000
value2=113265.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1274
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=113279.000000
value2=113279.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=113293.000000
value2=113293.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1302
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957920
value1=113307.000000
value2=113307.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1316
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957630
value1=113321.000000
value2=113321.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1330
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=113335.000000
value2=113335.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1344
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957340
value1=113349.000000
value2=113349.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1358
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=113363.000000
value2=113363.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1372
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685957050
value1=113377.000000
value2=113377.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1386
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=113391.000000
value2=113391.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=113405.000000
value2=113405.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1414
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=113419.000000
value2=113419.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1428
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956760
value1=113433.000000
value2=113433.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1442
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=113447.000000
value2=113447.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1456
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=113461.000000
value2=113461.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1470
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956470
value1=113475.000000
value2=113475.000000
</object>

<object>
type=2
name=2023.06.05 00:00 1484
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1685956180
value1=113489.000000
value2=113489.000000
</object>

<object>
type=2
name=2023.06.05 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1685955600
date2=1686675219
value1=112750.000000
value2=112750.000000
</object>

<object>
type=101
name=2023.06.05 00:00 POC L
hidden=1
descr=112750
color=42495
selectable=0
angle=0
date1=1686675519
value1=112750.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.06.06 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112800.000000
value2=112800.000000
</object>

<object>
type=2
name=2023.06.06 00:00 25
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112825.000000
value2=112825.000000
</object>

<object>
type=2
name=2023.06.06 00:00 50
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112850.000000
value2=112850.000000
</object>

<object>
type=2
name=2023.06.06 00:00 75
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112875.000000
value2=112875.000000
</object>

<object>
type=2
name=2023.06.06 00:00 100
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112900.000000
value2=112900.000000
</object>

<object>
type=2
name=2023.06.06 00:00 125
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=112925.000000
value2=112925.000000
</object>

<object>
type=2
name=2023.06.06 00:00 150
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=112950.000000
value2=112950.000000
</object>

<object>
type=2
name=2023.06.06 00:00 175
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=112975.000000
value2=112975.000000
</object>

<object>
type=2
name=2023.06.06 00:00 200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=113000.000000
value2=113000.000000
</object>

<object>
type=2
name=2023.06.06 00:00 225
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=113025.000000
value2=113025.000000
</object>

<object>
type=2
name=2023.06.06 00:00 250
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=113050.000000
value2=113050.000000
</object>

<object>
type=2
name=2023.06.06 00:00 275
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=113075.000000
value2=113075.000000
</object>

<object>
type=2
name=2023.06.06 00:00 300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=113100.000000
value2=113100.000000
</object>

<object>
type=2
name=2023.06.06 00:00 325
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=113125.000000
value2=113125.000000
</object>

<object>
type=2
name=2023.06.06 00:00 350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=113150.000000
value2=113150.000000
</object>

<object>
type=2
name=2023.06.06 00:00 375
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=113175.000000
value2=113175.000000
</object>

<object>
type=2
name=2023.06.06 00:00 400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043551
value1=113200.000000
value2=113200.000000
</object>

<object>
type=2
name=2023.06.06 00:00 425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686044585
value1=113225.000000
value2=113225.000000
</object>

<object>
type=2
name=2023.06.06 00:00 450
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046653
value1=113250.000000
value2=113250.000000
</object>

<object>
type=2
name=2023.06.06 00:00 475
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=113275.000000
value2=113275.000000
</object>

<object>
type=2
name=2023.06.06 00:00 500
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=113300.000000
value2=113300.000000
</object>

<object>
type=2
name=2023.06.06 00:00 525
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=113325.000000
value2=113325.000000
</object>

<object>
type=2
name=2023.06.06 00:00 550
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=113350.000000
value2=113350.000000
</object>

<object>
type=2
name=2023.06.06 00:00 575
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686053374
value1=113375.000000
value2=113375.000000
</object>

<object>
type=2
name=2023.06.06 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686063197
value1=113400.000000
value2=113400.000000
</object>

<object>
type=2
name=2023.06.06 00:00 625
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686065782
value1=113425.000000
value2=113425.000000
</object>

<object>
type=2
name=2023.06.06 00:00 650
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686059578
value1=113450.000000
value2=113450.000000
</object>

<object>
type=2
name=2023.06.06 00:00 675
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686055442
value1=113475.000000
value2=113475.000000
</object>

<object>
type=2
name=2023.06.06 00:00 700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686051823
value1=113500.000000
value2=113500.000000
</object>

<object>
type=2
name=2023.06.06 00:00 725
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048204
value1=113525.000000
value2=113525.000000
</object>

<object>
type=2
name=2023.06.06 00:00 750
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046136
value1=113550.000000
value2=113550.000000
</object>

<object>
type=2
name=2023.06.06 00:00 775
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=113575.000000
value2=113575.000000
</object>

<object>
type=2
name=2023.06.06 00:00 800
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048204
value1=113600.000000
value2=113600.000000
</object>

<object>
type=2
name=2023.06.06 00:00 825
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=113625.000000
value2=113625.000000
</object>

<object>
type=2
name=2023.06.06 00:00 850
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046136
value1=113650.000000
value2=113650.000000
</object>

<object>
type=2
name=2023.06.06 00:00 875
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=113675.000000
value2=113675.000000
</object>

<object>
type=2
name=2023.06.06 00:00 900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046653
value1=113700.000000
value2=113700.000000
</object>

<object>
type=2
name=2023.06.06 00:00 925
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046136
value1=113725.000000
value2=113725.000000
</object>

<object>
type=2
name=2023.06.06 00:00 950
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=113750.000000
value2=113750.000000
</object>

<object>
type=2
name=2023.06.06 00:00 975
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048204
value1=113775.000000
value2=113775.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1000
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686051306
value1=113800.000000
value2=113800.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1025
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686052857
value1=113825.000000
value2=113825.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686053891
value1=113850.000000
value2=113850.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1075
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686052340
value1=113875.000000
value2=113875.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1100
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686050272
value1=113900.000000
value2=113900.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1125
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046653
value1=113925.000000
value2=113925.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1150
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=113950.000000
value2=113950.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1175
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043551
value1=113975.000000
value2=113975.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686045619
value1=114000.000000
value2=114000.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1225
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047687
value1=114025.000000
value2=114025.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1250
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=114050.000000
value2=114050.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1275
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048204
value1=114075.000000
value2=114075.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1300
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686049238
value1=114100.000000
value2=114100.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1325
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686049755
value1=114125.000000
value2=114125.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1350
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047687
value1=114150.000000
value2=114150.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1375
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=114175.000000
value2=114175.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1400
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048204
value1=114200.000000
value2=114200.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1425
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686049238
value1=114225.000000
value2=114225.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1450
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686051306
value1=114250.000000
value2=114250.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1475
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686054408
value1=114275.000000
value2=114275.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1500
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686054925
value1=114300.000000
value2=114300.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1525
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686057510
value1=114325.000000
value2=114325.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1550
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686052857
value1=114350.000000
value2=114350.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1575
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686048721
value1=114375.000000
value2=114375.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047687
value1=114400.000000
value2=114400.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1625
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686046136
value1=114425.000000
value2=114425.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1650
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686044068
value1=114450.000000
value2=114450.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1675
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686044068
value1=114475.000000
value2=114475.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043551
value1=114500.000000
value2=114500.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1725
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=114525.000000
value2=114525.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1750
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=114550.000000
value2=114550.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1775
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042517
value1=114575.000000
value2=114575.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1800
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=114600.000000
value2=114600.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1825
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686045619
value1=114625.000000
value2=114625.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1850
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686055959
value1=114650.000000
value2=114650.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1875
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686070435
value1=114675.000000
value2=114675.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686068884
value1=114700.000000
value2=114700.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1925
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686062163
value1=114725.000000
value2=114725.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1950
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686063197
value1=114750.000000
value2=114750.000000
</object>

<object>
type=2
name=2023.06.06 00:00 1975
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686063197
value1=114775.000000
value2=114775.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2000
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686059061
value1=114800.000000
value2=114800.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2025
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686055959
value1=114825.000000
value2=114825.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686062680
value1=114850.000000
value2=114850.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2075
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686066816
value1=114875.000000
value2=114875.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2100
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686065782
value1=114900.000000
value2=114900.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2125
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686064748
value1=114925.000000
value2=114925.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2150
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686061129
value1=114950.000000
value2=114950.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2175
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686063714
value1=114975.000000
value2=114975.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686064748
value1=115000.000000
value2=115000.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2225
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686061129
value1=115025.000000
value2=115025.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2250
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686054925
value1=115050.000000
value2=115050.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2275
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686056476
value1=115075.000000
value2=115075.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686049755
value1=115100.000000
value2=115100.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2325
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686045619
value1=115125.000000
value2=115125.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043551
value1=115150.000000
value2=115150.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2375
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686045102
value1=115175.000000
value2=115175.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=115200.000000
value2=115200.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047687
value1=115225.000000
value2=115225.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2450
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686047170
value1=115250.000000
value2=115250.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2475
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686043034
value1=115275.000000
value2=115275.000000
</object>

<object>
type=2
name=2023.06.06 00:00 2500
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686042000
value1=115300.000000
value2=115300.000000
</object>

<object>
type=2
name=2023.06.06 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1686042000
date2=1686675219
value1=114675.000000
value2=114675.000000
</object>

<object>
type=101
name=2023.06.06 00:00 POC L
hidden=1
descr=114675
color=42495
selectable=0
angle=0
date1=1686675519
value1=114675.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.06.07 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686128769
value1=114870.000000
value2=114870.000000
</object>

<object>
type=2
name=2023.06.07 00:00 14
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686128769
value1=114884.000000
value2=114884.000000
</object>

<object>
type=2
name=2023.06.07 00:00 28
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=114898.000000
value2=114898.000000
</object>

<object>
type=2
name=2023.06.07 00:00 42
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129507
value1=114912.000000
value2=114912.000000
</object>

<object>
type=2
name=2023.06.07 00:00 56
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129507
value1=114926.000000
value2=114926.000000
</object>

<object>
type=2
name=2023.06.07 00:00 70
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130245
value1=114940.000000
value2=114940.000000
</object>

<object>
type=2
name=2023.06.07 00:00 84
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130614
value1=114954.000000
value2=114954.000000
</object>

<object>
type=2
name=2023.06.07 00:00 98
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686131721
value1=114968.000000
value2=114968.000000
</object>

<object>
type=2
name=2023.06.07 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132459
value1=114982.000000
value2=114982.000000
</object>

<object>
type=2
name=2023.06.07 00:00 126
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=114996.000000
value2=114996.000000
</object>

<object>
type=2
name=2023.06.07 00:00 140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132090
value1=115010.000000
value2=115010.000000
</object>

<object>
type=2
name=2023.06.07 00:00 154
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132459
value1=115024.000000
value2=115024.000000
</object>

<object>
type=2
name=2023.06.07 00:00 168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686131721
value1=115038.000000
value2=115038.000000
</object>

<object>
type=2
name=2023.06.07 00:00 182
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686134304
value1=115052.000000
value2=115052.000000
</object>

<object>
type=2
name=2023.06.07 00:00 196
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686136149
value1=115066.000000
value2=115066.000000
</object>

<object>
type=2
name=2023.06.07 00:00 210
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686135780
value1=115080.000000
value2=115080.000000
</object>

<object>
type=2
name=2023.06.07 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686135042
value1=115094.000000
value2=115094.000000
</object>

<object>
type=2
name=2023.06.07 00:00 238
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686133197
value1=115108.000000
value2=115108.000000
</object>

<object>
type=2
name=2023.06.07 00:00 252
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686131352
value1=115122.000000
value2=115122.000000
</object>

<object>
type=2
name=2023.06.07 00:00 266
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130614
value1=115136.000000
value2=115136.000000
</object>

<object>
type=2
name=2023.06.07 00:00 280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132090
value1=115150.000000
value2=115150.000000
</object>

<object>
type=2
name=2023.06.07 00:00 294
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=115164.000000
value2=115164.000000
</object>

<object>
type=2
name=2023.06.07 00:00 308
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686133197
value1=115178.000000
value2=115178.000000
</object>

<object>
type=2
name=2023.06.07 00:00 322
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=115192.000000
value2=115192.000000
</object>

<object>
type=2
name=2023.06.07 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=115206.000000
value2=115206.000000
</object>

<object>
type=2
name=2023.06.07 00:00 350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=115220.000000
value2=115220.000000
</object>

<object>
type=2
name=2023.06.07 00:00 364
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686131721
value1=115234.000000
value2=115234.000000
</object>

<object>
type=2
name=2023.06.07 00:00 378
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130614
value1=115248.000000
value2=115248.000000
</object>

<object>
type=2
name=2023.06.07 00:00 392
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129507
value1=115262.000000
value2=115262.000000
</object>

<object>
type=2
name=2023.06.07 00:00 406
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=115276.000000
value2=115276.000000
</object>

<object>
type=2
name=2023.06.07 00:00 420
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=115290.000000
value2=115290.000000
</object>

<object>
type=2
name=2023.06.07 00:00 434
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=115304.000000
value2=115304.000000
</object>

<object>
type=2
name=2023.06.07 00:00 448
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129507
value1=115318.000000
value2=115318.000000
</object>

<object>
type=2
name=2023.06.07 00:00 462
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129876
value1=115332.000000
value2=115332.000000
</object>

<object>
type=2
name=2023.06.07 00:00 476
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130983
value1=115346.000000
value2=115346.000000
</object>

<object>
type=2
name=2023.06.07 00:00 490
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132090
value1=115360.000000
value2=115360.000000
</object>

<object>
type=2
name=2023.06.07 00:00 504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132828
value1=115374.000000
value2=115374.000000
</object>

<object>
type=2
name=2023.06.07 00:00 518
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686134304
value1=115388.000000
value2=115388.000000
</object>

<object>
type=2
name=2023.06.07 00:00 532
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686135780
value1=115402.000000
value2=115402.000000
</object>

<object>
type=2
name=2023.06.07 00:00 546
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686137625
value1=115416.000000
value2=115416.000000
</object>

<object>
type=2
name=2023.06.07 00:00 560
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686142422
value1=115430.000000
value2=115430.000000
</object>

<object>
type=2
name=2023.06.07 00:00 574
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686142791
value1=115444.000000
value2=115444.000000
</object>

<object>
type=2
name=2023.06.07 00:00 588
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143898
value1=115458.000000
value2=115458.000000
</object>

<object>
type=2
name=2023.06.07 00:00 602
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146112
value1=115472.000000
value2=115472.000000
</object>

<object>
type=2
name=2023.06.07 00:00 616
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146481
value1=115486.000000
value2=115486.000000
</object>

<object>
type=2
name=2023.06.07 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146481
value1=115500.000000
value2=115500.000000
</object>

<object>
type=2
name=2023.06.07 00:00 644
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686148326
value1=115514.000000
value2=115514.000000
</object>

<object>
type=2
name=2023.06.07 00:00 658
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686149802
value1=115528.000000
value2=115528.000000
</object>

<object>
type=2
name=2023.06.07 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686153861
value1=115542.000000
value2=115542.000000
</object>

<object>
type=2
name=2023.06.07 00:00 686
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686152754
value1=115556.000000
value2=115556.000000
</object>

<object>
type=2
name=2023.06.07 00:00 700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686152385
value1=115570.000000
value2=115570.000000
</object>

<object>
type=2
name=2023.06.07 00:00 714
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686152754
value1=115584.000000
value2=115584.000000
</object>

<object>
type=2
name=2023.06.07 00:00 728
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686152016
value1=115598.000000
value2=115598.000000
</object>

<object>
type=2
name=2023.06.07 00:00 742
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686149433
value1=115612.000000
value2=115612.000000
</object>

<object>
type=2
name=2023.06.07 00:00 756
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686149433
value1=115626.000000
value2=115626.000000
</object>

<object>
type=2
name=2023.06.07 00:00 770
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686148326
value1=115640.000000
value2=115640.000000
</object>

<object>
type=2
name=2023.06.07 00:00 784
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146850
value1=115654.000000
value2=115654.000000
</object>

<object>
type=2
name=2023.06.07 00:00 798
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686147219
value1=115668.000000
value2=115668.000000
</object>

<object>
type=2
name=2023.06.07 00:00 812
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146112
value1=115682.000000
value2=115682.000000
</object>

<object>
type=2
name=2023.06.07 00:00 826
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686147219
value1=115696.000000
value2=115696.000000
</object>

<object>
type=2
name=2023.06.07 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686147588
value1=115710.000000
value2=115710.000000
</object>

<object>
type=2
name=2023.06.07 00:00 854
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686147588
value1=115724.000000
value2=115724.000000
</object>

<object>
type=2
name=2023.06.07 00:00 868
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686149064
value1=115738.000000
value2=115738.000000
</object>

<object>
type=2
name=2023.06.07 00:00 882
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686145374
value1=115752.000000
value2=115752.000000
</object>

<object>
type=2
name=2023.06.07 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146112
value1=115766.000000
value2=115766.000000
</object>

<object>
type=2
name=2023.06.07 00:00 910
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686148695
value1=115780.000000
value2=115780.000000
</object>

<object>
type=2
name=2023.06.07 00:00 924
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686152385
value1=115794.000000
value2=115794.000000
</object>

<object>
type=2
name=2023.06.07 00:00 938
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686154599
value1=115808.000000
value2=115808.000000
</object>

<object>
type=2
name=2023.06.07 00:00 952
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686156813
value1=115822.000000
value2=115822.000000
</object>

<object>
type=2
name=2023.06.07 00:00 966
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686153492
value1=115836.000000
value2=115836.000000
</object>

<object>
type=2
name=2023.06.07 00:00 980
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686149064
value1=115850.000000
value2=115850.000000
</object>

<object>
type=2
name=2023.06.07 00:00 994
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686146481
value1=115864.000000
value2=115864.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143160
value1=115878.000000
value2=115878.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1022
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686142791
value1=115892.000000
value2=115892.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1036
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143529
value1=115906.000000
value2=115906.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686144267
value1=115920.000000
value2=115920.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1064
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686145374
value1=115934.000000
value2=115934.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1078
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686145743
value1=115948.000000
value2=115948.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1092
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686145374
value1=115962.000000
value2=115962.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1106
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686144636
value1=115976.000000
value2=115976.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143160
value1=115990.000000
value2=115990.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1134
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143529
value1=116004.000000
value2=116004.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1148
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143898
value1=116018.000000
value2=116018.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1162
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686145005
value1=116032.000000
value2=116032.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1176
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686143529
value1=116046.000000
value2=116046.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1190
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686141315
value1=116060.000000
value2=116060.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1204
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686141315
value1=116074.000000
value2=116074.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1218
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686140577
value1=116088.000000
value2=116088.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1232
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686139101
value1=116102.000000
value2=116102.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1246
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686137625
value1=116116.000000
value2=116116.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1260
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686136518
value1=116130.000000
value2=116130.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1274
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686135780
value1=116144.000000
value2=116144.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686134304
value1=116158.000000
value2=116158.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1302
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686132459
value1=116172.000000
value2=116172.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1316
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686131352
value1=116186.000000
value2=116186.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1330
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130983
value1=116200.000000
value2=116200.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1344
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686130614
value1=116214.000000
value2=116214.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1358
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129507
value1=116228.000000
value2=116228.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1372
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=116242.000000
value2=116242.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1386
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686129138
value1=116256.000000
value2=116256.000000
</object>

<object>
type=2
name=2023.06.07 00:00 1400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686128400
value1=116270.000000
value2=116270.000000
</object>

<object>
type=2
name=2023.06.07 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1686128400
date2=1686675219
value1=115810.000000
value2=115810.000000
</object>

<object>
type=101
name=2023.06.07 00:00 POC L
hidden=1
descr=115810
color=42495
selectable=0
angle=0
date1=1686675519
value1=115810.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.06.09 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301546
value1=116340.000000
value2=116340.000000
</object>

<object>
type=2
name=2023.06.09 00:00 15
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116355.000000
value2=116355.000000
</object>

<object>
type=2
name=2023.06.09 00:00 30
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116370.000000
value2=116370.000000
</object>

<object>
type=2
name=2023.06.09 00:00 45
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116385.000000
value2=116385.000000
</object>

<object>
type=2
name=2023.06.09 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116400.000000
value2=116400.000000
</object>

<object>
type=2
name=2023.06.09 00:00 75
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116415.000000
value2=116415.000000
</object>

<object>
type=2
name=2023.06.09 00:00 90
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116430.000000
value2=116430.000000
</object>

<object>
type=2
name=2023.06.09 00:00 105
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116445.000000
value2=116445.000000
</object>

<object>
type=2
name=2023.06.09 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116460.000000
value2=116460.000000
</object>

<object>
type=2
name=2023.06.09 00:00 135
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=116475.000000
value2=116475.000000
</object>

<object>
type=2
name=2023.06.09 00:00 150
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302238
value1=116490.000000
value2=116490.000000
</object>

<object>
type=2
name=2023.06.09 00:00 165
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302238
value1=116505.000000
value2=116505.000000
</object>

<object>
type=2
name=2023.06.09 00:00 180
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302238
value1=116520.000000
value2=116520.000000
</object>

<object>
type=2
name=2023.06.09 00:00 195
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302238
value1=116535.000000
value2=116535.000000
</object>

<object>
type=2
name=2023.06.09 00:00 210
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686303276
value1=116550.000000
value2=116550.000000
</object>

<object>
type=2
name=2023.06.09 00:00 225
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686303968
value1=116565.000000
value2=116565.000000
</object>

<object>
type=2
name=2023.06.09 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686303968
value1=116580.000000
value2=116580.000000
</object>

<object>
type=2
name=2023.06.09 00:00 255
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305006
value1=116595.000000
value2=116595.000000
</object>

<object>
type=2
name=2023.06.09 00:00 270
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686306390
value1=116610.000000
value2=116610.000000
</object>

<object>
type=2
name=2023.06.09 00:00 285
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307428
value1=116625.000000
value2=116625.000000
</object>

<object>
type=2
name=2023.06.09 00:00 300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307774
value1=116640.000000
value2=116640.000000
</object>

<object>
type=2
name=2023.06.09 00:00 315
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307428
value1=116655.000000
value2=116655.000000
</object>

<object>
type=2
name=2023.06.09 00:00 330
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309158
value1=116670.000000
value2=116670.000000
</object>

<object>
type=2
name=2023.06.09 00:00 345
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309850
value1=116685.000000
value2=116685.000000
</object>

<object>
type=2
name=2023.06.09 00:00 360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310888
value1=116700.000000
value2=116700.000000
</object>

<object>
type=2
name=2023.06.09 00:00 375
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686311926
value1=116715.000000
value2=116715.000000
</object>

<object>
type=2
name=2023.06.09 00:00 390
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686312618
value1=116730.000000
value2=116730.000000
</object>

<object>
type=2
name=2023.06.09 00:00 405
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686312272
value1=116745.000000
value2=116745.000000
</object>

<object>
type=2
name=2023.06.09 00:00 420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313656
value1=116760.000000
value2=116760.000000
</object>

<object>
type=2
name=2023.06.09 00:00 435
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315732
value1=116775.000000
value2=116775.000000
</object>

<object>
type=2
name=2023.06.09 00:00 450
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315040
value1=116790.000000
value2=116790.000000
</object>

<object>
type=2
name=2023.06.09 00:00 465
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313310
value1=116805.000000
value2=116805.000000
</object>

<object>
type=2
name=2023.06.09 00:00 480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686312618
value1=116820.000000
value2=116820.000000
</object>

<object>
type=2
name=2023.06.09 00:00 495
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686311234
value1=116835.000000
value2=116835.000000
</object>

<object>
type=2
name=2023.06.09 00:00 510
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310542
value1=116850.000000
value2=116850.000000
</object>

<object>
type=2
name=2023.06.09 00:00 525
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309504
value1=116865.000000
value2=116865.000000
</object>

<object>
type=2
name=2023.06.09 00:00 540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309158
value1=116880.000000
value2=116880.000000
</object>

<object>
type=2
name=2023.06.09 00:00 555
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686308120
value1=116895.000000
value2=116895.000000
</object>

<object>
type=2
name=2023.06.09 00:00 570
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305698
value1=116910.000000
value2=116910.000000
</object>

<object>
type=2
name=2023.06.09 00:00 585
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305006
value1=116925.000000
value2=116925.000000
</object>

<object>
type=2
name=2023.06.09 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305352
value1=116940.000000
value2=116940.000000
</object>

<object>
type=2
name=2023.06.09 00:00 615
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686306044
value1=116955.000000
value2=116955.000000
</object>

<object>
type=2
name=2023.06.09 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307428
value1=116970.000000
value2=116970.000000
</object>

<object>
type=2
name=2023.06.09 00:00 645
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309850
value1=116985.000000
value2=116985.000000
</object>

<object>
type=2
name=2023.06.09 00:00 660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310542
value1=117000.000000
value2=117000.000000
</object>

<object>
type=2
name=2023.06.09 00:00 675
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313310
value1=117015.000000
value2=117015.000000
</object>

<object>
type=2
name=2023.06.09 00:00 690
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313310
value1=117030.000000
value2=117030.000000
</object>

<object>
type=2
name=2023.06.09 00:00 705
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309850
value1=117045.000000
value2=117045.000000
</object>

<object>
type=2
name=2023.06.09 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309158
value1=117060.000000
value2=117060.000000
</object>

<object>
type=2
name=2023.06.09 00:00 735
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310542
value1=117075.000000
value2=117075.000000
</object>

<object>
type=2
name=2023.06.09 00:00 750
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313310
value1=117090.000000
value2=117090.000000
</object>

<object>
type=2
name=2023.06.09 00:00 765
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314002
value1=117105.000000
value2=117105.000000
</object>

<object>
type=2
name=2023.06.09 00:00 780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313656
value1=117120.000000
value2=117120.000000
</object>

<object>
type=2
name=2023.06.09 00:00 795
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314348
value1=117135.000000
value2=117135.000000
</object>

<object>
type=2
name=2023.06.09 00:00 810
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314694
value1=117150.000000
value2=117150.000000
</object>

<object>
type=2
name=2023.06.09 00:00 825
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686312618
value1=117165.000000
value2=117165.000000
</object>

<object>
type=2
name=2023.06.09 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309158
value1=117180.000000
value2=117180.000000
</object>

<object>
type=2
name=2023.06.09 00:00 855
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309850
value1=117195.000000
value2=117195.000000
</object>

<object>
type=2
name=2023.06.09 00:00 870
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314002
value1=117210.000000
value2=117210.000000
</object>

<object>
type=2
name=2023.06.09 00:00 885
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315732
value1=117225.000000
value2=117225.000000
</object>

<object>
type=2
name=2023.06.09 00:00 900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315732
value1=117240.000000
value2=117240.000000
</object>

<object>
type=2
name=2023.06.09 00:00 915
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314002
value1=117255.000000
value2=117255.000000
</object>

<object>
type=2
name=2023.06.09 00:00 930
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313656
value1=117270.000000
value2=117270.000000
</object>

<object>
type=2
name=2023.06.09 00:00 945
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313656
value1=117285.000000
value2=117285.000000
</object>

<object>
type=2
name=2023.06.09 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315040
value1=117300.000000
value2=117300.000000
</object>

<object>
type=2
name=2023.06.09 00:00 975
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686315732
value1=117315.000000
value2=117315.000000
</object>

<object>
type=2
name=2023.06.09 00:00 990
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686317808
value1=117330.000000
value2=117330.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1005
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686316770
value1=117345.000000
value2=117345.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1020
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686312618
value1=117360.000000
value2=117360.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1035
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310888
value1=117375.000000
value2=117375.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309504
value1=117390.000000
value2=117390.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1065
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686308120
value1=117405.000000
value2=117405.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1080
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307082
value1=117420.000000
value2=117420.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1095
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307082
value1=117435.000000
value2=117435.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1110
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686306736
value1=117450.000000
value2=117450.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1125
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307774
value1=117465.000000
value2=117465.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1140
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686311580
value1=117480.000000
value2=117480.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1155
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686313656
value1=117495.000000
value2=117495.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1170
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686322306
value1=117510.000000
value2=117510.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1185
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686327150
value1=117525.000000
value2=117525.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686328188
value1=117540.000000
value2=117540.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1215
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686325074
value1=117555.000000
value2=117555.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1230
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686319538
value1=117570.000000
value2=117570.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1245
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686314694
value1=117585.000000
value2=117585.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1260
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686311926
value1=117600.000000
value2=117600.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1275
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686311926
value1=117615.000000
value2=117615.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1290
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686310196
value1=117630.000000
value2=117630.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1305
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686309850
value1=117645.000000
value2=117645.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686308812
value1=117660.000000
value2=117660.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1335
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686308466
value1=117675.000000
value2=117675.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686307774
value1=117690.000000
value2=117690.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1365
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305352
value1=117705.000000
value2=117705.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1380
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305006
value1=117720.000000
value2=117720.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1395
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686305006
value1=117735.000000
value2=117735.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1410
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686304660
value1=117750.000000
value2=117750.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686304314
value1=117765.000000
value2=117765.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686303622
value1=117780.000000
value2=117780.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1455
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302930
value1=117795.000000
value2=117795.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1470
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686302930
value1=117810.000000
value2=117810.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1485
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301892
value1=117825.000000
value2=117825.000000
</object>

<object>
type=2
name=2023.06.09 00:00 1500
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686301200
value1=117840.000000
value2=117840.000000
</object>

<object>
type=2
name=2023.06.09 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1686301200
date2=1686560400
value1=117535.000000
value2=117535.000000
</object>

<object>
type=2
name=2023.06.12 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686560779
value1=116815.000000
value2=116815.000000
</object>

<object>
type=2
name=2023.06.12 00:00 12
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686560779
value1=116827.000000
value2=116827.000000
</object>

<object>
type=2
name=2023.06.12 00:00 24
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686560779
value1=116839.000000
value2=116839.000000
</object>

<object>
type=2
name=2023.06.12 00:00 36
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686561158
value1=116851.000000
value2=116851.000000
</object>

<object>
type=2
name=2023.06.12 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686561537
value1=116863.000000
value2=116863.000000
</object>

<object>
type=2
name=2023.06.12 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686561916
value1=116875.000000
value2=116875.000000
</object>

<object>
type=2
name=2023.06.12 00:00 72
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686562295
value1=116887.000000
value2=116887.000000
</object>

<object>
type=2
name=2023.06.12 00:00 84
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686562295
value1=116899.000000
value2=116899.000000
</object>

<object>
type=2
name=2023.06.12 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563053
value1=116911.000000
value2=116911.000000
</object>

<object>
type=2
name=2023.06.12 00:00 108
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563811
value1=116923.000000
value2=116923.000000
</object>

<object>
type=2
name=2023.06.12 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563432
value1=116935.000000
value2=116935.000000
</object>

<object>
type=2
name=2023.06.12 00:00 132
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563053
value1=116947.000000
value2=116947.000000
</object>

<object>
type=2
name=2023.06.12 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563053
value1=116959.000000
value2=116959.000000
</object>

<object>
type=2
name=2023.06.12 00:00 156
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563811
value1=116971.000000
value2=116971.000000
</object>

<object>
type=2
name=2023.06.12 00:00 168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686564190
value1=116983.000000
value2=116983.000000
</object>

<object>
type=2
name=2023.06.12 00:00 180
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686564948
value1=116995.000000
value2=116995.000000
</object>

<object>
type=2
name=2023.06.12 00:00 192
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686565706
value1=117007.000000
value2=117007.000000
</object>

<object>
type=2
name=2023.06.12 00:00 204
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566464
value1=117019.000000
value2=117019.000000
</object>

<object>
type=2
name=2023.06.12 00:00 216
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566464
value1=117031.000000
value2=117031.000000
</object>

<object>
type=2
name=2023.06.12 00:00 228
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566085
value1=117043.000000
value2=117043.000000
</object>

<object>
type=2
name=2023.06.12 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566464
value1=117055.000000
value2=117055.000000
</object>

<object>
type=2
name=2023.06.12 00:00 252
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686565706
value1=117067.000000
value2=117067.000000
</object>

<object>
type=2
name=2023.06.12 00:00 264
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566085
value1=117079.000000
value2=117079.000000
</object>

<object>
type=2
name=2023.06.12 00:00 276
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566085
value1=117091.000000
value2=117091.000000
</object>

<object>
type=2
name=2023.06.12 00:00 288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567601
value1=117103.000000
value2=117103.000000
</object>

<object>
type=2
name=2023.06.12 00:00 300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686568738
value1=117115.000000
value2=117115.000000
</object>

<object>
type=2
name=2023.06.12 00:00 312
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686568738
value1=117127.000000
value2=117127.000000
</object>

<object>
type=2
name=2023.06.12 00:00 324
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686571391
value1=117139.000000
value2=117139.000000
</object>

<object>
type=2
name=2023.06.12 00:00 336
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686572149
value1=117151.000000
value2=117151.000000
</object>

<object>
type=2
name=2023.06.12 00:00 348
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686574044
value1=117163.000000
value2=117163.000000
</object>

<object>
type=2
name=2023.06.12 00:00 360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686577076
value1=117175.000000
value2=117175.000000
</object>

<object>
type=2
name=2023.06.12 00:00 372
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686577455
value1=117187.000000
value2=117187.000000
</object>

<object>
type=2
name=2023.06.12 00:00 384
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686577834
value1=117199.000000
value2=117199.000000
</object>

<object>
type=2
name=2023.06.12 00:00 396
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686577076
value1=117211.000000
value2=117211.000000
</object>

<object>
type=2
name=2023.06.12 00:00 408
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686575181
value1=117223.000000
value2=117223.000000
</object>

<object>
type=2
name=2023.06.12 00:00 420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686570633
value1=117235.000000
value2=117235.000000
</object>

<object>
type=2
name=2023.06.12 00:00 432
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686569496
value1=117247.000000
value2=117247.000000
</object>

<object>
type=2
name=2023.06.12 00:00 444
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686568359
value1=117259.000000
value2=117259.000000
</object>

<object>
type=2
name=2023.06.12 00:00 456
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567222
value1=117271.000000
value2=117271.000000
</object>

<object>
type=2
name=2023.06.12 00:00 468
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566085
value1=117283.000000
value2=117283.000000
</object>

<object>
type=2
name=2023.06.12 00:00 480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566085
value1=117295.000000
value2=117295.000000
</object>

<object>
type=2
name=2023.06.12 00:00 492
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567222
value1=117307.000000
value2=117307.000000
</object>

<object>
type=2
name=2023.06.12 00:00 504
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566464
value1=117319.000000
value2=117319.000000
</object>

<object>
type=2
name=2023.06.12 00:00 516
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686569117
value1=117331.000000
value2=117331.000000
</object>

<object>
type=2
name=2023.06.12 00:00 528
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686572149
value1=117343.000000
value2=117343.000000
</object>

<object>
type=2
name=2023.06.12 00:00 540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686574802
value1=117355.000000
value2=117355.000000
</object>

<object>
type=2
name=2023.06.12 00:00 552
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686575181
value1=117367.000000
value2=117367.000000
</object>

<object>
type=2
name=2023.06.12 00:00 564
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686580108
value1=117379.000000
value2=117379.000000
</object>

<object>
type=2
name=2023.06.12 00:00 576
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686582003
value1=117391.000000
value2=117391.000000
</object>

<object>
type=2
name=2023.06.12 00:00 588
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686582003
value1=117403.000000
value2=117403.000000
</object>

<object>
type=2
name=2023.06.12 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686582761
value1=117415.000000
value2=117415.000000
</object>

<object>
type=2
name=2023.06.12 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686586172
value1=117427.000000
value2=117427.000000
</object>

<object>
type=2
name=2023.06.12 00:00 624
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686585793
value1=117439.000000
value2=117439.000000
</object>

<object>
type=2
name=2023.06.12 00:00 636
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686581624
value1=117451.000000
value2=117451.000000
</object>

<object>
type=2
name=2023.06.12 00:00 648
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686585793
value1=117463.000000
value2=117463.000000
</object>

<object>
type=2
name=2023.06.12 00:00 660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686588446
value1=117475.000000
value2=117475.000000
</object>

<object>
type=2
name=2023.06.12 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686586930
value1=117487.000000
value2=117487.000000
</object>

<object>
type=2
name=2023.06.12 00:00 684
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686583519
value1=117499.000000
value2=117499.000000
</object>

<object>
type=2
name=2023.06.12 00:00 696
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686581624
value1=117511.000000
value2=117511.000000
</object>

<object>
type=2
name=2023.06.12 00:00 708
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686578971
value1=117523.000000
value2=117523.000000
</object>

<object>
type=2
name=2023.06.12 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686580866
value1=117535.000000
value2=117535.000000
</object>

<object>
type=2
name=2023.06.12 00:00 732
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686585414
value1=117547.000000
value2=117547.000000
</object>

<object>
type=2
name=2023.06.12 00:00 744
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686588067
value1=117559.000000
value2=117559.000000
</object>

<object>
type=2
name=2023.06.12 00:00 756
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686586930
value1=117571.000000
value2=117571.000000
</object>

<object>
type=2
name=2023.06.12 00:00 768
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686581245
value1=117583.000000
value2=117583.000000
</object>

<object>
type=2
name=2023.06.12 00:00 780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686578213
value1=117595.000000
value2=117595.000000
</object>

<object>
type=2
name=2023.06.12 00:00 792
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686580108
value1=117607.000000
value2=117607.000000
</object>

<object>
type=2
name=2023.06.12 00:00 804
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686578971
value1=117619.000000
value2=117619.000000
</object>

<object>
type=2
name=2023.06.12 00:00 816
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686577834
value1=117631.000000
value2=117631.000000
</object>

<object>
type=2
name=2023.06.12 00:00 828
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686576318
value1=117643.000000
value2=117643.000000
</object>

<object>
type=2
name=2023.06.12 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686575939
value1=117655.000000
value2=117655.000000
</object>

<object>
type=2
name=2023.06.12 00:00 852
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686574423
value1=117667.000000
value2=117667.000000
</object>

<object>
type=2
name=2023.06.12 00:00 864
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686576318
value1=117679.000000
value2=117679.000000
</object>

<object>
type=2
name=2023.06.12 00:00 876
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686573665
value1=117691.000000
value2=117691.000000
</object>

<object>
type=2
name=2023.06.12 00:00 888
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686572907
value1=117703.000000
value2=117703.000000
</object>

<object>
type=2
name=2023.06.12 00:00 900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686570254
value1=117715.000000
value2=117715.000000
</object>

<object>
type=2
name=2023.06.12 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686571012
value1=117727.000000
value2=117727.000000
</object>

<object>
type=2
name=2023.06.12 00:00 924
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686571012
value1=117739.000000
value2=117739.000000
</object>

<object>
type=2
name=2023.06.12 00:00 936
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686571770
value1=117751.000000
value2=117751.000000
</object>

<object>
type=2
name=2023.06.12 00:00 948
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686570633
value1=117763.000000
value2=117763.000000
</object>

<object>
type=2
name=2023.06.12 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686570254
value1=117775.000000
value2=117775.000000
</object>

<object>
type=2
name=2023.06.12 00:00 972
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686568738
value1=117787.000000
value2=117787.000000
</object>

<object>
type=2
name=2023.06.12 00:00 984
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686569496
value1=117799.000000
value2=117799.000000
</object>

<object>
type=2
name=2023.06.12 00:00 996
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686568359
value1=117811.000000
value2=117811.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686569117
value1=117823.000000
value2=117823.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1020
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567980
value1=117835.000000
value2=117835.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1032
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567601
value1=117847.000000
value2=117847.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1044
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567980
value1=117859.000000
value2=117859.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1056
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567980
value1=117871.000000
value2=117871.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1068
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567601
value1=117883.000000
value2=117883.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1080
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686567601
value1=117895.000000
value2=117895.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1092
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566843
value1=117907.000000
value2=117907.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1104
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686566464
value1=117919.000000
value2=117919.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1116
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686565706
value1=117931.000000
value2=117931.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686564948
value1=117943.000000
value2=117943.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563432
value1=117955.000000
value2=117955.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1152
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563432
value1=117967.000000
value2=117967.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1164
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686563432
value1=117979.000000
value2=117979.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1176
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686562674
value1=117991.000000
value2=117991.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1188
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686562674
value1=118003.000000
value2=118003.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686561158
value1=118015.000000
value2=118015.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1212
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686561158
value1=118027.000000
value2=118027.000000
</object>

<object>
type=2
name=2023.06.12 00:00 1224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686560779
value1=118039.000000
value2=118039.000000
</object>

<object>
type=2
name=2023.06.12 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1686560400
date2=1686648600
value1=117470.000000
value2=117470.000000
</object>

</window>
</chart>