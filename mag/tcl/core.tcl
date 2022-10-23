	
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Core layout			#
#   21-10-2022        	#
# #####################	#

# version invertida

set LS1 1290
set LS2 640
set LS3 550
set LS4 33
set yoff 403.5
set ypos [expr {$yoff - 29.49}]
#set ypos 374.01

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
box 0um 0 10um 10um
getcell converter.mag

# VH
box 20um [expr {$yoff}]um 1372um [expr {$yoff + 2}]um
paint metal1
box 1355um 375um 1360um [expr {$yoff}]um
paint metal1
box 1355um 375um 1360um 380um
paint metal2
box 1355.05um 375.05um 1359.95um 379.95um
paint {m2contact m3contact}
box 1355um 310um 1360um 380um
paint metal3

# VSS
box 10um [expr {$yoff + 2.5}]um 1369um [expr {$yoff + 4.5}]um
paint metal1
box 10um 375um 15um [expr {$yoff + 2.5}]um
paint metal1
box 10um 375um 15um 380um
paint metal2
box 10.05um 375.05um 14.95um 379.95um
paint {m2contact m3contact}
box 10um 310um 15um 380um
paint metal3

# VDD
box 10um [expr {$yoff + 5}]um 1366um [expr {$yoff + 7}]um
paint metal1
box 1364um [expr {$yoff + 5}]um 1366um [expr {$yoff + 7}]um
label VDD west metal1

# LS1
box [expr {$LS1}]um [expr {$ypos}]um [expr {$LS1}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
box [expr {$LS1 + 21.09}]um 340um [expr {$LS1 + 22.19}]um [expr {$ypos + 2.65}]um
paint metal2
box [expr {$LS1 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS1 + 21.3}]um [expr {$yoff + 4.5}]um
paint metal2
box [expr {$LS1 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS1 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS1 + 20.35}]um [expr {$yoff + 2.55}]um [expr {$LS1 + 21.25}]um [expr {$yoff + 4.45}]um
paint m2contact
box [expr {$LS1 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS1 + 16.35}]um [expr {$yoff + 7}]um
paint metal2
box [expr {$LS1 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS1 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS1 + 15.97}]um [expr {$yoff + 5.05}]um [expr {$LS1 + 16.3}]um [expr {$yoff + 6.95}]um
paint m2contact
box [expr {$LS1 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS1 + 18.5}]um [expr {$yoff + 7.5}]um
paint metal2
box [expr {$LS1 + 17.5}]um [expr {$yoff + 7.5}]um 1372um [expr {$yoff + 8.5}]um
paint metal2
box 1371um [expr {$yoff + 7.5}]um 1372um [expr {$yoff + 8.5}]um
label D1 west metal2

# LS2
box [expr {$LS2}]um [expr {$ypos}]um [expr {$LS2}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
box [expr {$LS2 + 21.09}]um 340um [expr {$LS2 + 22.19}]um [expr {$ypos + 2.65}]um
paint metal2
box [expr {$LS2 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS2 + 21.3}]um [expr {$yoff + 4.5}]um
paint metal2
box [expr {$LS2 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS2 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS2 + 20.35}]um [expr {$yoff + 2.55}]um [expr {$LS2 + 21.25}]um [expr {$yoff + 4.45}]um
paint m2contact
box [expr {$LS2 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS2 + 16.35}]um [expr {$yoff + 7}]um
paint metal2
box [expr {$LS2 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS2 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS2 + 15.97}]um [expr {$yoff + 5.05}]um [expr {$LS2 + 16.3}]um [expr {$yoff + 6.95}]um
paint m2contact
box [expr {$LS2 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS2 + 18.5}]um [expr {$yoff + 9}]um
paint metal2
box [expr {$LS2 + 17.5}]um [expr {$yoff + 9}]um 1370um [expr {$yoff + 10}]um
paint metal2
box 1369um [expr {$yoff + 9}]um 1370um [expr {$yoff + 10}]um
label D2 west metal2

# LS3
box [expr {$LS3}]um [expr {$ypos}]um [expr {$LS3}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
box [expr {$LS3 + 21.09}]um 340um [expr {$LS3 + 22.19}]um [expr {$ypos + 2.65}]um
paint metal2
box [expr {$LS3 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS3 + 21.3}]um [expr {$yoff + 4.5}]um
paint metal2
box [expr {$LS3 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS3 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS3 + 20.35}]um [expr {$yoff + 2.55}]um [expr {$LS3 + 21.25}]um [expr {$yoff + 4.45}]um
paint m2contact
box [expr {$LS3 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS3 + 16.35}]um [expr {$yoff + 7}]um
paint metal2
box [expr {$LS3 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS3 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS3 + 15.97}]um [expr {$yoff + 5.05}]um [expr {$LS3 + 16.3}]um [expr {$yoff + 6.95}]um
paint m2contact
box [expr {$LS3 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS3 + 18.5}]um [expr {$yoff + 10.5}]um
paint metal2
box [expr {$LS3 + 17.5}]um [expr {$yoff + 10.5}]um 1368um [expr {$yoff + 11.5}]um
paint metal2
box 1367um [expr {$yoff + 10.5}]um 1368um [expr {$yoff + 11.5}]um
label D3 west metal2

# LS4
box [expr {$LS4}]um [expr {$ypos}]um [expr {$LS4}]um [expr {$ypos}]um
getcell level_shifter.mag
rotate 90
box [expr {$LS4 + 21.09}]um 340um [expr {$LS4 + 22.19}]um [expr {$ypos + 2.65}]um
paint metal2
box [expr {$LS4 + 20.3}]um [expr {$ypos + 24}]um [expr {$LS4 + 21.3}]um [expr {$yoff + 4.5}]um
paint metal2
box [expr {$LS4 + 20.35}]um [expr {$ypos + 24.05}]um [expr {$LS4 + 21.25}]um [expr {$ypos + 26.95}]um
paint m2contact
box [expr {$LS4 + 20.35}]um [expr {$yoff + 2.55}]um [expr {$LS4 + 21.25}]um [expr {$yoff + 4.45}]um
paint m2contact
box [expr {$LS4 + 15.92}]um [expr {$ypos + 25}]um [expr {$LS4 + 16.35}]um [expr {$yoff + 7}]um
paint metal2
box [expr {$LS4 + 15.97}]um [expr {$ypos + 25.05}]um [expr {$LS4 + 16.3}]um [expr {$ypos + 27.35}]um
paint m2contact
box [expr {$LS4 + 15.97}]um [expr {$yoff + 5.05}]um [expr {$LS4 + 16.3}]um [expr {$yoff + 6.95}]um
paint m2contact
box [expr {$LS4 + 17.5}]um [expr {$ypos + 28.65}]um [expr {$LS4 + 18.5}]um [expr {$yoff + 12}]um
paint metal2
box [expr {$LS4 + 17.5}]um [expr {$yoff + 12}]um 1366um [expr {$yoff + 13}]um
paint metal2
box 1365um [expr {$yoff + 12}]um 1366um [expr {$yoff + 13}]um
label D1 west metal2

save core.mag