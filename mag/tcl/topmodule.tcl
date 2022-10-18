
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Topmodule layout	#
#   09-10-2022        	#
# #####################	#

drc style drc(full)

see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
see no locali
see no viali
see no metal1
see no m2contact
see no m3contact
see no via3
see no via4

getcell user_analog_project_wrapper_empty.mag

box 0um 1889um 20um 1895um
paint metal3
box 0um 2105um 20um 2111um
paint metal3
box 0um 2321um 20um 2327um
paint metal3
box 0um 2537um 20um 2543um
paint metal3

# Vdd
box 340.97um 3450um 852.97um 3511.5um
paint {metal3 metal4 metal5}
box 850um 3450um 880um 3510um
paint {metal3 metal4 metal5}
box 879.47um 3450um 904.47um 3511.5um
paint {metal3 metal4 metal5}
box 350um 3460um 900um 3500um
paint {via3 via4}
box 840um 3388um 2580um 3448um
paint {metal3 metal4 metal5}
box 840um 3388um 900um 3460um
paint {metal3 metal4 metal5}

box 320um 3350um 380um 3510um
paint {metal3 metal4 metal5}
box 2520um 3350um 2580um 3440um
paint {metal3 metal4 metal5}

# Vout


box 1010um 3326um 1890um 3386um
paint {metal3 metal4 metal5}

# GND
box 1086.47um 3450um 1111.47um 3511.5um
paint {metal3 metal4 metal5}
box 1110um 3450um 1140um 3510um
paint {metal3 metal4 metal5}
box 1137.97um 3450um 1570um 3511.5um
paint {metal3 metal4 metal5}

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

