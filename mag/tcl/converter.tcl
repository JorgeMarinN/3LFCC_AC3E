
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Converter layout	#
#   01-09-2022        	#
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
box 0.3um 0um 10um 10um
getcell flying_cap.mag

box 0um 1500um 10um 1510um
getcell power_stage.mag
rotate -90
# terminal 1
box 10.3um 1467.4um 690.2um 1480um
paint {metal3 metal5}
box 10.3um 1470um 690.2um 1480um
paint metal4
box 10.5um 1470.2um 690um 1479.8um
paint {via3 via4}


# terminal 2
box 712.1um 1467.4um 1360.1um 1480um
paint metal4
box 712.1um 1470um 1360.1um 1480um
paint {metal3 metal5}
box 712.3um 1470.2um 1359.9um 1479.8um
paint {via3 via4}

#paint {metal3 metal4 metal5}

drc style drc(full)
save converter.mag