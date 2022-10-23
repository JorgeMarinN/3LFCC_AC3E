
# #########################	#
#   AC3E - UTFSM      		#
#   Project: 3LFCC    		#
#   Flying capacitor layout	#
#   23-10-2022        		#
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
source cap_matrix_43x52.tcl
flatten flying_cap
load flying_cap

# terminal 1
box 10um 1658.8um 689.9um 1670um
paint {metal3 metal5}
box 10um 1660um 689.9um 1680um
paint metal4
box 10.2um 1660.2um 689.7um 1669.8um
paint {via3 via4}

# terminal 2
box 710um 1658um 1360um 1659um
erase {metal5 metal3} 
box 711.8um 1658.8um 1359.8um 1670um
paint metal4
box 711.8um 1660um 1359.8um 1680um
paint {metal3 metal5}
box 712um 1660.2um 1359.6um 1669.8um
paint {via3 via4}


# pad 1
box 0um 795.89um 95.7um 988.89um
erase {metal3 metal5 mimcap mimcapcontact mimcap2} 
box 0um 797.89um 93.7um 986.89um
paint {metal3 metal4 metal5 } 
box 0.5um 798.39um 93.2um 986.39um
paint {via3 via4} 

# pad 2
box 0um 1210.6um 95.7um 1403.6um
erase {metal4 mimcap mimcapcontact mimcap2 mimcap2contact} 
box 0um 1212.6um 93.7um 1401.6um
paint {metal3 metal4 metal5} 
box 0.5um 1213.1um 93.2um 1401.1um
paint {via3 via4} 

#
#source cap_matrix_43x46.tcl

# terminal 1
#box 10.3um 1467.4um 690.2um 1480um
#paint {metal3 metal5}
#box 10.3um 1470um 690.2um 1480um
#paint metal4
#box 10.5um 1470.2um 690um 1479.8um
#paint {via3 via4}

# terminal 2
#box 712.1um 1467.4um 1360.1um 1480um
#paint metal4
#box 712.1um 1470um 1360.1um 1480um
#paint {metal3 metal5}
#box 712.3um 1470.2um 1359.9um 1479.8um
#paint {via3 via4}

#
save flying_cap.mag