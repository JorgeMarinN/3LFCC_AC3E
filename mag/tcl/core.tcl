	
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Core layout			#
#   17-10-2022        	#
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

# Converter
box 8um 0 10um 10um
getcell converter.mag

# VH
box 20um 1666um 1364um 1668um
paint metal1
box 20um 1666um 25um 1698um
paint metal1
box 20um 1693um 25um 1698um
paint metal2
box 20.05um 1693.05um 24.95um 1697.95um
paint {m2contact m3contact}
box 20um 1693um 25um 1765um
paint metal3

# VSS
box 20um 1663.5um 1370um 1665.5um
paint metal1
box 1365um 1663.5um 1370um 1698um
paint metal1
box 1365um 1693um 1370um 1698um
paint metal2
box 1365.05um 1693.05um 1369.95um 1697.95um
paint {m2contact m3contact}
box 1365um 1693um 1370um 1765um
paint metal3

# VDD
box 10um 1661um 1370um 1663um
paint metal1
box 10um 1661um 12um 1663um
label VDD west metal1

# LS1
box 40um 1667.24um 50um 1677um
getcell level_shifter.mag
rotate -90
box 62.5um 1696um 63.5um 1731um
paint metal2
box 63.4um 1663.5um 64.4um 1672.1um
paint metal2
box 63.45um 1670.15um 64.35um 1672.05um
paint m2contact
box 63.45um 1663.55um 64.35um 1665.45um
paint m2contact
box 68.35um 1661um 68.75um 1672.1um
paint metal2
box 68.4um 1670.15um 68.7um 1672.05um
paint m2contact
box 68.4um 1661.05um 68.7um 1662.45um
paint m2contact
box 66um 1659.5um 67um 1668.9um
paint metal2
box 10um 1659.5um 67um 1660.5um
paint metal2
box 10um 1659.5um 11um 1660.5um
label D1 west metal2

# LS2
box 690um 1667.24um 700um 1677um
getcell level_shifter.mag
rotate -90
box 712.5um 1696um 713.5um 1731um
paint metal2
box 713.4um 1663.5um 714.4um 1672.1um
paint metal2
box 713.45um 1670.15um 714.35um 1672.05um
paint m2contact
box 713.45um 1663.55um 714.35um 1665.45um
paint m2contact
box 718.35um 1661um 718.75um 1672.1um
paint metal2
box 718.4um 1670.15um 718.7um 1672.05um
paint m2contact
box 718.4um 1661.05um 718.7um 1662.45um
paint m2contact
box 716um 1658um 717um 1668.9um
paint metal2
box 12um 1658um 717um 1659um
paint metal2
box 12um 1658um 13um 1659um
label D2 west metal2

# LS3
box 780um 1667.24um 790um 1677um
getcell level_shifter.mag
rotate -90
box 802.5um 1696um 803.5um 1731um
paint metal2
box 803.4um 1663.5um 804.4um 1672.1um
paint metal2
box 803.45um 1670.15um 804.35um 1672.05um
paint m2contact
box 803.45um 1663.55um 804.35um 1665.45um
paint m2contact
box 808.35um 1661um 808.75um 1672.1um
paint metal2
box 808.4um 1670.15um 808.7um 1672.05um
paint m2contact
box 808.4um 1661.05um 808.7um 1662.45um
paint m2contact
box 806um 1656.5um 807um 1668.9um
paint metal2
box 14um 1656.5um 807um 1657.5um
paint metal2
box 14um 1656.5um 15um 1657.5um
label D3 west metal2

# LS4
box 1300um 1667.24um 1310um 1677um
getcell level_shifter.mag
rotate -90
box 1322.5um 1696um 1323.5um 1731um
paint metal2
box 1323.4um 1663.5um 1324.4um 1672.1um
paint metal2
box 1323.45um 1670.15um 1324.35um 1672.05um
paint m2contact
box 1323.45um 1663.55um 1324.35um 1665.45um
paint m2contact
box 1328.35um 1661um 1328.75um 1672.1um
paint metal2
box 1328.4um 1670.15um 1328.7um 1672.05um
paint m2contact
box 1328.4um 1661.05um 1328.7um 1662.45um
paint m2contact
box 1326um 1655um 1327um 1668.9um
paint metal2
box 16um 1655um 1327um 1656um
paint metal2
box 16um 1655um 17um 1656um
label D4 west metal2

save core.mag