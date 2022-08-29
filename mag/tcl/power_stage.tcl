
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Power stage layout	#
#   28-08-2022        	#
#	Based on Open PMIC	#
# #####################	#

# NMOS 1
box 0um 0 10um 10um
getcell nmos_waffle_36x36.mag
box 34um 61.61um 44um 71um
paint {metal3 metal4 metal5}
box 30um 59.25um 53um 68um 
paint metal2
box 30um 57um 49.62um 60um
paint metal2
box 30um 52um 53um 57.49um 
paint metal2

# NMOS 2
box 0um 310um 10um 320um 
getcell nmos_waffle_36x36.mag
rotate
box 61.61um 572um 71um 582um
paint {metal3 metal4 metal5}
box 30um 564um 57.4um 580um
paint metal2
box 57.4um 566.4um 59.3um 580um
paint metal2
box 59.3um 564um 68um 580um
paint metal2 

#PMOS 3
box 0um 620um 10um 630um 
getcell pmos_waffle_48x48.mag
upsidedown
rotate -90
box 61.61um 654um 71um 664um
paint {metal3 metal4 metal5}
box 30um 656um 57.4um 672um
paint metal2
box 57um 656um 60um 669.6um
paint metal2
box 59.3um 656um 68um 672um
paint metal2

#PMOS 4
box 0um 1000um 10um 1010um 
getcell pmos_waffle_48x48.mag
upsidedown
box 34um 1301um 44um 1310.39um
paint {metal3 metal4 metal5}
box 30um 1314.6um 52um 1320um
paint metal2
box 30um 1312um 49.6um 1315um
paint metal2
box 30um 1304um 52um 1312.7um
paint metal2

#Connections
box 10um 70um 40um 560um
paint {metal3 metal4 metal5}
box 40um 270um 250um 350um
paint {metal3 metal4 metal5}
box 60um 10um 300um 40um
paint {metal3 metal4 metal5}
box 270um 40um 300um 250um
paint {metal3 metal4 metal5}
box 70um 580um 270um 660um
paint {metal3 metal4 metal5}
box 270um 630um 340um 660um
paint {metal3 metal4 metal5}
box 270um 370um 300um 610um
paint {metal3 metal4 metal5}
box 330um 630um 360um 930um
paint {metal3 metal4 metal5}
box 10um 680um 40um 1300um
paint {metal3 metal4 metal5}
box 40um 950um 310um 1040um
paint {metal3 metal4 metal5}
box 330um 1060um 360um 1330um
paint {metal3 metal4 metal5}
box 60um 1330um 360um 1360um
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
