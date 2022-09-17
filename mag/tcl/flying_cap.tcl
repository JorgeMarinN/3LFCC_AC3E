
# #########################	#
#   AC3E - UTFSM      		#
#   Project: 3LFCC    		#
#   Flying capacitor layout	#
#   17-09-2022        		#
# #########################	#

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

#
source cap_matrix_43x46.tcl

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

#
save flying_cap.mag