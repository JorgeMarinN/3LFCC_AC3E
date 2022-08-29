
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
box 8um 0 10um 10um
getcell power_stage.mag
box 380um 0 390um 10um
getcell power_stage.mag
sideways
box um um um um
paint {metal3 metal4 metal5}

