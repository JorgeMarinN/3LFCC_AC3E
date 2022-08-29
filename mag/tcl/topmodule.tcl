
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Interleaved layout	#
#   20-08-2022        	#
# #####################	#

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
see no metal3
see no via3
see no metal4
see no via4

# 
box 0um 0um 10um 3520um
paint comment
box 0um 0um 2920um 10um
paint comment
box 0um 3510um 2920um 3520um
paint comment
box 2910um 0um 2920um 3520um
paint comment
box 70um 3000um 80um 3010um
getcell power_stage.mag
rotate -90
box 1458um 3000um 1468um 3010um
getcell power_stage.mag
rotate 90
upsidedown


box 82um 3000um 100um 3010um
getcell power_stage.mag
rotate -90
box 1446um 3000um 1468um 3010um
getcell power_stage.mag
rotate 90
upsidedown