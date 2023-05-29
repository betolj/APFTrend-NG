<chart>
id=133298394271835665
symbol=WINM23
description=IBOVESPA MINI
period_type=0
period_size=5
digits=0
tick_size=5.000000
position_time=0
scale_fix=0
scale_fixed_min=111140.000000
scale_fixed_max=112240.000000
scale_fix11=0
scale_bar=0
scale_bar_val=1.000000
scale=16
mode=1
fore=0
grid=1
volume=2
scroll=0
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
window_left=0
window_top=0
window_right=0
window_bottom=0
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
objects=1519

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
color=11119017,9639167,7451452
</graph>
<inputs>
inpPeriod=20
inpPrice=1
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
date2=1685355360
value1=112850.000000
value2=112850.000000
</object>

<object>
type=101
name=2023.02.16 00:00 POC L
hidden=1
descr=112850
color=42495
selectable=0
angle=0
date1=1685355660
value1=112850.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
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
date2=1685355360
value1=113010.000000
value2=113010.000000
</object>

<object>
type=101
name=2023.02.17 00:00 POC L
hidden=1
descr=113010
color=42495
selectable=0
angle=0
date1=1685355660
value1=113010.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
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
date2=1684750140
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
date2=1685355360
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
date1=1685355660
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
date2=1685355360
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
date1=1685355660
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
date2=1685355360
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
date1=1685355660
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
date2=1685355360
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
date1=1685355660
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
name=2023.05.15 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684141526
value1=109345.000000
value2=109345.000000
</object>

<object>
type=2
name=2023.05.15 00:00 10
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684141526
value1=109355.000000
value2=109355.000000
</object>

<object>
type=2
name=2023.05.15 00:00 20
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684141852
value1=109365.000000
value2=109365.000000
</object>

<object>
type=2
name=2023.05.15 00:00 30
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142178
value1=109375.000000
value2=109375.000000
</object>

<object>
type=2
name=2023.05.15 00:00 40
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=109385.000000
value2=109385.000000
</object>

<object>
type=2
name=2023.05.15 00:00 50
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=109395.000000
value2=109395.000000
</object>

<object>
type=2
name=2023.05.15 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=109405.000000
value2=109405.000000
</object>

<object>
type=2
name=2023.05.15 00:00 70
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=109415.000000
value2=109415.000000
</object>

<object>
type=2
name=2023.05.15 00:00 80
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=109425.000000
value2=109425.000000
</object>

<object>
type=2
name=2023.05.15 00:00 90
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=109435.000000
value2=109435.000000
</object>

<object>
type=2
name=2023.05.15 00:00 100
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143808
value1=109445.000000
value2=109445.000000
</object>

<object>
type=2
name=2023.05.15 00:00 110
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143808
value1=109455.000000
value2=109455.000000
</object>

<object>
type=2
name=2023.05.15 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143482
value1=109465.000000
value2=109465.000000
</object>

<object>
type=2
name=2023.05.15 00:00 130
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143482
value1=109475.000000
value2=109475.000000
</object>

<object>
type=2
name=2023.05.15 00:00 140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143808
value1=109485.000000
value2=109485.000000
</object>

<object>
type=2
name=2023.05.15 00:00 150
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143808
value1=109495.000000
value2=109495.000000
</object>

<object>
type=2
name=2023.05.15 00:00 160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143482
value1=109505.000000
value2=109505.000000
</object>

<object>
type=2
name=2023.05.15 00:00 170
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143482
value1=109515.000000
value2=109515.000000
</object>

<object>
type=2
name=2023.05.15 00:00 180
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144460
value1=109525.000000
value2=109525.000000
</object>

<object>
type=2
name=2023.05.15 00:00 190
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144134
value1=109535.000000
value2=109535.000000
</object>

<object>
type=2
name=2023.05.15 00:00 200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143482
value1=109545.000000
value2=109545.000000
</object>

<object>
type=2
name=2023.05.15 00:00 210
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144134
value1=109555.000000
value2=109555.000000
</object>

<object>
type=2
name=2023.05.15 00:00 220
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684145112
value1=109565.000000
value2=109565.000000
</object>

<object>
type=2
name=2023.05.15 00:00 230
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684146090
value1=109575.000000
value2=109575.000000
</object>

<object>
type=2
name=2023.05.15 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684147394
value1=109585.000000
value2=109585.000000
</object>

<object>
type=2
name=2023.05.15 00:00 250
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684149024
value1=109595.000000
value2=109595.000000
</object>

<object>
type=2
name=2023.05.15 00:00 260
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150980
value1=109605.000000
value2=109605.000000
</object>

<object>
type=2
name=2023.05.15 00:00 270
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684152610
value1=109615.000000
value2=109615.000000
</object>

<object>
type=2
name=2023.05.15 00:00 280
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684155218
value1=109625.000000
value2=109625.000000
</object>

<object>
type=2
name=2023.05.15 00:00 290
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156848
value1=109635.000000
value2=109635.000000
</object>

<object>
type=2
name=2023.05.15 00:00 300
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684161412
value1=109645.000000
value2=109645.000000
</object>

<object>
type=2
name=2023.05.15 00:00 310
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684163042
value1=109655.000000
value2=109655.000000
</object>

<object>
type=2
name=2023.05.15 00:00 320
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684163694
value1=109665.000000
value2=109665.000000
</object>

<object>
type=2
name=2023.05.15 00:00 330
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684165650
value1=109675.000000
value2=109675.000000
</object>

<object>
type=2
name=2023.05.15 00:00 340
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684165976
value1=109685.000000
value2=109685.000000
</object>

<object>
type=2
name=2023.05.15 00:00 350
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684166302
value1=109695.000000
value2=109695.000000
</object>

<object>
type=2
name=2023.05.15 00:00 360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684168258
value1=109705.000000
value2=109705.000000
</object>

<object>
type=2
name=2023.05.15 00:00 370
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684166954
value1=109715.000000
value2=109715.000000
</object>

<object>
type=2
name=2023.05.15 00:00 380
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684165324
value1=109725.000000
value2=109725.000000
</object>

<object>
type=2
name=2023.05.15 00:00 390
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684164346
value1=109735.000000
value2=109735.000000
</object>

<object>
type=2
name=2023.05.15 00:00 400
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684162716
value1=109745.000000
value2=109745.000000
</object>

<object>
type=2
name=2023.05.15 00:00 410
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684168258
value1=109755.000000
value2=109755.000000
</object>

<object>
type=2
name=2023.05.15 00:00 420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684166628
value1=109765.000000
value2=109765.000000
</object>

<object>
type=2
name=2023.05.15 00:00 430
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684166954
value1=109775.000000
value2=109775.000000
</object>

<object>
type=2
name=2023.05.15 00:00 440
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684168258
value1=109785.000000
value2=109785.000000
</object>

<object>
type=2
name=2023.05.15 00:00 450
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684168910
value1=109795.000000
value2=109795.000000
</object>

<object>
type=2
name=2023.05.15 00:00 460
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684165976
value1=109805.000000
value2=109805.000000
</object>

<object>
type=2
name=2023.05.15 00:00 470
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684163694
value1=109815.000000
value2=109815.000000
</object>

<object>
type=2
name=2023.05.15 00:00 480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684161738
value1=109825.000000
value2=109825.000000
</object>

<object>
type=2
name=2023.05.15 00:00 490
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684159130
value1=109835.000000
value2=109835.000000
</object>

<object>
type=2
name=2023.05.15 00:00 500
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156848
value1=109845.000000
value2=109845.000000
</object>

<object>
type=2
name=2023.05.15 00:00 510
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156522
value1=109855.000000
value2=109855.000000
</object>

<object>
type=2
name=2023.05.15 00:00 520
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157826
value1=109865.000000
value2=109865.000000
</object>

<object>
type=2
name=2023.05.15 00:00 530
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157826
value1=109875.000000
value2=109875.000000
</object>

<object>
type=2
name=2023.05.15 00:00 540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684159130
value1=109885.000000
value2=109885.000000
</object>

<object>
type=2
name=2023.05.15 00:00 550
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684158804
value1=109895.000000
value2=109895.000000
</object>

<object>
type=2
name=2023.05.15 00:00 560
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157826
value1=109905.000000
value2=109905.000000
</object>

<object>
type=2
name=2023.05.15 00:00 570
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157174
value1=109915.000000
value2=109915.000000
</object>

<object>
type=2
name=2023.05.15 00:00 580
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684159456
value1=109925.000000
value2=109925.000000
</object>

<object>
type=2
name=2023.05.15 00:00 590
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684159130
value1=109935.000000
value2=109935.000000
</object>

<object>
type=2
name=2023.05.15 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684158478
value1=109945.000000
value2=109945.000000
</object>

<object>
type=2
name=2023.05.15 00:00 610
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684158152
value1=109955.000000
value2=109955.000000
</object>

<object>
type=2
name=2023.05.15 00:00 620
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684158478
value1=109965.000000
value2=109965.000000
</object>

<object>
type=2
name=2023.05.15 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684159130
value1=109975.000000
value2=109975.000000
</object>

<object>
type=2
name=2023.05.15 00:00 640
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156848
value1=109985.000000
value2=109985.000000
</object>

<object>
type=2
name=2023.05.15 00:00 650
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157826
value1=109995.000000
value2=109995.000000
</object>

<object>
type=2
name=2023.05.15 00:00 660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684157174
value1=110005.000000
value2=110005.000000
</object>

<object>
type=2
name=2023.05.15 00:00 670
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684153914
value1=110015.000000
value2=110015.000000
</object>

<object>
type=2
name=2023.05.15 00:00 680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684151958
value1=110025.000000
value2=110025.000000
</object>

<object>
type=2
name=2023.05.15 00:00 690
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684151306
value1=110035.000000
value2=110035.000000
</object>

<object>
type=2
name=2023.05.15 00:00 700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150002
value1=110045.000000
value2=110045.000000
</object>

<object>
type=2
name=2023.05.15 00:00 710
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684149350
value1=110055.000000
value2=110055.000000
</object>

<object>
type=2
name=2023.05.15 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684152610
value1=110065.000000
value2=110065.000000
</object>

<object>
type=2
name=2023.05.15 00:00 730
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150980
value1=110075.000000
value2=110075.000000
</object>

<object>
type=2
name=2023.05.15 00:00 740
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150980
value1=110085.000000
value2=110085.000000
</object>

<object>
type=2
name=2023.05.15 00:00 750
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150002
value1=110095.000000
value2=110095.000000
</object>

<object>
type=2
name=2023.05.15 00:00 760
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150002
value1=110105.000000
value2=110105.000000
</object>

<object>
type=2
name=2023.05.15 00:00 770
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684149676
value1=110115.000000
value2=110115.000000
</object>

<object>
type=2
name=2023.05.15 00:00 780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684149024
value1=110125.000000
value2=110125.000000
</object>

<object>
type=2
name=2023.05.15 00:00 790
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684151306
value1=110135.000000
value2=110135.000000
</object>

<object>
type=2
name=2023.05.15 00:00 800
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684152284
value1=110145.000000
value2=110145.000000
</object>

<object>
type=2
name=2023.05.15 00:00 810
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684155218
value1=110155.000000
value2=110155.000000
</object>

<object>
type=2
name=2023.05.15 00:00 820
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156522
value1=110165.000000
value2=110165.000000
</object>

<object>
type=2
name=2023.05.15 00:00 830
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684156848
value1=110175.000000
value2=110175.000000
</object>

<object>
type=2
name=2023.05.15 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684154892
value1=110185.000000
value2=110185.000000
</object>

<object>
type=2
name=2023.05.15 00:00 850
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684152284
value1=110195.000000
value2=110195.000000
</object>

<object>
type=2
name=2023.05.15 00:00 860
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684150328
value1=110205.000000
value2=110205.000000
</object>

<object>
type=2
name=2023.05.15 00:00 870
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684147720
value1=110215.000000
value2=110215.000000
</object>

<object>
type=2
name=2023.05.15 00:00 880
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684146416
value1=110225.000000
value2=110225.000000
</object>

<object>
type=2
name=2023.05.15 00:00 890
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684145112
value1=110235.000000
value2=110235.000000
</object>

<object>
type=2
name=2023.05.15 00:00 900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144134
value1=110245.000000
value2=110245.000000
</object>

<object>
type=2
name=2023.05.15 00:00 910
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144460
value1=110255.000000
value2=110255.000000
</object>

<object>
type=2
name=2023.05.15 00:00 920
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684144134
value1=110265.000000
value2=110265.000000
</object>

<object>
type=2
name=2023.05.15 00:00 930
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=110275.000000
value2=110275.000000
</object>

<object>
type=2
name=2023.05.15 00:00 940
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=110285.000000
value2=110285.000000
</object>

<object>
type=2
name=2023.05.15 00:00 950
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=110295.000000
value2=110295.000000
</object>

<object>
type=2
name=2023.05.15 00:00 960
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=110305.000000
value2=110305.000000
</object>

<object>
type=2
name=2023.05.15 00:00 970
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=110315.000000
value2=110315.000000
</object>

<object>
type=2
name=2023.05.15 00:00 980
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684143156
value1=110325.000000
value2=110325.000000
</object>

<object>
type=2
name=2023.05.15 00:00 990
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=110335.000000
value2=110335.000000
</object>

<object>
type=2
name=2023.05.15 00:00 1000
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142830
value1=110345.000000
value2=110345.000000
</object>

<object>
type=2
name=2023.05.15 00:00 1010
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684142178
value1=110355.000000
value2=110355.000000
</object>

<object>
type=2
name=2023.05.15 00:00 1020
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684141526
value1=110365.000000
value2=110365.000000
</object>

<object>
type=2
name=2023.05.15 00:00 1030
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684141200
date2=1684141200
value1=110375.000000
value2=110375.000000
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
name=2023.05.16 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684227878
value1=108770.000000
value2=108770.000000
</object>

<object>
type=2
name=2023.05.16 00:00 24
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228156
value1=108794.000000
value2=108794.000000
</object>

<object>
type=2
name=2023.05.16 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=108818.000000
value2=108818.000000
</object>

<object>
type=2
name=2023.05.16 00:00 72
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230658
value1=108842.000000
value2=108842.000000
</object>

<object>
type=2
name=2023.05.16 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232048
value1=108866.000000
value2=108866.000000
</object>

<object>
type=2
name=2023.05.16 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231770
value1=108890.000000
value2=108890.000000
</object>

<object>
type=2
name=2023.05.16 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230658
value1=108914.000000
value2=108914.000000
</object>

<object>
type=2
name=2023.05.16 00:00 168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231492
value1=108938.000000
value2=108938.000000
</object>

<object>
type=2
name=2023.05.16 00:00 192
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230380
value1=108962.000000
value2=108962.000000
</object>

<object>
type=2
name=2023.05.16 00:00 216
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229546
value1=108986.000000
value2=108986.000000
</object>

<object>
type=2
name=2023.05.16 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229824
value1=109010.000000
value2=109010.000000
</object>

<object>
type=2
name=2023.05.16 00:00 264
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230936
value1=109034.000000
value2=109034.000000
</object>

<object>
type=2
name=2023.05.16 00:00 288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232882
value1=109058.000000
value2=109058.000000
</object>

<object>
type=2
name=2023.05.16 00:00 312
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232604
value1=109082.000000
value2=109082.000000
</object>

<object>
type=2
name=2023.05.16 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231770
value1=109106.000000
value2=109106.000000
</object>

<object>
type=2
name=2023.05.16 00:00 360
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=109130.000000
value2=109130.000000
</object>

<object>
type=2
name=2023.05.16 00:00 384
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=109154.000000
value2=109154.000000
</object>

<object>
type=2
name=2023.05.16 00:00 408
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=109178.000000
value2=109178.000000
</object>

<object>
type=2
name=2023.05.16 00:00 432
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228434
value1=109202.000000
value2=109202.000000
</object>

<object>
type=2
name=2023.05.16 00:00 456
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228156
value1=109226.000000
value2=109226.000000
</object>

<object>
type=2
name=2023.05.16 00:00 480
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684227878
value1=109250.000000
value2=109250.000000
</object>

<object>
type=2
name=2023.05.16 00:00 504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684227878
value1=109274.000000
value2=109274.000000
</object>

<object>
type=2
name=2023.05.16 00:00 528
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228156
value1=109298.000000
value2=109298.000000
</object>

<object>
type=2
name=2023.05.16 00:00 552
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228434
value1=109322.000000
value2=109322.000000
</object>

<object>
type=2
name=2023.05.16 00:00 576
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=109346.000000
value2=109346.000000
</object>

<object>
type=2
name=2023.05.16 00:00 600
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=109370.000000
value2=109370.000000
</object>

<object>
type=2
name=2023.05.16 00:00 624
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=109394.000000
value2=109394.000000
</object>

<object>
type=2
name=2023.05.16 00:00 648
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=109418.000000
value2=109418.000000
</object>

<object>
type=2
name=2023.05.16 00:00 672
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229824
value1=109442.000000
value2=109442.000000
</object>

<object>
type=2
name=2023.05.16 00:00 696
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230102
value1=109466.000000
value2=109466.000000
</object>

<object>
type=2
name=2023.05.16 00:00 720
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229824
value1=109490.000000
value2=109490.000000
</object>

<object>
type=2
name=2023.05.16 00:00 744
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230102
value1=109514.000000
value2=109514.000000
</object>

<object>
type=2
name=2023.05.16 00:00 768
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230936
value1=109538.000000
value2=109538.000000
</object>

<object>
type=2
name=2023.05.16 00:00 792
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230936
value1=109562.000000
value2=109562.000000
</object>

<object>
type=2
name=2023.05.16 00:00 816
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231770
value1=109586.000000
value2=109586.000000
</object>

<object>
type=2
name=2023.05.16 00:00 840
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232604
value1=109610.000000
value2=109610.000000
</object>

<object>
type=2
name=2023.05.16 00:00 864
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230380
value1=109634.000000
value2=109634.000000
</object>

<object>
type=2
name=2023.05.16 00:00 888
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=109658.000000
value2=109658.000000
</object>

<object>
type=2
name=2023.05.16 00:00 912
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=109682.000000
value2=109682.000000
</object>

<object>
type=2
name=2023.05.16 00:00 936
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=109706.000000
value2=109706.000000
</object>

<object>
type=2
name=2023.05.16 00:00 960
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228434
value1=109730.000000
value2=109730.000000
</object>

<object>
type=2
name=2023.05.16 00:00 984
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228434
value1=109754.000000
value2=109754.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1008
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=109778.000000
value2=109778.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1032
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230102
value1=109802.000000
value2=109802.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1056
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231492
value1=109826.000000
value2=109826.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1080
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231492
value1=109850.000000
value2=109850.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1104
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232882
value1=109874.000000
value2=109874.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684234828
value1=109898.000000
value2=109898.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1152
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684235940
value1=109922.000000
value2=109922.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1176
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684237330
value1=109946.000000
value2=109946.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684236218
value1=109970.000000
value2=109970.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1224
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684233438
value1=109994.000000
value2=109994.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1248
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684234828
value1=110018.000000
value2=110018.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1272
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684236496
value1=110042.000000
value2=110042.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1296
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684237330
value1=110066.000000
value2=110066.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1320
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684239554
value1=110090.000000
value2=110090.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1344
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684242612
value1=110114.000000
value2=110114.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1368
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684247616
value1=110138.000000
value2=110138.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1392
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684255956
value1=110162.000000
value2=110162.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1416
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684253454
value1=110186.000000
value2=110186.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1440
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684245948
value1=110210.000000
value2=110210.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1464
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684240388
value1=110234.000000
value2=110234.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1488
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684237608
value1=110258.000000
value2=110258.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1512
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684238998
value1=110282.000000
value2=110282.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1536
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684235106
value1=110306.000000
value2=110306.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1560
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232882
value1=110330.000000
value2=110330.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1584
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232882
value1=110354.000000
value2=110354.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1608
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231492
value1=110378.000000
value2=110378.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232048
value1=110402.000000
value2=110402.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1656
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232882
value1=110426.000000
value2=110426.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1680
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684233160
value1=110450.000000
value2=110450.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1704
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684234272
value1=110474.000000
value2=110474.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1728
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684234272
value1=110498.000000
value2=110498.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1752
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232604
value1=110522.000000
value2=110522.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1776
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232048
value1=110546.000000
value2=110546.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1800
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230936
value1=110570.000000
value2=110570.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1824
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229546
value1=110594.000000
value2=110594.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1848
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=110618.000000
value2=110618.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1872
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=110642.000000
value2=110642.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1896
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=110666.000000
value2=110666.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1920
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=110690.000000
value2=110690.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1944
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=110714.000000
value2=110714.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1968
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=110738.000000
value2=110738.000000
</object>

<object>
type=2
name=2023.05.16 00:00 1992
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229546
value1=110762.000000
value2=110762.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2016
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=110786.000000
value2=110786.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2040
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229546
value1=110810.000000
value2=110810.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2064
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229546
value1=110834.000000
value2=110834.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2088
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230102
value1=110858.000000
value2=110858.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230658
value1=110882.000000
value2=110882.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2136
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230936
value1=110906.000000
value2=110906.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231770
value1=110930.000000
value2=110930.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2184
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232326
value1=110954.000000
value2=110954.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2208
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232048
value1=110978.000000
value2=110978.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2232
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684232048
value1=111002.000000
value2=111002.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2256
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684231492
value1=111026.000000
value2=111026.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230380
value1=111050.000000
value2=111050.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2304
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684230380
value1=111074.000000
value2=111074.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2328
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=111098.000000
value2=111098.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2352
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=111122.000000
value2=111122.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2376
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684229268
value1=111146.000000
value2=111146.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228990
value1=111170.000000
value2=111170.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2424
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=111194.000000
value2=111194.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2448
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684228712
value1=111218.000000
value2=111218.000000
</object>

<object>
type=2
name=2023.05.16 00:00 2472
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684227600
date2=1684227878
value1=111242.000000
value2=111242.000000
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
name=2023.05.17 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314296
value1=109150.000000
value2=109150.000000
</object>

<object>
type=2
name=2023.05.17 00:00 16
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=109166.000000
value2=109166.000000
</object>

<object>
type=2
name=2023.05.17 00:00 32
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=109182.000000
value2=109182.000000
</object>

<object>
type=2
name=2023.05.17 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109198.000000
value2=109198.000000
</object>

<object>
type=2
name=2023.05.17 00:00 64
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316072
value1=109214.000000
value2=109214.000000
</object>

<object>
type=2
name=2023.05.17 00:00 80
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109230.000000
value2=109230.000000
</object>

<object>
type=2
name=2023.05.17 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109246.000000
value2=109246.000000
</object>

<object>
type=2
name=2023.05.17 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109262.000000
value2=109262.000000
</object>

<object>
type=2
name=2023.05.17 00:00 128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109278.000000
value2=109278.000000
</object>

<object>
type=2
name=2023.05.17 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315480
value1=109294.000000
value2=109294.000000
</object>

<object>
type=2
name=2023.05.17 00:00 160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109310.000000
value2=109310.000000
</object>

<object>
type=2
name=2023.05.17 00:00 176
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=109326.000000
value2=109326.000000
</object>

<object>
type=2
name=2023.05.17 00:00 192
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317552
value1=109342.000000
value2=109342.000000
</object>

<object>
type=2
name=2023.05.17 00:00 208
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317552
value1=109358.000000
value2=109358.000000
</object>

<object>
type=2
name=2023.05.17 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317848
value1=109374.000000
value2=109374.000000
</object>

<object>
type=2
name=2023.05.17 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=109390.000000
value2=109390.000000
</object>

<object>
type=2
name=2023.05.17 00:00 256
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=109406.000000
value2=109406.000000
</object>

<object>
type=2
name=2023.05.17 00:00 272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109422.000000
value2=109422.000000
</object>

<object>
type=2
name=2023.05.17 00:00 288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316072
value1=109438.000000
value2=109438.000000
</object>

<object>
type=2
name=2023.05.17 00:00 304
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109454.000000
value2=109454.000000
</object>

<object>
type=2
name=2023.05.17 00:00 320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315184
value1=109470.000000
value2=109470.000000
</object>

<object>
type=2
name=2023.05.17 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314888
value1=109486.000000
value2=109486.000000
</object>

<object>
type=2
name=2023.05.17 00:00 352
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=109502.000000
value2=109502.000000
</object>

<object>
type=2
name=2023.05.17 00:00 368
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314888
value1=109518.000000
value2=109518.000000
</object>

<object>
type=2
name=2023.05.17 00:00 384
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315480
value1=109534.000000
value2=109534.000000
</object>

<object>
type=2
name=2023.05.17 00:00 400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316072
value1=109550.000000
value2=109550.000000
</object>

<object>
type=2
name=2023.05.17 00:00 416
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109566.000000
value2=109566.000000
</object>

<object>
type=2
name=2023.05.17 00:00 432
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109582.000000
value2=109582.000000
</object>

<object>
type=2
name=2023.05.17 00:00 448
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109598.000000
value2=109598.000000
</object>

<object>
type=2
name=2023.05.17 00:00 464
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=109614.000000
value2=109614.000000
</object>

<object>
type=2
name=2023.05.17 00:00 480
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=109630.000000
value2=109630.000000
</object>

<object>
type=2
name=2023.05.17 00:00 496
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109646.000000
value2=109646.000000
</object>

<object>
type=2
name=2023.05.17 00:00 512
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684318736
value1=109662.000000
value2=109662.000000
</object>

<object>
type=2
name=2023.05.17 00:00 528
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317848
value1=109678.000000
value2=109678.000000
</object>

<object>
type=2
name=2023.05.17 00:00 544
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317552
value1=109694.000000
value2=109694.000000
</object>

<object>
type=2
name=2023.05.17 00:00 560
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109710.000000
value2=109710.000000
</object>

<object>
type=2
name=2023.05.17 00:00 576
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109726.000000
value2=109726.000000
</object>

<object>
type=2
name=2023.05.17 00:00 592
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317848
value1=109742.000000
value2=109742.000000
</object>

<object>
type=2
name=2023.05.17 00:00 608
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317848
value1=109758.000000
value2=109758.000000
</object>

<object>
type=2
name=2023.05.17 00:00 624
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=109774.000000
value2=109774.000000
</object>

<object>
type=2
name=2023.05.17 00:00 640
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=109790.000000
value2=109790.000000
</object>

<object>
type=2
name=2023.05.17 00:00 656
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109806.000000
value2=109806.000000
</object>

<object>
type=2
name=2023.05.17 00:00 672
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315184
value1=109822.000000
value2=109822.000000
</object>

<object>
type=2
name=2023.05.17 00:00 688
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=109838.000000
value2=109838.000000
</object>

<object>
type=2
name=2023.05.17 00:00 704
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=109854.000000
value2=109854.000000
</object>

<object>
type=2
name=2023.05.17 00:00 720
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314296
value1=109870.000000
value2=109870.000000
</object>

<object>
type=2
name=2023.05.17 00:00 736
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314296
value1=109886.000000
value2=109886.000000
</object>

<object>
type=2
name=2023.05.17 00:00 752
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314296
value1=109902.000000
value2=109902.000000
</object>

<object>
type=2
name=2023.05.17 00:00 768
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315184
value1=109918.000000
value2=109918.000000
</object>

<object>
type=2
name=2023.05.17 00:00 784
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315776
value1=109934.000000
value2=109934.000000
</object>

<object>
type=2
name=2023.05.17 00:00 800
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109950.000000
value2=109950.000000
</object>

<object>
type=2
name=2023.05.17 00:00 816
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316664
value1=109966.000000
value2=109966.000000
</object>

<object>
type=2
name=2023.05.17 00:00 832
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=109982.000000
value2=109982.000000
</object>

<object>
type=2
name=2023.05.17 00:00 848
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=109998.000000
value2=109998.000000
</object>

<object>
type=2
name=2023.05.17 00:00 864
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317848
value1=110014.000000
value2=110014.000000
</object>

<object>
type=2
name=2023.05.17 00:00 880
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684320216
value1=110030.000000
value2=110030.000000
</object>

<object>
type=2
name=2023.05.17 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684322584
value1=110046.000000
value2=110046.000000
</object>

<object>
type=2
name=2023.05.17 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684323768
value1=110062.000000
value2=110062.000000
</object>

<object>
type=2
name=2023.05.17 00:00 928
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684324064
value1=110078.000000
value2=110078.000000
</object>

<object>
type=2
name=2023.05.17 00:00 944
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684327320
value1=110094.000000
value2=110094.000000
</object>

<object>
type=2
name=2023.05.17 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684329392
value1=110110.000000
value2=110110.000000
</object>

<object>
type=2
name=2023.05.17 00:00 976
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684329984
value1=110126.000000
value2=110126.000000
</object>

<object>
type=2
name=2023.05.17 00:00 992
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684331464
value1=110142.000000
value2=110142.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684330576
value1=110158.000000
value2=110158.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1024
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684329392
value1=110174.000000
value2=110174.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1040
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684329688
value1=110190.000000
value2=110190.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1056
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684327616
value1=110206.000000
value2=110206.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1072
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684328208
value1=110222.000000
value2=110222.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684330280
value1=110238.000000
value2=110238.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1104
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684331464
value1=110254.000000
value2=110254.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684334720
value1=110270.000000
value2=110270.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1136
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684337384
value1=110286.000000
value2=110286.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1152
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684339752
value1=110302.000000
value2=110302.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1168
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684340344
value1=110318.000000
value2=110318.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1184
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684338864
value1=110334.000000
value2=110334.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684340640
value1=110350.000000
value2=110350.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1216
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684340344
value1=110366.000000
value2=110366.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1232
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684338864
value1=110382.000000
value2=110382.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1248
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684338568
value1=110398.000000
value2=110398.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1264
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684332056
value1=110414.000000
value2=110414.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1280
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684330576
value1=110430.000000
value2=110430.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1296
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684329096
value1=110446.000000
value2=110446.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1312
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684326136
value1=110462.000000
value2=110462.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1328
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684326432
value1=110478.000000
value2=110478.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1344
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684325544
value1=110494.000000
value2=110494.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684325840
value1=110510.000000
value2=110510.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1376
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684326136
value1=110526.000000
value2=110526.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1392
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684326136
value1=110542.000000
value2=110542.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1408
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684322584
value1=110558.000000
value2=110558.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1424
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684319032
value1=110574.000000
value2=110574.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=110590.000000
value2=110590.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1456
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316960
value1=110606.000000
value2=110606.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1472
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=110622.000000
value2=110622.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1488
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=110638.000000
value2=110638.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=110654.000000
value2=110654.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=110670.000000
value2=110670.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1536
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=110686.000000
value2=110686.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1552
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=110702.000000
value2=110702.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1568
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317552
value1=110718.000000
value2=110718.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1584
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684317256
value1=110734.000000
value2=110734.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1600
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=110750.000000
value2=110750.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1616
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684316368
value1=110766.000000
value2=110766.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684315480
value1=110782.000000
value2=110782.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1648
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314592
value1=110798.000000
value2=110798.000000
</object>

<object>
type=2
name=2023.05.17 00:00 1664
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684314000
date2=1684314296
value1=110814.000000
value2=110814.000000
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
name=2023.05.18 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684400709
value1=109550.000000
value2=109550.000000
</object>

<object>
type=2
name=2023.05.18 00:00 17
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684400709
value1=109567.000000
value2=109567.000000
</object>

<object>
type=2
name=2023.05.18 00:00 34
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684400709
value1=109584.000000
value2=109584.000000
</object>

<object>
type=2
name=2023.05.18 00:00 51
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401018
value1=109601.000000
value2=109601.000000
</object>

<object>
type=2
name=2023.05.18 00:00 68
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401018
value1=109618.000000
value2=109618.000000
</object>

<object>
type=2
name=2023.05.18 00:00 85
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401018
value1=109635.000000
value2=109635.000000
</object>

<object>
type=2
name=2023.05.18 00:00 102
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401327
value1=109652.000000
value2=109652.000000
</object>

<object>
type=2
name=2023.05.18 00:00 119
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401018
value1=109669.000000
value2=109669.000000
</object>

<object>
type=2
name=2023.05.18 00:00 136
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401636
value1=109686.000000
value2=109686.000000
</object>

<object>
type=2
name=2023.05.18 00:00 153
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=109703.000000
value2=109703.000000
</object>

<object>
type=2
name=2023.05.18 00:00 170
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402563
value1=109720.000000
value2=109720.000000
</object>

<object>
type=2
name=2023.05.18 00:00 187
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402872
value1=109737.000000
value2=109737.000000
</object>

<object>
type=2
name=2023.05.18 00:00 204
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404417
value1=109754.000000
value2=109754.000000
</object>

<object>
type=2
name=2023.05.18 00:00 221
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406271
value1=109771.000000
value2=109771.000000
</object>

<object>
type=2
name=2023.05.18 00:00 238
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684407816
value1=109788.000000
value2=109788.000000
</object>

<object>
type=2
name=2023.05.18 00:00 255
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405962
value1=109805.000000
value2=109805.000000
</object>

<object>
type=2
name=2023.05.18 00:00 272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405344
value1=109822.000000
value2=109822.000000
</object>

<object>
type=2
name=2023.05.18 00:00 289
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405035
value1=109839.000000
value2=109839.000000
</object>

<object>
type=2
name=2023.05.18 00:00 306
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404417
value1=109856.000000
value2=109856.000000
</object>

<object>
type=2
name=2023.05.18 00:00 323
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404108
value1=109873.000000
value2=109873.000000
</object>

<object>
type=2
name=2023.05.18 00:00 340
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403799
value1=109890.000000
value2=109890.000000
</object>

<object>
type=2
name=2023.05.18 00:00 357
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405035
value1=109907.000000
value2=109907.000000
</object>

<object>
type=2
name=2023.05.18 00:00 374
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405653
value1=109924.000000
value2=109924.000000
</object>

<object>
type=2
name=2023.05.18 00:00 391
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406271
value1=109941.000000
value2=109941.000000
</object>

<object>
type=2
name=2023.05.18 00:00 408
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684408125
value1=109958.000000
value2=109958.000000
</object>

<object>
type=2
name=2023.05.18 00:00 425
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684411215
value1=109975.000000
value2=109975.000000
</object>

<object>
type=2
name=2023.05.18 00:00 442
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684413687
value1=109992.000000
value2=109992.000000
</object>

<object>
type=2
name=2023.05.18 00:00 459
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684413378
value1=110009.000000
value2=110009.000000
</object>

<object>
type=2
name=2023.05.18 00:00 476
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684412451
value1=110026.000000
value2=110026.000000
</object>

<object>
type=2
name=2023.05.18 00:00 493
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684410288
value1=110043.000000
value2=110043.000000
</object>

<object>
type=2
name=2023.05.18 00:00 510
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684409979
value1=110060.000000
value2=110060.000000
</object>

<object>
type=2
name=2023.05.18 00:00 527
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684409670
value1=110077.000000
value2=110077.000000
</object>

<object>
type=2
name=2023.05.18 00:00 544
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684410288
value1=110094.000000
value2=110094.000000
</object>

<object>
type=2
name=2023.05.18 00:00 561
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684412142
value1=110111.000000
value2=110111.000000
</object>

<object>
type=2
name=2023.05.18 00:00 578
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684413378
value1=110128.000000
value2=110128.000000
</object>

<object>
type=2
name=2023.05.18 00:00 595
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684414614
value1=110145.000000
value2=110145.000000
</object>

<object>
type=2
name=2023.05.18 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684415541
value1=110162.000000
value2=110162.000000
</object>

<object>
type=2
name=2023.05.18 00:00 629
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684415232
value1=110179.000000
value2=110179.000000
</object>

<object>
type=2
name=2023.05.18 00:00 646
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684416468
value1=110196.000000
value2=110196.000000
</object>

<object>
type=2
name=2023.05.18 00:00 663
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684418322
value1=110213.000000
value2=110213.000000
</object>

<object>
type=2
name=2023.05.18 00:00 680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684419249
value1=110230.000000
value2=110230.000000
</object>

<object>
type=2
name=2023.05.18 00:00 697
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684423575
value1=110247.000000
value2=110247.000000
</object>

<object>
type=2
name=2023.05.18 00:00 714
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684427592
value1=110264.000000
value2=110264.000000
</object>

<object>
type=2
name=2023.05.18 00:00 731
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684428828
value1=110281.000000
value2=110281.000000
</object>

<object>
type=2
name=2023.05.18 00:00 748
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684423575
value1=110298.000000
value2=110298.000000
</object>

<object>
type=2
name=2023.05.18 00:00 765
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684421103
value1=110315.000000
value2=110315.000000
</object>

<object>
type=2
name=2023.05.18 00:00 782
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684420794
value1=110332.000000
value2=110332.000000
</object>

<object>
type=2
name=2023.05.18 00:00 799
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684419867
value1=110349.000000
value2=110349.000000
</object>

<object>
type=2
name=2023.05.18 00:00 816
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684416777
value1=110366.000000
value2=110366.000000
</object>

<object>
type=2
name=2023.05.18 00:00 833
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684411833
value1=110383.000000
value2=110383.000000
</object>

<object>
type=2
name=2023.05.18 00:00 850
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684408125
value1=110400.000000
value2=110400.000000
</object>

<object>
type=2
name=2023.05.18 00:00 867
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684407198
value1=110417.000000
value2=110417.000000
</object>

<object>
type=2
name=2023.05.18 00:00 884
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406271
value1=110434.000000
value2=110434.000000
</object>

<object>
type=2
name=2023.05.18 00:00 901
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403799
value1=110451.000000
value2=110451.000000
</object>

<object>
type=2
name=2023.05.18 00:00 918
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402872
value1=110468.000000
value2=110468.000000
</object>

<object>
type=2
name=2023.05.18 00:00 935
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402563
value1=110485.000000
value2=110485.000000
</object>

<object>
type=2
name=2023.05.18 00:00 952
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=110502.000000
value2=110502.000000
</object>

<object>
type=2
name=2023.05.18 00:00 969
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=110519.000000
value2=110519.000000
</object>

<object>
type=2
name=2023.05.18 00:00 986
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401945
value1=110536.000000
value2=110536.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1003
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401945
value1=110553.000000
value2=110553.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1020
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401327
value1=110570.000000
value2=110570.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1037
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401636
value1=110587.000000
value2=110587.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1054
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401636
value1=110604.000000
value2=110604.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1071
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401636
value1=110621.000000
value2=110621.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=110638.000000
value2=110638.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1105
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401945
value1=110655.000000
value2=110655.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1122
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402563
value1=110672.000000
value2=110672.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1139
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=110689.000000
value2=110689.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1156
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403181
value1=110706.000000
value2=110706.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1173
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403181
value1=110723.000000
value2=110723.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1190
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404108
value1=110740.000000
value2=110740.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1207
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405962
value1=110757.000000
value2=110757.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1224
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684407507
value1=110774.000000
value2=110774.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1241
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684408434
value1=110791.000000
value2=110791.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1258
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684408743
value1=110808.000000
value2=110808.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1275
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684407198
value1=110825.000000
value2=110825.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1292
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406271
value1=110842.000000
value2=110842.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1309
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405035
value1=110859.000000
value2=110859.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1326
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404108
value1=110876.000000
value2=110876.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1343
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684404726
value1=110893.000000
value2=110893.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406580
value1=110910.000000
value2=110910.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1377
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406271
value1=110927.000000
value2=110927.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1394
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405653
value1=110944.000000
value2=110944.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1411
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403799
value1=110961.000000
value2=110961.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1428
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402254
value1=110978.000000
value2=110978.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1445
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401327
value1=110995.000000
value2=110995.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1462
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401327
value1=111012.000000
value2=111012.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1479
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401945
value1=111029.000000
value2=111029.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1496
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402563
value1=111046.000000
value2=111046.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1513
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405344
value1=111063.000000
value2=111063.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1530
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684409979
value1=111080.000000
value2=111080.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1547
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684411215
value1=111097.000000
value2=111097.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1564
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684410597
value1=111114.000000
value2=111114.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1581
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684407507
value1=111131.000000
value2=111131.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1598
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684406580
value1=111148.000000
value2=111148.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1615
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405653
value1=111165.000000
value2=111165.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405035
value1=111182.000000
value2=111182.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1649
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684405344
value1=111199.000000
value2=111199.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1666
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402872
value1=111216.000000
value2=111216.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1683
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684403181
value1=111233.000000
value2=111233.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1700
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684402563
value1=111250.000000
value2=111250.000000
</object>

<object>
type=2
name=2023.05.18 00:00 1717
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684400400
date2=1684401327
value1=111267.000000
value2=111267.000000
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
name=2023.05.19 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487099
value1=110585.000000
value2=110585.000000
</object>

<object>
type=2
name=2023.05.19 00:00 15
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487099
value1=110600.000000
value2=110600.000000
</object>

<object>
type=2
name=2023.05.19 00:00 30
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487398
value1=110615.000000
value2=110615.000000
</object>

<object>
type=2
name=2023.05.19 00:00 45
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487398
value1=110630.000000
value2=110630.000000
</object>

<object>
type=2
name=2023.05.19 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110645.000000
value2=110645.000000
</object>

<object>
type=2
name=2023.05.19 00:00 75
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487996
value1=110660.000000
value2=110660.000000
</object>

<object>
type=2
name=2023.05.19 00:00 90
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110675.000000
value2=110675.000000
</object>

<object>
type=2
name=2023.05.19 00:00 105
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110690.000000
value2=110690.000000
</object>

<object>
type=2
name=2023.05.19 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110705.000000
value2=110705.000000
</object>

<object>
type=2
name=2023.05.19 00:00 135
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110720.000000
value2=110720.000000
</object>

<object>
type=2
name=2023.05.19 00:00 150
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487697
value1=110735.000000
value2=110735.000000
</object>

<object>
type=2
name=2023.05.19 00:00 165
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488295
value1=110750.000000
value2=110750.000000
</object>

<object>
type=2
name=2023.05.19 00:00 180
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488594
value1=110765.000000
value2=110765.000000
</object>

<object>
type=2
name=2023.05.19 00:00 195
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684489790
value1=110780.000000
value2=110780.000000
</object>

<object>
type=2
name=2023.05.19 00:00 210
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490687
value1=110795.000000
value2=110795.000000
</object>

<object>
type=2
name=2023.05.19 00:00 225
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=110810.000000
value2=110810.000000
</object>

<object>
type=2
name=2023.05.19 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491285
value1=110825.000000
value2=110825.000000
</object>

<object>
type=2
name=2023.05.19 00:00 255
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=110840.000000
value2=110840.000000
</object>

<object>
type=2
name=2023.05.19 00:00 270
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492182
value1=110855.000000
value2=110855.000000
</object>

<object>
type=2
name=2023.05.19 00:00 285
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492780
value1=110870.000000
value2=110870.000000
</object>

<object>
type=2
name=2023.05.19 00:00 300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492481
value1=110885.000000
value2=110885.000000
</object>

<object>
type=2
name=2023.05.19 00:00 315
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493079
value1=110900.000000
value2=110900.000000
</object>

<object>
type=2
name=2023.05.19 00:00 330
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493079
value1=110915.000000
value2=110915.000000
</object>

<object>
type=2
name=2023.05.19 00:00 345
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492780
value1=110930.000000
value2=110930.000000
</object>

<object>
type=2
name=2023.05.19 00:00 360
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492780
value1=110945.000000
value2=110945.000000
</object>

<object>
type=2
name=2023.05.19 00:00 375
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=110960.000000
value2=110960.000000
</object>

<object>
type=2
name=2023.05.19 00:00 390
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491584
value1=110975.000000
value2=110975.000000
</object>

<object>
type=2
name=2023.05.19 00:00 405
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493079
value1=110990.000000
value2=110990.000000
</object>

<object>
type=2
name=2023.05.19 00:00 420
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493677
value1=111005.000000
value2=111005.000000
</object>

<object>
type=2
name=2023.05.19 00:00 435
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493378
value1=111020.000000
value2=111020.000000
</object>

<object>
type=2
name=2023.05.19 00:00 450
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493378
value1=111035.000000
value2=111035.000000
</object>

<object>
type=2
name=2023.05.19 00:00 465
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111050.000000
value2=111050.000000
</object>

<object>
type=2
name=2023.05.19 00:00 480
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491285
value1=111065.000000
value2=111065.000000
</object>

<object>
type=2
name=2023.05.19 00:00 495
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=111080.000000
value2=111080.000000
</object>

<object>
type=2
name=2023.05.19 00:00 510
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490089
value1=111095.000000
value2=111095.000000
</object>

<object>
type=2
name=2023.05.19 00:00 525
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492481
value1=111110.000000
value2=111110.000000
</object>

<object>
type=2
name=2023.05.19 00:00 540
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493378
value1=111125.000000
value2=111125.000000
</object>

<object>
type=2
name=2023.05.19 00:00 555
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493677
value1=111140.000000
value2=111140.000000
</object>

<object>
type=2
name=2023.05.19 00:00 570
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684494275
value1=111155.000000
value2=111155.000000
</object>

<object>
type=2
name=2023.05.19 00:00 585
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684495770
value1=111170.000000
value2=111170.000000
</object>

<object>
type=2
name=2023.05.19 00:00 600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684494873
value1=111185.000000
value2=111185.000000
</object>

<object>
type=2
name=2023.05.19 00:00 615
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684495471
value1=111200.000000
value2=111200.000000
</object>

<object>
type=2
name=2023.05.19 00:00 630
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684496069
value1=111215.000000
value2=111215.000000
</object>

<object>
type=2
name=2023.05.19 00:00 645
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684495770
value1=111230.000000
value2=111230.000000
</object>

<object>
type=2
name=2023.05.19 00:00 660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684495471
value1=111245.000000
value2=111245.000000
</object>

<object>
type=2
name=2023.05.19 00:00 675
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684494574
value1=111260.000000
value2=111260.000000
</object>

<object>
type=2
name=2023.05.19 00:00 690
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111275.000000
value2=111275.000000
</object>

<object>
type=2
name=2023.05.19 00:00 705
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111290.000000
value2=111290.000000
</object>

<object>
type=2
name=2023.05.19 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111305.000000
value2=111305.000000
</object>

<object>
type=2
name=2023.05.19 00:00 735
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491584
value1=111320.000000
value2=111320.000000
</object>

<object>
type=2
name=2023.05.19 00:00 750
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490687
value1=111335.000000
value2=111335.000000
</object>

<object>
type=2
name=2023.05.19 00:00 765
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490089
value1=111350.000000
value2=111350.000000
</object>

<object>
type=2
name=2023.05.19 00:00 780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111365.000000
value2=111365.000000
</object>

<object>
type=2
name=2023.05.19 00:00 795
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684493079
value1=111380.000000
value2=111380.000000
</object>

<object>
type=2
name=2023.05.19 00:00 810
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492481
value1=111395.000000
value2=111395.000000
</object>

<object>
type=2
name=2023.05.19 00:00 825
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684494275
value1=111410.000000
value2=111410.000000
</object>

<object>
type=2
name=2023.05.19 00:00 840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684496069
value1=111425.000000
value2=111425.000000
</object>

<object>
type=2
name=2023.05.19 00:00 855
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684496966
value1=111440.000000
value2=111440.000000
</object>

<object>
type=2
name=2023.05.19 00:00 870
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684498461
value1=111455.000000
value2=111455.000000
</object>

<object>
type=2
name=2023.05.19 00:00 885
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684503544
value1=111470.000000
value2=111470.000000
</object>

<object>
type=2
name=2023.05.19 00:00 900
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684506235
value1=111485.000000
value2=111485.000000
</object>

<object>
type=2
name=2023.05.19 00:00 915
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684510421
value1=111500.000000
value2=111500.000000
</object>

<object>
type=2
name=2023.05.19 00:00 930
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684511617
value1=111515.000000
value2=111515.000000
</object>

<object>
type=2
name=2023.05.19 00:00 945
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684511617
value1=111530.000000
value2=111530.000000
</object>

<object>
type=2
name=2023.05.19 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684512215
value1=111545.000000
value2=111545.000000
</object>

<object>
type=2
name=2023.05.19 00:00 975
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684513411
value1=111560.000000
value2=111560.000000
</object>

<object>
type=2
name=2023.05.19 00:00 990
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684514308
value1=111575.000000
value2=111575.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1005
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684512514
value1=111590.000000
value2=111590.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1020
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684506235
value1=111605.000000
value2=111605.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1035
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684505936
value1=111620.000000
value2=111620.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1050
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684505936
value1=111635.000000
value2=111635.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1065
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684504740
value1=111650.000000
value2=111650.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1080
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684503544
value1=111665.000000
value2=111665.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1095
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684501451
value1=111680.000000
value2=111680.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1110
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684497863
value1=111695.000000
value2=111695.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1125
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684497265
value1=111710.000000
value2=111710.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1140
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684496368
value1=111725.000000
value2=111725.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1155
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684497564
value1=111740.000000
value2=111740.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1170
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684501451
value1=111755.000000
value2=111755.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1185
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684502647
value1=111770.000000
value2=111770.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684501750
value1=111785.000000
value2=111785.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1215
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684500255
value1=111800.000000
value2=111800.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1230
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684498461
value1=111815.000000
value2=111815.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1245
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684495172
value1=111830.000000
value2=111830.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1260
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684492481
value1=111845.000000
value2=111845.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1275
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491285
value1=111860.000000
value2=111860.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1290
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=111875.000000
value2=111875.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1305
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=111890.000000
value2=111890.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490986
value1=111905.000000
value2=111905.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1335
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684491883
value1=111920.000000
value2=111920.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1350
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684490089
value1=111935.000000
value2=111935.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1365
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487996
value1=111950.000000
value2=111950.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1380
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487996
value1=111965.000000
value2=111965.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1395
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488594
value1=111980.000000
value2=111980.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1410
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488893
value1=111995.000000
value2=111995.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488893
value1=112010.000000
value2=112010.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488594
value1=112025.000000
value2=112025.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1455
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487398
value1=112040.000000
value2=112040.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1470
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487996
value1=112055.000000
value2=112055.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1485
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684488295
value1=112070.000000
value2=112070.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1500
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487996
value1=112085.000000
value2=112085.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1515
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487398
value1=112100.000000
value2=112100.000000
</object>

<object>
type=2
name=2023.05.19 00:00 1530
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684486800
date2=1684487099
value1=112115.000000
value2=112115.000000
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
date2=1684746180
value1=111570.000000
value2=111570.000000
</object>

<object>
type=2
name=2023.05.22 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746220
value1=110835.000000
value2=110835.000000
</object>

<object>
type=2
name=2023.05.22 00:00 17
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746220
value1=110852.000000
value2=110852.000000
</object>

<object>
type=2
name=2023.05.22 00:00 34
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=110869.000000
value2=110869.000000
</object>

<object>
type=2
name=2023.05.22 00:00 51
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=110886.000000
value2=110886.000000
</object>

<object>
type=2
name=2023.05.22 00:00 68
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=110903.000000
value2=110903.000000
</object>

<object>
type=2
name=2023.05.22 00:00 85
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748200
value1=110920.000000
value2=110920.000000
</object>

<object>
type=2
name=2023.05.22 00:00 102
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748200
value1=110937.000000
value2=110937.000000
</object>

<object>
type=2
name=2023.05.22 00:00 119
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747540
value1=110954.000000
value2=110954.000000
</object>

<object>
type=2
name=2023.05.22 00:00 136
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747760
value1=110971.000000
value2=110971.000000
</object>

<object>
type=2
name=2023.05.22 00:00 153
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=110988.000000
value2=110988.000000
</object>

<object>
type=2
name=2023.05.22 00:00 170
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749960
value1=111005.000000
value2=111005.000000
</object>

<object>
type=2
name=2023.05.22 00:00 187
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749740
value1=111022.000000
value2=111022.000000
</object>

<object>
type=2
name=2023.05.22 00:00 204
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750620
value1=111039.000000
value2=111039.000000
</object>

<object>
type=2
name=2023.05.22 00:00 221
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750620
value1=111056.000000
value2=111056.000000
</object>

<object>
type=2
name=2023.05.22 00:00 238
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684752380
value1=111073.000000
value2=111073.000000
</object>

<object>
type=2
name=2023.05.22 00:00 255
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684752380
value1=111090.000000
value2=111090.000000
</object>

<object>
type=2
name=2023.05.22 00:00 272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750620
value1=111107.000000
value2=111107.000000
</object>

<object>
type=2
name=2023.05.22 00:00 289
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749960
value1=111124.000000
value2=111124.000000
</object>

<object>
type=2
name=2023.05.22 00:00 306
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749740
value1=111141.000000
value2=111141.000000
</object>

<object>
type=2
name=2023.05.22 00:00 323
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748860
value1=111158.000000
value2=111158.000000
</object>

<object>
type=2
name=2023.05.22 00:00 340
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748860
value1=111175.000000
value2=111175.000000
</object>

<object>
type=2
name=2023.05.22 00:00 357
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=111192.000000
value2=111192.000000
</object>

<object>
type=2
name=2023.05.22 00:00 374
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=111209.000000
value2=111209.000000
</object>

<object>
type=2
name=2023.05.22 00:00 391
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749960
value1=111226.000000
value2=111226.000000
</object>

<object>
type=2
name=2023.05.22 00:00 408
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750840
value1=111243.000000
value2=111243.000000
</object>

<object>
type=2
name=2023.05.22 00:00 425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684753700
value1=111260.000000
value2=111260.000000
</object>

<object>
type=2
name=2023.05.22 00:00 442
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684755240
value1=111277.000000
value2=111277.000000
</object>

<object>
type=2
name=2023.05.22 00:00 459
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684757660
value1=111294.000000
value2=111294.000000
</object>

<object>
type=2
name=2023.05.22 00:00 476
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684761180
value1=111311.000000
value2=111311.000000
</object>

<object>
type=2
name=2023.05.22 00:00 493
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684763820
value1=111328.000000
value2=111328.000000
</object>

<object>
type=2
name=2023.05.22 00:00 510
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684771300
value1=111345.000000
value2=111345.000000
</object>

<object>
type=2
name=2023.05.22 00:00 527
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684772180
value1=111362.000000
value2=111362.000000
</object>

<object>
type=2
name=2023.05.22 00:00 544
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684774380
value1=111379.000000
value2=111379.000000
</object>

<object>
type=2
name=2023.05.22 00:00 561
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684771080
value1=111396.000000
value2=111396.000000
</object>

<object>
type=2
name=2023.05.22 00:00 578
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684768880
value1=111413.000000
value2=111413.000000
</object>

<object>
type=2
name=2023.05.22 00:00 595
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684771080
value1=111430.000000
value2=111430.000000
</object>

<object>
type=2
name=2023.05.22 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684770420
value1=111447.000000
value2=111447.000000
</object>

<object>
type=2
name=2023.05.22 00:00 629
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684768660
value1=111464.000000
value2=111464.000000
</object>

<object>
type=2
name=2023.05.22 00:00 646
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684764920
value1=111481.000000
value2=111481.000000
</object>

<object>
type=2
name=2023.05.22 00:00 663
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684763820
value1=111498.000000
value2=111498.000000
</object>

<object>
type=2
name=2023.05.22 00:00 680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684762060
value1=111515.000000
value2=111515.000000
</object>

<object>
type=2
name=2023.05.22 00:00 697
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684758760
value1=111532.000000
value2=111532.000000
</object>

<object>
type=2
name=2023.05.22 00:00 714
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684757220
value1=111549.000000
value2=111549.000000
</object>

<object>
type=2
name=2023.05.22 00:00 731
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684757440
value1=111566.000000
value2=111566.000000
</object>

<object>
type=2
name=2023.05.22 00:00 748
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684754360
value1=111583.000000
value2=111583.000000
</object>

<object>
type=2
name=2023.05.22 00:00 765
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684751940
value1=111600.000000
value2=111600.000000
</object>

<object>
type=2
name=2023.05.22 00:00 782
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750840
value1=111617.000000
value2=111617.000000
</object>

<object>
type=2
name=2023.05.22 00:00 799
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684750180
value1=111634.000000
value2=111634.000000
</object>

<object>
type=2
name=2023.05.22 00:00 816
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749520
value1=111651.000000
value2=111651.000000
</object>

<object>
type=2
name=2023.05.22 00:00 833
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748420
value1=111668.000000
value2=111668.000000
</object>

<object>
type=2
name=2023.05.22 00:00 850
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747320
value1=111685.000000
value2=111685.000000
</object>

<object>
type=2
name=2023.05.22 00:00 867
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111702.000000
value2=111702.000000
</object>

<object>
type=2
name=2023.05.22 00:00 884
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111719.000000
value2=111719.000000
</object>

<object>
type=2
name=2023.05.22 00:00 901
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111736.000000
value2=111736.000000
</object>

<object>
type=2
name=2023.05.22 00:00 918
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111753.000000
value2=111753.000000
</object>

<object>
type=2
name=2023.05.22 00:00 935
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111770.000000
value2=111770.000000
</object>

<object>
type=2
name=2023.05.22 00:00 952
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111787.000000
value2=111787.000000
</object>

<object>
type=2
name=2023.05.22 00:00 969
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111804.000000
value2=111804.000000
</object>

<object>
type=2
name=2023.05.22 00:00 986
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111821.000000
value2=111821.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1003
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111838.000000
value2=111838.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1020
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111855.000000
value2=111855.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1037
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111872.000000
value2=111872.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1054
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111889.000000
value2=111889.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1071
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747100
value1=111906.000000
value2=111906.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1088
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747100
value1=111923.000000
value2=111923.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1105
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111940.000000
value2=111940.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1122
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=111957.000000
value2=111957.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1139
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=111974.000000
value2=111974.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1156
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747100
value1=111991.000000
value2=111991.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1173
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747100
value1=112008.000000
value2=112008.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1190
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747540
value1=112025.000000
value2=112025.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1207
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747760
value1=112042.000000
value2=112042.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747980
value1=112059.000000
value2=112059.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1241
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684748420
value1=112076.000000
value2=112076.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1258
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=112093.000000
value2=112093.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1275
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=112110.000000
value2=112110.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1292
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749520
value1=112127.000000
value2=112127.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1309
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749520
value1=112144.000000
value2=112144.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1326
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749520
value1=112161.000000
value2=112161.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1343
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684749300
value1=112178.000000
value2=112178.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1360
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747980
value1=112195.000000
value2=112195.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1377
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747540
value1=112212.000000
value2=112212.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1394
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684747540
value1=112229.000000
value2=112229.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1411
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=112246.000000
value2=112246.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1428
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=112263.000000
value2=112263.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1445
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=112280.000000
value2=112280.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1462
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112297.000000
value2=112297.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1479
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112314.000000
value2=112314.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1496
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112331.000000
value2=112331.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1513
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112348.000000
value2=112348.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1530
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112365.000000
value2=112365.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1547
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746880
value1=112382.000000
value2=112382.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1564
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112399.000000
value2=112399.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1581
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112416.000000
value2=112416.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1598
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112433.000000
value2=112433.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1615
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746660
value1=112450.000000
value2=112450.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112467.000000
value2=112467.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1649
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112484.000000
value2=112484.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1666
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112501.000000
value2=112501.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1683
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112518.000000
value2=112518.000000
</object>

<object>
type=2
name=2023.05.22 00:00 1700
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684746440
value1=112535.000000
value2=112535.000000
</object>

<object>
type=2
name=2023.05.22 00:00 POC 
hidden=1
color=42495
selectable=0
ray1=0
ray2=0
date1=1684746000
date2=1684837020
value1=111375.000000
value2=111375.000000
</object>

<object>
type=2
name=2023.05.23 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684832764
value1=110430.000000
value2=110430.000000
</object>

<object>
type=2
name=2023.05.23 00:00 17
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684832764
value1=110447.000000
value2=110447.000000
</object>

<object>
type=2
name=2023.05.23 00:00 34
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684833492
value1=110464.000000
value2=110464.000000
</object>

<object>
type=2
name=2023.05.23 00:00 51
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684833492
value1=110481.000000
value2=110481.000000
</object>

<object>
type=2
name=2023.05.23 00:00 68
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684834584
value1=110498.000000
value2=110498.000000
</object>

<object>
type=2
name=2023.05.23 00:00 85
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684835312
value1=110515.000000
value2=110515.000000
</object>

<object>
type=2
name=2023.05.23 00:00 102
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836040
value1=110532.000000
value2=110532.000000
</object>

<object>
type=2
name=2023.05.23 00:00 119
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836040
value1=110549.000000
value2=110549.000000
</object>

<object>
type=2
name=2023.05.23 00:00 136
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836768
value1=110566.000000
value2=110566.000000
</object>

<object>
type=2
name=2023.05.23 00:00 153
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837860
value1=110583.000000
value2=110583.000000
</object>

<object>
type=2
name=2023.05.23 00:00 170
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837496
value1=110600.000000
value2=110600.000000
</object>

<object>
type=2
name=2023.05.23 00:00 187
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837496
value1=110617.000000
value2=110617.000000
</object>

<object>
type=2
name=2023.05.23 00:00 204
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838952
value1=110634.000000
value2=110634.000000
</object>

<object>
type=2
name=2023.05.23 00:00 221
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684839680
value1=110651.000000
value2=110651.000000
</object>

<object>
type=2
name=2023.05.23 00:00 238
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841136
value1=110668.000000
value2=110668.000000
</object>

<object>
type=2
name=2023.05.23 00:00 255
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684843320
value1=110685.000000
value2=110685.000000
</object>

<object>
type=2
name=2023.05.23 00:00 272
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684845140
value1=110702.000000
value2=110702.000000
</object>

<object>
type=2
name=2023.05.23 00:00 289
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684848416
value1=110719.000000
value2=110719.000000
</object>

<object>
type=2
name=2023.05.23 00:00 306
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684849872
value1=110736.000000
value2=110736.000000
</object>

<object>
type=2
name=2023.05.23 00:00 323
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684851328
value1=110753.000000
value2=110753.000000
</object>

<object>
type=2
name=2023.05.23 00:00 340
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684854604
value1=110770.000000
value2=110770.000000
</object>

<object>
type=2
name=2023.05.23 00:00 357
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684854968
value1=110787.000000
value2=110787.000000
</object>

<object>
type=2
name=2023.05.23 00:00 374
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684859336
value1=110804.000000
value2=110804.000000
</object>

<object>
type=2
name=2023.05.23 00:00 391
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684860064
value1=110821.000000
value2=110821.000000
</object>

<object>
type=2
name=2023.05.23 00:00 408
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684859700
value1=110838.000000
value2=110838.000000
</object>

<object>
type=2
name=2023.05.23 00:00 425
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684857152
value1=110855.000000
value2=110855.000000
</object>

<object>
type=2
name=2023.05.23 00:00 442
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684856424
value1=110872.000000
value2=110872.000000
</object>

<object>
type=2
name=2023.05.23 00:00 459
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684851328
value1=110889.000000
value2=110889.000000
</object>

<object>
type=2
name=2023.05.23 00:00 476
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684846596
value1=110906.000000
value2=110906.000000
</object>

<object>
type=2
name=2023.05.23 00:00 493
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844412
value1=110923.000000
value2=110923.000000
</object>

<object>
type=2
name=2023.05.23 00:00 510
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841500
value1=110940.000000
value2=110940.000000
</object>

<object>
type=2
name=2023.05.23 00:00 527
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841136
value1=110957.000000
value2=110957.000000
</object>

<object>
type=2
name=2023.05.23 00:00 544
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840772
value1=110974.000000
value2=110974.000000
</object>

<object>
type=2
name=2023.05.23 00:00 561
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838588
value1=110991.000000
value2=110991.000000
</object>

<object>
type=2
name=2023.05.23 00:00 578
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837132
value1=111008.000000
value2=111008.000000
</object>

<object>
type=2
name=2023.05.23 00:00 595
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836040
value1=111025.000000
value2=111025.000000
</object>

<object>
type=2
name=2023.05.23 00:00 612
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836404
value1=111042.000000
value2=111042.000000
</object>

<object>
type=2
name=2023.05.23 00:00 629
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836768
value1=111059.000000
value2=111059.000000
</object>

<object>
type=2
name=2023.05.23 00:00 646
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836404
value1=111076.000000
value2=111076.000000
</object>

<object>
type=2
name=2023.05.23 00:00 663
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837132
value1=111093.000000
value2=111093.000000
</object>

<object>
type=2
name=2023.05.23 00:00 680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837860
value1=111110.000000
value2=111110.000000
</object>

<object>
type=2
name=2023.05.23 00:00 697
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837132
value1=111127.000000
value2=111127.000000
</object>

<object>
type=2
name=2023.05.23 00:00 714
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837860
value1=111144.000000
value2=111144.000000
</object>

<object>
type=2
name=2023.05.23 00:00 731
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838224
value1=111161.000000
value2=111161.000000
</object>

<object>
type=2
name=2023.05.23 00:00 748
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838952
value1=111178.000000
value2=111178.000000
</object>

<object>
type=2
name=2023.05.23 00:00 765
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838224
value1=111195.000000
value2=111195.000000
</object>

<object>
type=2
name=2023.05.23 00:00 782
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838588
value1=111212.000000
value2=111212.000000
</object>

<object>
type=2
name=2023.05.23 00:00 799
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684838588
value1=111229.000000
value2=111229.000000
</object>

<object>
type=2
name=2023.05.23 00:00 816
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840408
value1=111246.000000
value2=111246.000000
</object>

<object>
type=2
name=2023.05.23 00:00 833
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840772
value1=111263.000000
value2=111263.000000
</object>

<object>
type=2
name=2023.05.23 00:00 850
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841500
value1=111280.000000
value2=111280.000000
</object>

<object>
type=2
name=2023.05.23 00:00 867
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841500
value1=111297.000000
value2=111297.000000
</object>

<object>
type=2
name=2023.05.23 00:00 884
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841500
value1=111314.000000
value2=111314.000000
</object>

<object>
type=2
name=2023.05.23 00:00 901
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841864
value1=111331.000000
value2=111331.000000
</object>

<object>
type=2
name=2023.05.23 00:00 918
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842956
value1=111348.000000
value2=111348.000000
</object>

<object>
type=2
name=2023.05.23 00:00 935
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684843320
value1=111365.000000
value2=111365.000000
</object>

<object>
type=2
name=2023.05.23 00:00 952
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841136
value1=111382.000000
value2=111382.000000
</object>

<object>
type=2
name=2023.05.23 00:00 969
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841864
value1=111399.000000
value2=111399.000000
</object>

<object>
type=2
name=2023.05.23 00:00 986
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842592
value1=111416.000000
value2=111416.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1003
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684843320
value1=111433.000000
value2=111433.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1020
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841864
value1=111450.000000
value2=111450.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1037
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842228
value1=111467.000000
value2=111467.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1054
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841864
value1=111484.000000
value2=111484.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1071
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841136
value1=111501.000000
value2=111501.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840772
value1=111518.000000
value2=111518.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1105
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840408
value1=111535.000000
value2=111535.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1122
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684839316
value1=111552.000000
value2=111552.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1139
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684839680
value1=111569.000000
value2=111569.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1156
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841500
value1=111586.000000
value2=111586.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1173
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844776
value1=111603.000000
value2=111603.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1190
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684849872
value1=111620.000000
value2=111620.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1207
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684850600
value1=111637.000000
value2=111637.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1224
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684848780
value1=111654.000000
value2=111654.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1241
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684848780
value1=111671.000000
value2=111671.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1258
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684846960
value1=111688.000000
value2=111688.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1275
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684845504
value1=111705.000000
value2=111705.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1292
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844412
value1=111722.000000
value2=111722.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1309
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844776
value1=111739.000000
value2=111739.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1326
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684845140
value1=111756.000000
value2=111756.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1343
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844048
value1=111773.000000
value2=111773.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684844776
value1=111790.000000
value2=111790.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1377
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684843684
value1=111807.000000
value2=111807.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1394
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842228
value1=111824.000000
value2=111824.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1411
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684839680
value1=111841.000000
value2=111841.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1428
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684840044
value1=111858.000000
value2=111858.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1445
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842592
value1=111875.000000
value2=111875.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1462
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842228
value1=111892.000000
value2=111892.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1479
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684839316
value1=111909.000000
value2=111909.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1496
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841136
value1=111926.000000
value2=111926.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1513
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684842956
value1=111943.000000
value2=111943.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1530
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684841864
value1=111960.000000
value2=111960.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1547
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684837860
value1=111977.000000
value2=111977.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1564
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836768
value1=111994.000000
value2=111994.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1581
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684836404
value1=112011.000000
value2=112011.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1598
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684835676
value1=112028.000000
value2=112028.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1615
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684835312
value1=112045.000000
value2=112045.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684834948
value1=112062.000000
value2=112062.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1649
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684835676
value1=112079.000000
value2=112079.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1666
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684835312
value1=112096.000000
value2=112096.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1683
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684833856
value1=112113.000000
value2=112113.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1700
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684833492
value1=112130.000000
value2=112130.000000
</object>

<object>
type=2
name=2023.05.23 00:00 1717
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684832400
date2=1684832764
value1=112147.000000
value2=112147.000000
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
name=2023.05.24 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=109160.000000
value2=109160.000000
</object>

<object>
type=2
name=2023.05.24 00:00 19
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=109179.000000
value2=109179.000000
</object>

<object>
type=2
name=2023.05.24 00:00 38
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=109198.000000
value2=109198.000000
</object>

<object>
type=2
name=2023.05.24 00:00 57
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=109217.000000
value2=109217.000000
</object>

<object>
type=2
name=2023.05.24 00:00 76
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=109236.000000
value2=109236.000000
</object>

<object>
type=2
name=2023.05.24 00:00 95
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=109255.000000
value2=109255.000000
</object>

<object>
type=2
name=2023.05.24 00:00 114
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=109274.000000
value2=109274.000000
</object>

<object>
type=2
name=2023.05.24 00:00 133
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920800
value1=109293.000000
value2=109293.000000
</object>

<object>
type=2
name=2023.05.24 00:00 152
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920800
value1=109312.000000
value2=109312.000000
</object>

<object>
type=2
name=2023.05.24 00:00 171
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684922400
value1=109331.000000
value2=109331.000000
</object>

<object>
type=2
name=2023.05.24 00:00 190
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684922800
value1=109350.000000
value2=109350.000000
</object>

<object>
type=2
name=2023.05.24 00:00 209
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684924400
value1=109369.000000
value2=109369.000000
</object>

<object>
type=2
name=2023.05.24 00:00 228
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684926800
value1=109388.000000
value2=109388.000000
</object>

<object>
type=2
name=2023.05.24 00:00 247
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684930000
value1=109407.000000
value2=109407.000000
</object>

<object>
type=2
name=2023.05.24 00:00 266
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684936400
value1=109426.000000
value2=109426.000000
</object>

<object>
type=2
name=2023.05.24 00:00 285
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684937600
value1=109445.000000
value2=109445.000000
</object>

<object>
type=2
name=2023.05.24 00:00 304
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684938000
value1=109464.000000
value2=109464.000000
</object>

<object>
type=2
name=2023.05.24 00:00 323
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684934800
value1=109483.000000
value2=109483.000000
</object>

<object>
type=2
name=2023.05.24 00:00 342
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684933600
value1=109502.000000
value2=109502.000000
</object>

<object>
type=2
name=2023.05.24 00:00 361
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684931600
value1=109521.000000
value2=109521.000000
</object>

<object>
type=2
name=2023.05.24 00:00 380
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684934400
value1=109540.000000
value2=109540.000000
</object>

<object>
type=2
name=2023.05.24 00:00 399
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684936400
value1=109559.000000
value2=109559.000000
</object>

<object>
type=2
name=2023.05.24 00:00 418
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684942000
value1=109578.000000
value2=109578.000000
</object>

<object>
type=2
name=2023.05.24 00:00 437
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684942800
value1=109597.000000
value2=109597.000000
</object>

<object>
type=2
name=2023.05.24 00:00 456
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684946000
value1=109616.000000
value2=109616.000000
</object>

<object>
type=2
name=2023.05.24 00:00 475
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684946000
value1=109635.000000
value2=109635.000000
</object>

<object>
type=2
name=2023.05.24 00:00 494
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684944000
value1=109654.000000
value2=109654.000000
</object>

<object>
type=2
name=2023.05.24 00:00 513
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684946000
value1=109673.000000
value2=109673.000000
</object>

<object>
type=2
name=2023.05.24 00:00 532
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684943600
value1=109692.000000
value2=109692.000000
</object>

<object>
type=2
name=2023.05.24 00:00 551
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684938800
value1=109711.000000
value2=109711.000000
</object>

<object>
type=2
name=2023.05.24 00:00 570
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684931600
value1=109730.000000
value2=109730.000000
</object>

<object>
type=2
name=2023.05.24 00:00 589
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684931200
value1=109749.000000
value2=109749.000000
</object>

<object>
type=2
name=2023.05.24 00:00 608
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684932800
value1=109768.000000
value2=109768.000000
</object>

<object>
type=2
name=2023.05.24 00:00 627
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684931200
value1=109787.000000
value2=109787.000000
</object>

<object>
type=2
name=2023.05.24 00:00 646
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684931200
value1=109806.000000
value2=109806.000000
</object>

<object>
type=2
name=2023.05.24 00:00 665
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684930800
value1=109825.000000
value2=109825.000000
</object>

<object>
type=2
name=2023.05.24 00:00 684
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684930000
value1=109844.000000
value2=109844.000000
</object>

<object>
type=2
name=2023.05.24 00:00 703
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684928800
value1=109863.000000
value2=109863.000000
</object>

<object>
type=2
name=2023.05.24 00:00 722
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684928400
value1=109882.000000
value2=109882.000000
</object>

<object>
type=2
name=2023.05.24 00:00 741
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684930000
value1=109901.000000
value2=109901.000000
</object>

<object>
type=2
name=2023.05.24 00:00 760
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684930800
value1=109920.000000
value2=109920.000000
</object>

<object>
type=2
name=2023.05.24 00:00 779
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684933600
value1=109939.000000
value2=109939.000000
</object>

<object>
type=2
name=2023.05.24 00:00 798
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684938000
value1=109958.000000
value2=109958.000000
</object>

<object>
type=2
name=2023.05.24 00:00 817
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684942800
value1=109977.000000
value2=109977.000000
</object>

<object>
type=2
name=2023.05.24 00:00 836
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684946800
value1=109996.000000
value2=109996.000000
</object>

<object>
type=2
name=2023.05.24 00:00 855
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684946000
value1=110015.000000
value2=110015.000000
</object>

<object>
type=2
name=2023.05.24 00:00 874
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684940400
value1=110034.000000
value2=110034.000000
</object>

<object>
type=2
name=2023.05.24 00:00 893
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684938400
value1=110053.000000
value2=110053.000000
</object>

<object>
type=2
name=2023.05.24 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684936400
value1=110072.000000
value2=110072.000000
</object>

<object>
type=2
name=2023.05.24 00:00 931
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684934400
value1=110091.000000
value2=110091.000000
</object>

<object>
type=2
name=2023.05.24 00:00 950
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684934400
value1=110110.000000
value2=110110.000000
</object>

<object>
type=2
name=2023.05.24 00:00 969
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684932400
value1=110129.000000
value2=110129.000000
</object>

<object>
type=2
name=2023.05.24 00:00 988
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684929200
value1=110148.000000
value2=110148.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1007
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684926000
value1=110167.000000
value2=110167.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1026
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684925600
value1=110186.000000
value2=110186.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1045
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684923200
value1=110205.000000
value2=110205.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1064
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684922800
value1=110224.000000
value2=110224.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1083
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684921600
value1=110243.000000
value2=110243.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1102
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684921200
value1=110262.000000
value2=110262.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1121
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684921200
value1=110281.000000
value2=110281.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1140
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920800
value1=110300.000000
value2=110300.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1159
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=110319.000000
value2=110319.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1178
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684923600
value1=110338.000000
value2=110338.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1197
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684923600
value1=110357.000000
value2=110357.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1216
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684923200
value1=110376.000000
value2=110376.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1235
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684922800
value1=110395.000000
value2=110395.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1254
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684925600
value1=110414.000000
value2=110414.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1273
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684927600
value1=110433.000000
value2=110433.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1292
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684926800
value1=110452.000000
value2=110452.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1311
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684926400
value1=110471.000000
value2=110471.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1330
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684925600
value1=110490.000000
value2=110490.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1349
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684925600
value1=110509.000000
value2=110509.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1368
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684924800
value1=110528.000000
value2=110528.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1387
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684923200
value1=110547.000000
value2=110547.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1406
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684922400
value1=110566.000000
value2=110566.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1425
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684921600
value1=110585.000000
value2=110585.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1444
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=110604.000000
value2=110604.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1463
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110623.000000
value2=110623.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1482
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110642.000000
value2=110642.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1501
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110661.000000
value2=110661.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110680.000000
value2=110680.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1539
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110699.000000
value2=110699.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1558
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=110718.000000
value2=110718.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1577
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920400
value1=110737.000000
value2=110737.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1596
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110756.000000
value2=110756.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1615
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684920000
value1=110775.000000
value2=110775.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1634
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=110794.000000
value2=110794.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1653
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=110813.000000
value2=110813.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1672
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919600
value1=110832.000000
value2=110832.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1691
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110851.000000
value2=110851.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1710
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110870.000000
value2=110870.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1729
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110889.000000
value2=110889.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1748
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110908.000000
value2=110908.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1767
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110927.000000
value2=110927.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1786
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110946.000000
value2=110946.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1805
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110965.000000
value2=110965.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1824
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=110984.000000
value2=110984.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1843
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=111003.000000
value2=111003.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1862
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=111022.000000
value2=111022.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1881
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=111041.000000
value2=111041.000000
</object>

<object>
type=2
name=2023.05.24 00:00 1900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1684918800
date2=1684919200
value1=111060.000000
value2=111060.000000
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
date2=1685355360
value1=109985.000000
value2=109985.000000
</object>

<object>
type=101
name=2023.05.24 00:00 POC L
hidden=1
descr=109985
color=42495
selectable=0
angle=0
date1=1685355660
value1=109985.000000
fontsz=7
fontnm=Tahoma
anchorpos=1
</object>

<object>
type=2
name=2023.05.25 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005542
value1=110200.000000
value2=110200.000000
</object>

<object>
type=2
name=2023.05.25 00:00 16
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005542
value1=110216.000000
value2=110216.000000
</object>

<object>
type=2
name=2023.05.25 00:00 32
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005542
value1=110232.000000
value2=110232.000000
</object>

<object>
type=2
name=2023.05.25 00:00 48
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005542
value1=110248.000000
value2=110248.000000
</object>

<object>
type=2
name=2023.05.25 00:00 64
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005884
value1=110264.000000
value2=110264.000000
</object>

<object>
type=2
name=2023.05.25 00:00 80
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005884
value1=110280.000000
value2=110280.000000
</object>

<object>
type=2
name=2023.05.25 00:00 96
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=110296.000000
value2=110296.000000
</object>

<object>
type=2
name=2023.05.25 00:00 112
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=110312.000000
value2=110312.000000
</object>

<object>
type=2
name=2023.05.25 00:00 128
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=110328.000000
value2=110328.000000
</object>

<object>
type=2
name=2023.05.25 00:00 144
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=110344.000000
value2=110344.000000
</object>

<object>
type=2
name=2023.05.25 00:00 160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=110360.000000
value2=110360.000000
</object>

<object>
type=2
name=2023.05.25 00:00 176
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=110376.000000
value2=110376.000000
</object>

<object>
type=2
name=2023.05.25 00:00 192
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=110392.000000
value2=110392.000000
</object>

<object>
type=2
name=2023.05.25 00:00 208
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=110408.000000
value2=110408.000000
</object>

<object>
type=2
name=2023.05.25 00:00 224
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=110424.000000
value2=110424.000000
</object>

<object>
type=2
name=2023.05.25 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=110440.000000
value2=110440.000000
</object>

<object>
type=2
name=2023.05.25 00:00 256
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006568
value1=110456.000000
value2=110456.000000
</object>

<object>
type=2
name=2023.05.25 00:00 272
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=110472.000000
value2=110472.000000
</object>

<object>
type=2
name=2023.05.25 00:00 288
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=110488.000000
value2=110488.000000
</object>

<object>
type=2
name=2023.05.25 00:00 304
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685008620
value1=110504.000000
value2=110504.000000
</object>

<object>
type=2
name=2023.05.25 00:00 320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685009646
value1=110520.000000
value2=110520.000000
</object>

<object>
type=2
name=2023.05.25 00:00 336
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685009988
value1=110536.000000
value2=110536.000000
</object>

<object>
type=2
name=2023.05.25 00:00 352
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011014
value1=110552.000000
value2=110552.000000
</object>

<object>
type=2
name=2023.05.25 00:00 368
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011014
value1=110568.000000
value2=110568.000000
</object>

<object>
type=2
name=2023.05.25 00:00 384
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011698
value1=110584.000000
value2=110584.000000
</object>

<object>
type=2
name=2023.05.25 00:00 400
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685016144
value1=110600.000000
value2=110600.000000
</object>

<object>
type=2
name=2023.05.25 00:00 416
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685020248
value1=110616.000000
value2=110616.000000
</object>

<object>
type=2
name=2023.05.25 00:00 432
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685021616
value1=110632.000000
value2=110632.000000
</object>

<object>
type=2
name=2023.05.25 00:00 448
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685024010
value1=110648.000000
value2=110648.000000
</object>

<object>
type=2
name=2023.05.25 00:00 464
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685026062
value1=110664.000000
value2=110664.000000
</object>

<object>
type=2
name=2023.05.25 00:00 480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685028114
value1=110680.000000
value2=110680.000000
</object>

<object>
type=2
name=2023.05.25 00:00 496
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685028456
value1=110696.000000
value2=110696.000000
</object>

<object>
type=2
name=2023.05.25 00:00 512
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685026404
value1=110712.000000
value2=110712.000000
</object>

<object>
type=2
name=2023.05.25 00:00 528
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685026062
value1=110728.000000
value2=110728.000000
</object>

<object>
type=2
name=2023.05.25 00:00 544
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685024352
value1=110744.000000
value2=110744.000000
</object>

<object>
type=2
name=2023.05.25 00:00 560
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685026746
value1=110760.000000
value2=110760.000000
</object>

<object>
type=2
name=2023.05.25 00:00 576
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685027772
value1=110776.000000
value2=110776.000000
</object>

<object>
type=2
name=2023.05.25 00:00 592
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685027772
value1=110792.000000
value2=110792.000000
</object>

<object>
type=2
name=2023.05.25 00:00 608
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685025036
value1=110808.000000
value2=110808.000000
</object>

<object>
type=2
name=2023.05.25 00:00 624
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685024352
value1=110824.000000
value2=110824.000000
</object>

<object>
type=2
name=2023.05.25 00:00 640
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685025378
value1=110840.000000
value2=110840.000000
</object>

<object>
type=2
name=2023.05.25 00:00 656
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685030508
value1=110856.000000
value2=110856.000000
</object>

<object>
type=2
name=2023.05.25 00:00 672
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685032560
value1=110872.000000
value2=110872.000000
</object>

<object>
type=2
name=2023.05.25 00:00 688
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685033244
value1=110888.000000
value2=110888.000000
</object>

<object>
type=2
name=2023.05.25 00:00 704
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685029482
value1=110904.000000
value2=110904.000000
</object>

<object>
type=2
name=2023.05.25 00:00 720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685028456
value1=110920.000000
value2=110920.000000
</object>

<object>
type=2
name=2023.05.25 00:00 736
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685030508
value1=110936.000000
value2=110936.000000
</object>

<object>
type=2
name=2023.05.25 00:00 752
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685029824
value1=110952.000000
value2=110952.000000
</object>

<object>
type=2
name=2023.05.25 00:00 768
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685028114
value1=110968.000000
value2=110968.000000
</object>

<object>
type=2
name=2023.05.25 00:00 784
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685025378
value1=110984.000000
value2=110984.000000
</object>

<object>
type=2
name=2023.05.25 00:00 800
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685024352
value1=111000.000000
value2=111000.000000
</object>

<object>
type=2
name=2023.05.25 00:00 816
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685027772
value1=111016.000000
value2=111016.000000
</object>

<object>
type=2
name=2023.05.25 00:00 832
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685027772
value1=111032.000000
value2=111032.000000
</object>

<object>
type=2
name=2023.05.25 00:00 848
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685025720
value1=111048.000000
value2=111048.000000
</object>

<object>
type=2
name=2023.05.25 00:00 864
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685025720
value1=111064.000000
value2=111064.000000
</object>

<object>
type=2
name=2023.05.25 00:00 880
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685022642
value1=111080.000000
value2=111080.000000
</object>

<object>
type=2
name=2023.05.25 00:00 896
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685021958
value1=111096.000000
value2=111096.000000
</object>

<object>
type=2
name=2023.05.25 00:00 912
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685021616
value1=111112.000000
value2=111112.000000
</object>

<object>
type=2
name=2023.05.25 00:00 928
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685020932
value1=111128.000000
value2=111128.000000
</object>

<object>
type=2
name=2023.05.25 00:00 944
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685018538
value1=111144.000000
value2=111144.000000
</object>

<object>
type=2
name=2023.05.25 00:00 960
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685017170
value1=111160.000000
value2=111160.000000
</object>

<object>
type=2
name=2023.05.25 00:00 976
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685015802
value1=111176.000000
value2=111176.000000
</object>

<object>
type=2
name=2023.05.25 00:00 992
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685016828
value1=111192.000000
value2=111192.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1008
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685018196
value1=111208.000000
value2=111208.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1024
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685018880
value1=111224.000000
value2=111224.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1040
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685018196
value1=111240.000000
value2=111240.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1056
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685019222
value1=111256.000000
value2=111256.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1072
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685017512
value1=111272.000000
value2=111272.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1088
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685017854
value1=111288.000000
value2=111288.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1104
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685013066
value1=111304.000000
value2=111304.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685013750
value1=111320.000000
value2=111320.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1136
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685013408
value1=111336.000000
value2=111336.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1152
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685013408
value1=111352.000000
value2=111352.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1168
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685012382
value1=111368.000000
value2=111368.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1184
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011698
value1=111384.000000
value2=111384.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011014
value1=111400.000000
value2=111400.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1216
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685012382
value1=111416.000000
value2=111416.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1232
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011698
value1=111432.000000
value2=111432.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1248
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685011698
value1=111448.000000
value2=111448.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1264
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685010672
value1=111464.000000
value2=111464.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685008962
value1=111480.000000
value2=111480.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1296
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685008620
value1=111496.000000
value2=111496.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1312
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007936
value1=111512.000000
value2=111512.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1328
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=111528.000000
value2=111528.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1344
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=111544.000000
value2=111544.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1360
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685007252
value1=111560.000000
value2=111560.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1376
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111576.000000
value2=111576.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1392
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111592.000000
value2=111592.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1408
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111608.000000
value2=111608.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1424
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111624.000000
value2=111624.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111640.000000
value2=111640.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1456
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111656.000000
value2=111656.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1472
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111672.000000
value2=111672.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1488
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006568
value1=111688.000000
value2=111688.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1504
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111704.000000
value2=111704.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006910
value1=111720.000000
value2=111720.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1536
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111736.000000
value2=111736.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1552
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111752.000000
value2=111752.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1568
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111768.000000
value2=111768.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1584
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111784.000000
value2=111784.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1600
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111800.000000
value2=111800.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1616
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111816.000000
value2=111816.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1632
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685006226
value1=111832.000000
value2=111832.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1648
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005884
value1=111848.000000
value2=111848.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1664
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005884
value1=111864.000000
value2=111864.000000
</object>

<object>
type=2
name=2023.05.25 00:00 1680
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685005200
date2=1685005200
value1=111880.000000
value2=111880.000000
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
name=2023.05.26 00:00 0
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685091946
value1=110390.000000
value2=110390.000000
</object>

<object>
type=2
name=2023.05.26 00:00 20
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685091946
value1=110410.000000
value2=110410.000000
</object>

<object>
type=2
name=2023.05.26 00:00 40
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685091946
value1=110430.000000
value2=110430.000000
</object>

<object>
type=2
name=2023.05.26 00:00 60
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092292
value1=110450.000000
value2=110450.000000
</object>

<object>
type=2
name=2023.05.26 00:00 80
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092292
value1=110470.000000
value2=110470.000000
</object>

<object>
type=2
name=2023.05.26 00:00 100
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092292
value1=110490.000000
value2=110490.000000
</object>

<object>
type=2
name=2023.05.26 00:00 120
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092292
value1=110510.000000
value2=110510.000000
</object>

<object>
type=2
name=2023.05.26 00:00 140
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110530.000000
value2=110530.000000
</object>

<object>
type=2
name=2023.05.26 00:00 160
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110550.000000
value2=110550.000000
</object>

<object>
type=2
name=2023.05.26 00:00 180
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110570.000000
value2=110570.000000
</object>

<object>
type=2
name=2023.05.26 00:00 200
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110590.000000
value2=110590.000000
</object>

<object>
type=2
name=2023.05.26 00:00 220
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110610.000000
value2=110610.000000
</object>

<object>
type=2
name=2023.05.26 00:00 240
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092638
value1=110630.000000
value2=110630.000000
</object>

<object>
type=2
name=2023.05.26 00:00 260
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092984
value1=110650.000000
value2=110650.000000
</object>

<object>
type=2
name=2023.05.26 00:00 280
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092984
value1=110670.000000
value2=110670.000000
</object>

<object>
type=2
name=2023.05.26 00:00 300
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092984
value1=110690.000000
value2=110690.000000
</object>

<object>
type=2
name=2023.05.26 00:00 320
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092984
value1=110710.000000
value2=110710.000000
</object>

<object>
type=2
name=2023.05.26 00:00 340
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092292
value1=110730.000000
value2=110730.000000
</object>

<object>
type=2
name=2023.05.26 00:00 360
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685092984
value1=110750.000000
value2=110750.000000
</object>

<object>
type=2
name=2023.05.26 00:00 380
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685093330
value1=110770.000000
value2=110770.000000
</object>

<object>
type=2
name=2023.05.26 00:00 400
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094368
value1=110790.000000
value2=110790.000000
</object>

<object>
type=2
name=2023.05.26 00:00 420
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=110810.000000
value2=110810.000000
</object>

<object>
type=2
name=2023.05.26 00:00 440
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=110830.000000
value2=110830.000000
</object>

<object>
type=2
name=2023.05.26 00:00 460
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=110850.000000
value2=110850.000000
</object>

<object>
type=2
name=2023.05.26 00:00 480
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094714
value1=110870.000000
value2=110870.000000
</object>

<object>
type=2
name=2023.05.26 00:00 500
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095406
value1=110890.000000
value2=110890.000000
</object>

<object>
type=2
name=2023.05.26 00:00 520
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685097136
value1=110910.000000
value2=110910.000000
</object>

<object>
type=2
name=2023.05.26 00:00 540
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685097482
value1=110930.000000
value2=110930.000000
</object>

<object>
type=2
name=2023.05.26 00:00 560
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095406
value1=110950.000000
value2=110950.000000
</object>

<object>
type=2
name=2023.05.26 00:00 580
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=110970.000000
value2=110970.000000
</object>

<object>
type=2
name=2023.05.26 00:00 600
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094368
value1=110990.000000
value2=110990.000000
</object>

<object>
type=2
name=2023.05.26 00:00 620
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095406
value1=111010.000000
value2=111010.000000
</object>

<object>
type=2
name=2023.05.26 00:00 640
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095406
value1=111030.000000
value2=111030.000000
</object>

<object>
type=2
name=2023.05.26 00:00 660
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=111050.000000
value2=111050.000000
</object>

<object>
type=2
name=2023.05.26 00:00 680
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095752
value1=111070.000000
value2=111070.000000
</object>

<object>
type=2
name=2023.05.26 00:00 700
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095406
value1=111090.000000
value2=111090.000000
</object>

<object>
type=2
name=2023.05.26 00:00 720
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685093330
value1=111110.000000
value2=111110.000000
</object>

<object>
type=2
name=2023.05.26 00:00 740
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094368
value1=111130.000000
value2=111130.000000
</object>

<object>
type=2
name=2023.05.26 00:00 760
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094714
value1=111150.000000
value2=111150.000000
</object>

<object>
type=2
name=2023.05.26 00:00 780
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094022
value1=111170.000000
value2=111170.000000
</object>

<object>
type=2
name=2023.05.26 00:00 800
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685094714
value1=111190.000000
value2=111190.000000
</object>

<object>
type=2
name=2023.05.26 00:00 820
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=111210.000000
value2=111210.000000
</object>

<object>
type=2
name=2023.05.26 00:00 840
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095752
value1=111230.000000
value2=111230.000000
</object>

<object>
type=2
name=2023.05.26 00:00 860
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685096444
value1=111250.000000
value2=111250.000000
</object>

<object>
type=2
name=2023.05.26 00:00 880
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685096444
value1=111270.000000
value2=111270.000000
</object>

<object>
type=2
name=2023.05.26 00:00 900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=111290.000000
value2=111290.000000
</object>

<object>
type=2
name=2023.05.26 00:00 920
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685096098
value1=111310.000000
value2=111310.000000
</object>

<object>
type=2
name=2023.05.26 00:00 940
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685096444
value1=111330.000000
value2=111330.000000
</object>

<object>
type=2
name=2023.05.26 00:00 960
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685097136
value1=111350.000000
value2=111350.000000
</object>

<object>
type=2
name=2023.05.26 00:00 980
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685097482
value1=111370.000000
value2=111370.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1000
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101288
value1=111390.000000
value2=111390.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1020
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685100942
value1=111410.000000
value2=111410.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1040
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685102672
value1=111430.000000
value2=111430.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1060
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=111450.000000
value2=111450.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1080
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106824
value1=111470.000000
value2=111470.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1100
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685105440
value1=111490.000000
value2=111490.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1120
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685105094
value1=111510.000000
value2=111510.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1140
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685105094
value1=111530.000000
value2=111530.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1160
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106478
value1=111550.000000
value2=111550.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1180
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104402
value1=111570.000000
value2=111570.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1200
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106824
value1=111590.000000
value2=111590.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1220
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685107862
value1=111610.000000
value2=111610.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1240
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685109246
value1=111630.000000
value2=111630.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1260
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685111668
value1=111650.000000
value2=111650.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1280
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685114436
value1=111670.000000
value2=111670.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1300
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685117550
value1=111690.000000
value2=111690.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1320
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685119280
value1=111710.000000
value2=111710.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1340
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685115128
value1=111730.000000
value2=111730.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1360
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106824
value1=111750.000000
value2=111750.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1380
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104748
value1=111770.000000
value2=111770.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1400
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685102672
value1=111790.000000
value2=111790.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1420
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685105094
value1=111810.000000
value2=111810.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1440
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104748
value1=111830.000000
value2=111830.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1460
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106132
value1=111850.000000
value2=111850.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1480
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685107170
value1=111870.000000
value2=111870.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1500
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685108208
value1=111890.000000
value2=111890.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1520
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685106478
value1=111910.000000
value2=111910.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1540
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104402
value1=111930.000000
value2=111930.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1560
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=111950.000000
value2=111950.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1580
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=111970.000000
value2=111970.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1600
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685102672
value1=111990.000000
value2=111990.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1620
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101634
value1=112010.000000
value2=112010.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1640
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101980
value1=112030.000000
value2=112030.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1660
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685105094
value1=112050.000000
value2=112050.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1680
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104748
value1=112070.000000
value2=112070.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1700
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=112090.000000
value2=112090.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1720
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101288
value1=112110.000000
value2=112110.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1740
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101634
value1=112130.000000
value2=112130.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1760
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103710
value1=112150.000000
value2=112150.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1780
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685104402
value1=112170.000000
value2=112170.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1800
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103364
value1=112190.000000
value2=112190.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1820
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=112210.000000
value2=112210.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1840
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685103018
value1=112230.000000
value2=112230.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1860
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685101288
value1=112250.000000
value2=112250.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1880
hidden=1
color=8519755
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685100942
value1=112270.000000
value2=112270.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1900
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685098520
value1=112290.000000
value2=112290.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1920
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685096444
value1=112310.000000
value2=112310.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1940
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685095060
value1=112330.000000
value2=112330.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1960
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685093330
value1=112350.000000
value2=112350.000000
</object>

<object>
type=2
name=2023.05.26 00:00 1980
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685093330
value1=112370.000000
value2=112370.000000
</object>

<object>
type=2
name=2023.05.26 00:00 2000
hidden=1
color=16711935
background=1
selectable=0
ray1=0
ray2=0
date1=1685091600
date2=1685091946
value1=112390.000000
value2=112390.000000
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

</window>
</chart>