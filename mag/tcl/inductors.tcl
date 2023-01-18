	
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   inductors layout	#
#   14-11-2022        	#
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
see no m2contact
see no m3contact
see no metal3
see no via3
see no metal5
see no via4
see no mimcap
see no mimcap2

drc style drc(full)

box 0 0 0 0
#getcell user_analog_project_wrapper_empty.mag
box 0um 0um 10um 10um
paint comment

#box -10um -10um 2930um 0um
#paint comment
#box -10um -10um 0um 1230um
#paint comment
#box -10um 1220um 2930um 1230um
#paint comment
#box 2920um -10um 2930um 1230um
#paint comment

box 2900um 1120um 2910um 1210um
paint comment

# ### Inductors ###

# ind3 pined
box 10um 60um 20um 70um
getcell ind3.mag
upsidedown
box 0um 184um 8um 189um
paint metal3
box 8um 184um 9um 189um
paint rmetal3
box 9um 184um 11um 189um
paint metal3
box 0um 76um 15um 81um
paint metal3
box 10um 76um 15um 81um
paint metal4
box 10.2um 76.2um 14.8um 80.8um
paint {via3 via4}
# ind2 pined
box 10um 470um 20um 480um
getcell ind2.mag
upsidedown
box 0um 616um 8um 621um
paint metal3
box 8um 616um 9um 621um
paint rmetal3
box 9um 616um 11um 621um
paint metal3
box 0um 400um 10um 405um
paint metal3 
box 5um 400um 10um 475um
paint metal3 
box 10um 470um 15um 475um
paint {metal3 metal4}
box 10.2um 470.2um 14.8um 474.8um
paint {via3 via4}
# ind2 guard ring
box 710um 665um 740um 700um
getcell ind2.mag
upsidedown
box 550um 531um 710um 700um
getcell ind_pad.mag
box 550um 812um 700um 900um
getcell ind_pad.mag
upsidedown
# ind3 normal
box 1260um 145um 1290um 150um
getcell ind3.mag
upsidedown
box 1100um 11um 1200um 100um
getcell ind_pad.mag
box 1100um 243um 1200um 300um
getcell ind_pad.mag
upsidedown
# ind2 normal
box 1820um 665um 1880um 700um
getcell ind2.mag
upsidedown
box 1660um 531um 1800um 800um
getcell ind_pad.mag
box 1660um 812um 1800um 900um
getcell ind_pad.mag
upsidedown
# ind2 shielding
box 2280um 145um 2300um 200um
getcell ind2.mag
upsidedown
box 2120um 11um 2300um 100um
getcell ind_pad.mag
box 2120um 292um 2300um 400um
getcell ind_pad.mag
upsidedown
box 2300um 120um 2400um 220um
getcell shielding.mag
# shorted pad
box 730um 10um 890um 200um
getcell ind_pad.mag
box 890um 145um 1000um 200um
getcell ind_pad.mag
rotate 180
# open pad
box 530um 10um 700um 100um
getcell ind_pad.mag
box 530um 290um 700um 400um
getcell ind_pad.mag
upsidedown

# Calibration
box 1320um 1120um 1320um 1120um
getcell calibration.mag
box 2400um 1120um 2410um 1120um
getcell calibration.mag
box 2000um 10um 2010um 20um
getcell calibration_pad.mag
box 2000um 237um 2010um 240um
getcell calibration_pad.mag
rotate 180
box 2035um 235um 2065um 237um
paint metal1

# ### Logos ###
box 10um 970um 10um 970um
getcell utfsm.mag
box 670um 360um 670um 340um 
getcell chipusm.mag
box 1320um 790um 1320um 790um
getcell ac3e.mag
box 2570um 940um 2570um 1040um
getcell ucu.mag
box 2570um 810um 2570um 860um
getcell uns.mag

# falta el guard ring

save inductors.mag
