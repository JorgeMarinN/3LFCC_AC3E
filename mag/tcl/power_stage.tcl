
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Power stage layout	#
#   20-08-2022        	#
#	Based on Open PMIC	#
# #####################	#

# NMOS 1
box 74um 0 84um 10um
getcell nmos_waffle_36x36.mag
box 108um 61.61um 118um 71um
paint {metal3 metal4 metal5}
box 100um 59.25um 127um 68um 
paint metal2
box 100um 57um 123.62um 60um
paint metal2
box 100um 52um 127um 57.49um 
paint metal2

# NMOS 2
box 74um 310um 84um 320um 
getcell nmos_waffle_36x36.mag
rotate
box 135.61um 572um 145um 582um
paint {metal3 metal4 metal5}
box 100um 564um 131.4um 580um
paint metal2
box 131.4um 566.4um 133.3um 580um
paint metal2
box 133.3um 564um 142um 580um
paint metal2 

#PMOS 3
box 8um 620um 18um 630um 
getcell pmos_waffle_48x48.mag
upsidedown
rotate -90
box 69.61um 654um 79um 664um
paint {metal3 metal4 metal5}
box 40um 656um 65.4um 672um
paint metal2
box 65um 656um 68um 669.6um
paint metal2
box 67.3um 656um 76um 672um
paint metal2

#PMOS 4
box 8um 1000um 18um 1010um 
getcell pmos_waffle_48x48.mag
upsidedown
box 42um 1301um 52um 1310.39um
paint {metal3 metal4 metal5}
box 40um 1314.6um 60um 1320um
paint metal2
box 40um 1312um 57.6um 1315um
paint metal2
box 40um 1304um 60um 1312.7um
paint metal2

#Connections
box 80um 70um 110um 560um
paint {metal3 metal4 metal5}
box 110um 270um 320um 350um
paint {metal3 metal4 metal5}
box 130um 10um 380um 40um
paint {metal3 metal4 metal5}
box 340um 40um 380um 250um
paint {metal3 metal4 metal5}
box 140um 580um 380um 660um
paint {metal3 metal4 metal5}
box 70um 630um 140um 660um
paint {metal3 metal4 metal5}
box 340um 370um 380um 580um
paint {metal3 metal4 metal5}
box 340um 660um 380um 930um
paint {metal3 metal4 metal5}
box 20um 680um 50um 1310um
paint {metal3 metal4 metal5}
box 50um 950um 320um 1040um
paint {metal3 metal4 metal5}
box 340um 1060um 380um 1330um
paint {metal3 metal4 metal5}
box 70um 1330um 380um 1360um
paint {metal3 metal4 metal5}

save power_stage.mag


#see no mvndiffusion
#see no mvpdiffusion
#see no mvndcontact
#see no mvpdcontact
#see no mvpsubstratepdiff
#see no mvnsubstratendiff
#see no mvpsubstratepcontact
#see no mvnsubstratencontact
#see no locali
#see no viali
#see no metal1
#see no m2contact
#see no m3contact
#see no metal3
#see no via3
#see no metal4
#see no via4
