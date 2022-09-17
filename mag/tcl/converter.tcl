
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Converter layout	#
#   17-09-2022        	#
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

#
box 0.3um 0um 10um 10um
getcell flying_cap.mag

box 0um 1500um 10um 1510um
getcell power_stage.mag
rotate -90

# connections
box 80um 1470um 690um 1540um
paint metal4
box 80um 1482um 690um 1540um
paint {metal3 metal5}
box 81um 1483um 689um 1500um
paint {via3 via4}

box 820um 1470um 1300um 1540um
paint {metal3 metal5}
box 820um 1482um 1300um 1540um
paint metal4
box 821um 1483um 1299um 1500um
paint {via3 via4}

drc style drc(full)
save converter.mag