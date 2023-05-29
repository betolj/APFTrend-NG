<chart>
id=133292486024206414
symbol=WINM23
description=IBOVESPA MINI
period_type=0
period_size=5
digits=0
tick_size=5.000000
position_time=1685100900
scale_fix=0
scale_fixed_min=110135.000000
scale_fixed_max=112445.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=8
mode=1
fore=0
grid=0
volume=2
scroll=1
shift=1
shift_size=19.030649
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
window_left=52
window_top=52
window_right=1010
window_bottom=573
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
name=APFTrend-NG-EA
path=Experts\APFTrend-NG-EA.ex5
expertmode=0
<inputs>
=
allowPanel=true
show_indicator=true
m_magic=25052023
=
Lots=0
fullmoney=40000.0
margin=40000.0
=
loss_op=4.0
loss_day=6.0
loss_monthy=12.0
=
stdDev1=200.0
stdDev2=350.0
Color_Bar_Indef=12903679
Color_Bar_Up=32768
Color_Bar_Down=255
applied_price=1
continue_trade=2
trade_mode=1
end_time=17:40
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
Debug_Sum=3
</inputs>
</expert>

<window>
height=134.523810
objects=431

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
color=12903679,32768,255,0
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
end_time=17:40
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
Debug_Sum=3
</inputs>
</indicator>
<object>
type=102
name=Preço
hidden=1
descr=Preço atual: 111640.00
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
descr=Lucro diário: 0.00
color=8421504
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
descr=Loss Operação: 1600.00
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
descr=Loss Diário: 2400.00
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
descr=Loss Mensal: 4800.00
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
descr=MFI: 48.28
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
descr=RSI: 57.94
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
name=ATR
hidden=1
descr=stdDev: 89.58
color=8421376
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
name=APF_SECCLOSE
hidden=1
descr=Seconds... 254
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
descr=Trade alert: __LONG  Trend
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

</window>
</chart>