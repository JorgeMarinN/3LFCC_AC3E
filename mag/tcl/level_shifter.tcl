	
# #########################	#
#   AC3E - UTFSM      		#
#   Project: 3LFCC    		#
#   level_shifter layout	#
#   23-10-2022        		#
# #########################	#

getcell driver/level_shifter.mag
#box 10.73um 20.8um 11.130um 21.14um
#paint mvpsubstratepdiff
flatten level_shifter_
load level_shifter_

box 14um 21.17um 30um 22.77um
paint {metal1 metal2 metal3 metal4 metal5}
box 14.03um 21.2um 29.97um 22.74um
paint {m2contact via3}
box 14.045um 21.215um 29.955um 22.725um
paint m3contact
box 14.12um 21.29um 29.88um 22.65um
paint via4

save level_shifter_