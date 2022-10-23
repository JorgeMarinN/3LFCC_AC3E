
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Topmodule layout	#
#   22-10-2022        	#
# #####################	#

set midd 1460
set yoff 1250

drc style drc(full)

see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
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

getcell user_analog_project_wrapper_empty.mag
box [expr {$midd - 1380}]um [expr {$yoff}]um [expr {$midd - 1380}]um [expr {$yoff}]um
getcell interleaved.mag

box 0um 1889um 20um 1895um
paint metal3
box 0um 2105um 20um 2111um
paint metal3
box 0um 2321um 20um 2327um
paint metal3
box 0um 2537um 20um 2543um
paint metal3

# Vdd
box 340um 3500um 853um 3511.5um
paint {metal3 metal4 metal5}
box 850um 3500um 880um 3510um
paint {metal3 metal4 metal5}
box 879.47um 3500um 905um 3511.5um
paint {metal3 metal4 metal5}

# Vout
box 1470um 3500um 1619.97um 3511.5um
paint {metal3 metal4 metal5}
box 1610um 3500um 1650um 3510um
paint {metal3 metal4 metal5}
box 1646.47um 3500um 1671.47um 3511.5um
paint {metal3 metal4 metal5}

# GND
box 1086.47um 3500um 1111.47um 3511.5um
paint {metal3 metal4 metal5}
box 1110um 3500um 1140um 3510um
paint {metal3 metal4 metal5}
box 1137.97um 3500um 1460um 3511.5um
paint {metal3 metal4 metal5}

# FC1_1
box 60um 2910m 70um 3510um
paint metal3

# FC1_2
box 40um 2850m 50um 3430um
paint metal3

# FC2_1
box 2850um 2910m 2860um 3510um
paint metal3

# FC2_2
box 2870um 2850m 2880um 3420um
paint metal3


# ##

box 0um 3401um 20um 3427um
paint metal3
box 81um 3500um 106um 3520um
paint metal3
box 341um 3500um 853um 3520um
paint {metal3 metal4 metal5}
box 853um 3500um 879um 3511um
paint {metal3 metal4 metal5}
box 879um 3500um 904um 3520um
paint {metal3 metal4 metal5}
box 1086um 3500um 1112um 3520um
paint {metal3 metal4 metal5}
box 1111um 3500um 1138um 3511um
paint {metal3 metal4 metal5}
box 1137um 3500um 1163um 3520um
paint {metal3 metal4 metal5}
box 1595um 3500um 1620um 3520um
paint {metal3 metal4 metal5}
box 1620um 3500um 1647um 3511um
paint {metal3 metal4 metal5}
box 1646um 3500um 2092um 3520um
paint {metal3 metal4 metal5}
box 2327um 3500um 2352um 3520um
paint metal3
box 2833um 3500um 2858um 3520um
paint metal3
box 2900um 3390um 2920um 3415um
paint metal3

box 2900um 2933um 2920um 2939um
paint metal3 
box 2900um 2486um 2920um 2492um
paint metal3 
box 2900um 2264um 2920um 2270um
paint metal3 
box 2900um 2041um 2920um 2047um
paint metal3 


# 
box 0um 0um 10um 3520um
paint comment
box 0um 0um 2920um 10um
paint comment
box 0um 3510um 2920um 3520um
paint comment
box 2910um 0um 2920um 3520um
paint comment
box 70um 1250um 80um 3010um
getcell core.mag
box 1458um 1250um 1468um 3010um
getcell core.mag
sideways

