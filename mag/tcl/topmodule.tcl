
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Topmodule layout	#
#   09-11-2022        	#
# #####################	#

set midd 1460
set yoff 1245

drc style drc(full)
tech unlock glass

see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no pcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
see no mvntransistor
see no polysilicon
see no locali
see no viali
see no metal1
see no m2contact
see no m3contact
see no via3
see no via4
see no mimcap
see no mimcap2
see no mimcapcontact
see no mimcap2contact

#box 0um 0um 10um 10um
#paint comment
load user_analog_project_wrapper_empty.mag
box [expr {$midd - 1385.6}]um [expr {$yoff}]um [expr {$midd - 1385.6}]um [expr {$yoff}]um
getcell interleaved.mag

# ## Power Pins Routing ###
# VH1
box 340um 3500um 366um 3511.5um
paint {metal3}
box 600um 3511um 626um 3511.5um
paint {rmetal3}
box 600um 3510um 626um 3511um
paint {metal3}
# Vout1
box 730um 3500um 853um 3511.5um
paint {metal3 metal4 metal5}
box 850um 3500um 880um 3510um
paint {metal3 metal4 metal5}
box 879.47um 3500um 905um 3511.5um
paint {metal3 metal4 metal5}
# GND
box 1086.47um 3480um 1111.47um 3511.5um
paint {metal3 metal4 metal5}
box 1110um 3480um 1140um 3510um
paint {metal3 metal4 metal5}
box 1137.97um 3480um 1190um 3511.5um
paint {metal3 metal4 metal5}
box 1086.47um 3448um 1190um 3478um
paint {metal3 metal4 metal5}
box 1086.47um 3448um 1116um 3500um
paint {metal3 metal4 metal5}
# Vout2
box 1594.97um 3480um 1619.97um 3511.5um
paint {metal3 metal4 metal5}
box 1610um 3480um 1650um 3510um
paint {metal3 metal4 metal5}
box 1646.47um 3480um 1810um 3511.5um
paint {metal3 metal4 metal5}
box 1594.97um 3448um 1810um 3478um
paint {metal3 metal4 metal5}
box 1594.97um 3448um 1624um 3500um
paint {metal3 metal4 metal5}
# VH2
box 2066um 3511um 2092um 3511.5um
paint rmetal3
box 2326um 3511um 2352um 3511.5um
paint rmetal3
box 2066um 3510um 2092um 3511um
paint metal3
box 2326um 3510um 2352um 3511um
paint metal3

# ## Power Pads ###
box 142.8um 3411um 442.8um 3511um
getcell power_pad.mag
box 642.8um 3411um 942.8um 3511um
getcell power_pad.mag
box 1142.8um 3411um 1442.8um 3511um
getcell power_pad.mag
box 1642.8um 3411um 1942.8um 3511um
getcell power_pad.mag
box 2142.8um 3411um 2442.8um 3511um
getcell power_pad.mag

# ## FC Pads ###
box [expr {$midd - 1385.4}]um [expr {$yoff + 1437.3}]um [expr {$midd - 1285.8}]um [expr {$yoff + 1657}]um
paint glass
box [expr {$midd - 1385.4}]um [expr {$yoff + 990.7}]um [expr {$midd - 1285.8}]um [expr {$yoff + 1210.4}]um
paint glass
box [expr {$midd + 1285.8}]um [expr {$yoff + 1437.3}]um [expr {$midd + 1385.4}]um [expr {$yoff + 1657}]um
paint glass
box [expr {$midd + 1285.8}]um [expr {$yoff + 990.7}]um [expr {$midd + 1385.4}]um [expr {$yoff + 1210.4}]um
paint glass

# ## DI Routing ###
#D1 -> io_in[20]
box 9um [expr {$yoff + 1679}]um 80um [expr {$yoff + 1680}]um
paint {metal1}
box 9.05um [expr {$yoff + 1679.05}]um 9.95um [expr {$yoff + 1679.95}]um
paint {m2contact}
box 9um 1244um 10um [expr {$yoff + 1680}]um
paint {metal2}
box 9.05um 1244.05um 9.95um 1244.95um
paint {m3contact}
box 0um 1242um 10um 1247um
paint {metal3}
label D1 west metal3
#D2 -> io_in[19]
box 10.5um [expr {$yoff + 1677.5}]um 80um [expr {$yoff + 1678.5}]um
paint {metal1}
box 10.55um [expr {$yoff + 1677.55}]um 11.45um [expr {$yoff + 1678.45}]um
paint {m2contact}
box 10.5um 1459.5um 11.5um [expr {$yoff + 1678.5}]um
paint {metal2}
box 10.55um 1459.55um 11.45um 1460.45um
paint {m3contact}
box 0um 1457um 11.5um 1462um
paint {metal3}
label D2 west metal3
#D3 -> io_in[18]
box 12um [expr {$yoff + 1676}]um 80um [expr {$yoff + 1677}]um
paint {metal1}
box 12.05um [expr {$yoff + 1676.05}]um 12.95um [expr {$yoff + 1676.95}]um
paint {m2contact}
box 12um 1675um 13um [expr {$yoff + 1677}]um
paint {metal2}
box 12.05um 1675.05um 12.95um 1675.95um
paint {m3contact}
box 0um 1673um 13um 1678um
paint metal3
label D3 west metal3
#D4 -> io_in[17]
box 13.5um [expr {$yoff + 1674.5}]um 80um [expr {$yoff + 1675.5}]um
paint {metal1}
box 13.55um [expr {$yoff + 1674.55}]um 14.45um [expr {$yoff + 1675.45}]um
paint {m2contact}
box 13.5um 1891um 14.5um [expr {$yoff + 1675.5}]um
paint {metal2}
box 13.55um 1891.05um 14.45um 1891.95um
paint {m3contact}
box 0um 1889um 14.5um 1894um
paint metal3
label D4 west metal3
#D5 -> io_in[7]
box 2830um [expr {$yoff + 1679}]um 2911um [expr {$yoff + 1680}]um
paint {metal1}
box 2910.05um [expr {$yoff + 1679.05}]um 2910.95um [expr {$yoff + 1679.95}]um
paint {m2contact}
box 2910um 1364um 2911um [expr {$yoff + 1680}]um
paint {metal2}
box 2910.05um 1364.05um 2910.95um 1364.95um
paint {m3contact}
box 2910um 1362um 2920um 1367um
paint {metal3}
label D5 east metal3
#D6 -> io_in[8]
box 2830um [expr {$yoff + 1677.5}]um 2909.5um [expr {$yoff + 1678.5}]um
paint {metal1}
box 2908.55um [expr {$yoff + 1677.55}]um 2909.45um [expr {$yoff + 1678.45}]um
paint {m2contact}
box 2908.5um 1586um 2909.5um [expr {$yoff + 1678.5}]um
paint {metal2}
box 2908.55um 1586.05um 2909.45um 1586.95um
paint {m3contact}
box 2908.5um 1584um 2920um 1589um
paint {metal3}
label D6 east metal3
#D7 -> io_in[9]
box 2830um [expr {$yoff + 1676}]um 2908um [expr {$yoff + 1677}]um
paint {metal1}
box 2907.05um [expr {$yoff + 1676.05}]um 2907.95um [expr {$yoff + 1676.95}]um
paint {m2contact}
box 2907um 1812um 2908um [expr {$yoff + 1677}]um
paint {metal2}
box 2907.05um 1812.05um 2907.95um 1812.95um
paint {m3contact}
box 2907um 1810um 2920um 1815um
paint metal3
label D7 east metal3
#D8 -> io_in[10]
box 2830um [expr {$yoff + 1674.5}]um 2906.5um [expr {$yoff + 1675.5}]um
paint {metal1}
box 2905.55um [expr {$yoff + 1674.55}]um 2906.45um [expr {$yoff + 1675.45}]um
paint {m2contact}
box 2905.5um 2044um 2906.5um [expr {$yoff + 1675.5}]um
paint {metal2}
box 2905.55um 2044.05um 2906.45um 2044.95um
paint {m3contact}
box 2905.5um 2042um 2920um 2047um
paint metal3
label D8 east metal3

# ## LS Supply Routing ###
#VLS1
box 15um [expr {$yoff + 1683.5}]um 80um [expr {$yoff + 1686.5}]um
paint {metal1}
box 15.05um [expr {$yoff + 1683.55}]um 17.95um [expr {$yoff + 1686.45}]um
paint {m2contact}
box 15um 1024um 18um [expr {$yoff + 1686.5}]um
paint {metal2}
box 15.05um 1024.49um 17.95um 1098.39um
paint {m3contact}
box 5um 1024.44um 18um 1098.44um
paint metal3
label VLS1 west metal3
#VLS2
box 2830um [expr {$yoff + 1683.5}]um 2905um [expr {$yoff + 1686.5}]um
paint {metal1}
box 2902.05um [expr {$yoff + 1683.55}]um 2904.95um [expr {$yoff + 1686.45}]um
paint {m2contact}
box 2902um 1126um 2905um [expr {$yoff + 1686.5}]um
paint {metal2}
box 2902.05um 1126.2um 2904.95um 1200.1um
paint {m3contact}
box 2902um 1126.15um 2915um 1200.15um
paint metal3
label VLS2 east metal3
#VDD
box 2830um [expr {$yoff + 1680.5}]um 2911um [expr {$yoff + 1683}]um
paint {metal1}
box 2908.55um [expr {$yoff + 1680.55}]um 2910.95um [expr {$yoff + 1682.95}]um
paint {m2contact}
box 2908.5um [expr {$yoff + 1680.5}]um 2911um 3223um
paint {metal2}
box 2908.55um 3148.97um 2910.95um 3222.87um
paint {m3contact}
box 2908.5um 3148.92um 2915um 3222.92um
paint metal3
label VDD east metal3

# ## FC Routing ###
# FC1_1
box 70um 2890um 80um 3510um
paint metal3
box 80um 3500um 110um 3512um
paint metal3
label FC1_1 east metal3
# FC1_2
box 55um 2440um 65um 3420um
paint metal3
box 55um 2440um 80um 2450um
paint metal3
box 8um 3400um 65um 3420um
paint metal3
label FC1_2 north metal3
# FC2_1
box 2840um 2890um 2850um 3512um
paint metal3
box 2840um 3480um 2850um 3510um
label FC2_1 east metal3
# FC2_2
box 2855um 2440um 2865um 3410um
paint metal3
box 2830um 2440um 2865um 2450um
paint metal3
box 2855um 3390um 2912um 3410um
paint metal3
label FC2_2 north metal3

# 
#box -10um -10um 0um 3530um
#paint comment
#box -10um -10um 2930um 0um
#paint comment
#box -10um 3520um 2920um 3530um
#paint comment
#box 2920um -10um 2930um 3530um
#paint comment

#save topmodule.mag
save user_analog_project_wrapper.mag

