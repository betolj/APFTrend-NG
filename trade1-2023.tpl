<chart>
id=133292486024206414
symbol=WINM23
description=IBOVESPA MINI
period_type=0
period_size=5
digits=0
tick_size=5.000000
position_time=1686567900
scale_fix=0
scale_fixed_min=116195.000000
scale_fixed_max=118255.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=8
mode=1
fore=0
grid=0
volume=2
scroll=0
shift=1
shift_size=19.030649
fixed_pos=0.000000
ticker=1
ohlc=0
one_click=0
one_click_btn=1
bidline=0
askline=0
lastline=1
days=0
descriptions=0
tradelines=1
tradehistory=1
window_left=52
window_top=52
window_right=1010
window_bottom=573
window_type=3
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
windows_total=2

<expert>
name=APFTrend-NG-EA
path=Experts\APFTrend-NG-EA.ex5
expertmode=1
<inputs>
=
allowPanel=true
show_indicator=true
show_askbid=false
m_magic=25052023
eamode=0
use_rlp=true
maxtrades=15
=
scalpmode=true
spdistance=250.0
=
Lots=1
MinLots=1
takeprofit=500.0
stoploss=250.0
fullmoney=50000.0
margin=50000.0
=
ts_mode=2
ts_wait=0
ts_step=75
ts_update=45
=
loss_op=4.0
loss_day=6.0
loss_monthy=15.0
=
stdDev1=200.0
stdDev2=350.0
Color_Bar_Indef=12903679
Color_Bar_Up=32768
Color_Bar_Down=255
applied_price=1
continue_trade=2
trade_mode=1
end_time=17:35
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
Debug_Sum=2
</inputs>
</expert>

<window>
height=156.611189
objects=942

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
name=Moving Average
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

<graph>
name=
draw=129
style=3
width=1
arrow=251
color=255
</graph>
period=8
method=1
</indicator>

<indicator>
name=Moving Average
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

<graph>
name=
draw=129
style=0
width=2
arrow=251
color=32768
</graph>
period=25
method=1
</indicator>

<indicator>
name=Moving Average
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

<graph>
name=
draw=129
style=0
width=2
arrow=251
color=3937500
</graph>
period=100
method=1
</indicator>

<indicator>
name=Moving Average
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

<graph>
name=
draw=129
style=0
width=2
arrow=251
color=55295
</graph>
period=200
method=1
</indicator>

<indicator>
name=Moving Average
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

<graph>
name=
draw=129
style=0
width=2
arrow=251
color=755384
</graph>
period=50
method=1
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\SSL_Channel_Chart.ex5
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
name=Bears
draw=1
style=1
width=1
arrow=251
color=42495
</graph>

<graph>
name=Bulls
draw=1
style=1
width=1
arrow=251
color=16776960
</graph>
<inputs>
MA_Method=1
Lb=10
</inputs>
</indicator>

<indicator>
name=Custom Indicator
path=Indicators\APFTrend-NG/APFTrend-NG.ex5
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
expertmode=536872002
fixed_height=-1

<graph>
name=Open;High;Low;Close
draw=17
style=0
width=3
color=12903679,32768,255,1078436495
</graph>

<graph>
name=
draw=1
style=0
width=2
color=14772545
</graph>

<graph>
name=
draw=0
style=0
width=1
color=
</graph>

<graph>
name=
draw=0
style=0
width=1
color=
</graph>
<inputs>
Color_Bar_Indef=12903679
Color_Bar_Up=32768
Color_Bar_Down=255
applied_price=1
continue_trade=2
trade_mode=1
end_time=17:35
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
Debug_Sum=2
</inputs>
</indicator>
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
type=102
name=Preço
hidden=1
descr=Preço atual: 116700.00
color=2631995
selectable=0
angle=0
pos_x=14
pos_y=64
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Lucro
hidden=1
descr=Lucro na operação: 0.00
color=8421504
selectable=0
angle=0
pos_x=14
pos_y=94
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Total
hidden=1
descr=Lucro diário: 18335.18
color=32768
selectable=0
angle=0
pos_x=14
pos_y=114
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Lots
hidden=1
descr=Lotes: 0.00
color=2631995
selectable=0
angle=0
pos_x=224
pos_y=64
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Operação
hidden=1
descr=Loss Operação: 2000.00
color=5737262
selectable=0
angle=0
pos_x=224
pos_y=84
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Diário
hidden=1
descr=Loss Diário: 21335.18
color=5737262
selectable=0
angle=0
pos_x=224
pos_y=104
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=Mensal
hidden=1
descr=Loss Mensal: 25835.18
color=5737262
selectable=0
angle=0
pos_x=224
pos_y=124
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=MFI
hidden=1
descr=MFI: 52.24
color=8421376
selectable=0
angle=0
pos_x=14
pos_y=154
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=RSI
hidden=1
descr=RSI: 46.26
color=8421376
selectable=0
angle=0
pos_x=94
pos_y=154
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=STDDEV
hidden=1
descr=stdDev: 61.71
color=8421504
selectable=0
angle=0
pos_x=174
pos_y=154
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=SLOTS
hidden=1
descr=Scalp lots: 40
color=2631995
selectable=0
angle=0
pos_x=14
pos_y=177
fontsz=10
fontnm=Trebuchet MS
anchorpos=0
refpoint=0
</object>

<object>
type=102
name=APF_SECCLOSE
hidden=1
descr=Seconds... 94
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
descr=Trade alert: _SHORT  Trend
color=32768
selectable=0
angle=0
pos_x=1152
pos_y=55
fontsz=14
fontnm=Arial
anchorpos=0
refpoint=0
</object>

</window>

<window>
height=27.912621
objects=0

<indicator>
name=Commodity Channel Index
path=
apply=6
show_data=1
scale_inherit=0
scale_line=0
scale_line_percent=50
scale_line_value=0.000000
scale_fix_min=0
scale_fix_min_val=-294.554200
scale_fix_max=0
scale_fix_max_val=266.208200
expertmode=0
fixed_height=-1

<graph>
name=
draw=1
style=0
width=1
color=11186720
</graph>

<level>
level=-100.000000
style=2
color=12632256
width=1
descr=
</level>

<level>
level=100.000000
style=2
color=12632256
width=1
descr=
</level>

<level>
level=0.000000
style=2
color=12632256
width=1
descr=
</level>

<level>
level=50.000000
style=2
color=12632256
width=1
descr=
</level>

<level>
level=-50.000000
style=2
color=12632256
width=1
descr=
</level>
period=9
</indicator>
</window>
</chart>