
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Interleaved layout	#
#   22-10-2022        	#
# #####################	#

# version invertida

set midd 0
set yoff 0
set core1 [expr {$midd - 1372 - 8}]
set core2 [expr {$midd + 8}]

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
see no mimcap
see no mimcap2
see no mimcap2contact

# core
box [expr {$core1}]um [expr {$yoff}]um [expr {$core1}]um [expr {$yoff}]um
getcell core.mag
rotate 180
box [expr {$core2}]um [expr {$yoff}]um [expr {$core2}]um [expr {$yoff}]um
getcell core.mag
rotate 180
sideways

#box -10um -10um 0um 3520um
#paint comment
#box -10um -10um 2920um 0um
#paint comment
#box -10um 3510um 2920um 3520um
#paint comment
#box 2920um -10um 2930um 3520um
#paint comment

# GND
box [expr {$midd - 40}]um [expr {$yoff + 1770}]um [expr {$midd + 40}]um [expr {$yoff + 2000}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 130}]um [expr {$yoff + 2000}]um [expr {$midd + 130}]um [expr {$yoff + 2022}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1}]um [expr {$yoff + 2012}]um [expr {$midd + 31}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd + 33}]um [expr {$yoff + 2012}]um [expr {$midd + 63}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd + 65}]um [expr {$yoff + 2012}]um [expr {$midd + 95}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd + 97}]um [expr {$yoff + 2012}]um [expr {$midd + 127}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 1}]um [expr {$yoff + 2012}]um [expr {$midd - 31}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 33}]um [expr {$yoff + 2012}]um [expr {$midd - 63}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 65}]um [expr {$yoff + 2012}]um [expr {$midd - 95}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 97}]um [expr {$yoff + 2012}]um [expr {$midd - 127}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 130}]um [expr {$yoff + 2152}]um [expr {$midd + 130}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 130}]um [expr {$yoff + 2184}]um [expr {$midd + 130}]um [expr {$yoff + 2214}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 130}]um [expr {$yoff + 2012}]um [expr {$midd + 130}]um [expr {$yoff + 2022}]um
paint {metal1 metal2}
box [expr {$midd - 129.85}]um [expr {$yoff + 2012.15}]um [expr {$midd + 129.85}]um [expr {$yoff + 2021.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 130}]um [expr {$yoff + 2152}]um [expr {$midd + 130}]um [expr {$yoff + 2182}]um
paint {metal1 metal2}
box [expr {$midd - 129.85}]um [expr {$yoff + 2152.15}]um [expr {$midd + 129.85}]um [expr {$yoff + 2181.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 130}]um [expr {$yoff + 2184}]um [expr {$midd + 130}]um [expr {$yoff + 2214}]um
paint {metal1 metal2}
box [expr {$midd - 129.85}]um [expr {$yoff + 2184.15}]um [expr {$midd + 129.85}]um [expr {$yoff + 2213.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 15}]um [expr {$yoff + 2184}]um [expr {$midd + 15}]um [expr {$yoff + 2214}]um
label GND west metal5

# VH
box [expr {$midd - 1360}]um [expr {$yoff + 2088}]um [expr {$midd + 1360}]um [expr {$yoff + 2118}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1360}]um [expr {$yoff + 2120}]um [expr {$midd + 1360}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1330}]um [expr {$yoff + 2060}]um [expr {$midd + 1360}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1298}]um [expr {$yoff + 2060}]um [expr {$midd + 1328}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1330}]um [expr {$yoff + 2060}]um [expr {$midd - 1360}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1298}]um [expr {$yoff + 2060}]um [expr {$midd - 1328}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 15}]um [expr {$yoff + 2120}]um [expr {$midd + 15}]um [expr {$yoff + 2150}]um
label VH west metal5

# Vout
box [expr {$midd - 650}]um [expr {$yoff + 2024}]um [expr {$midd + 650}]um [expr {$yoff + 2054}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 930}]um [expr {$yoff + 2056}]um [expr {$midd + 930}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 580}]um [expr {$yoff + 2000}]um [expr {$midd + 610}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 548}]um [expr {$yoff + 2000}]um [expr {$midd + 578}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 580}]um [expr {$yoff + 2000}]um [expr {$midd - 610}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 548}]um [expr {$yoff + 2000}]um [expr {$midd - 578}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 15}]um [expr {$yoff + 2056}]um [expr {$midd + 15}]um [expr {$yoff + 2086}]um
label Vout west metal5

# VDD
box [expr {$midd - 20}]um [expr {$yoff + 1669.5}]um [expr {$midd + 20}]um [expr {$yoff + 1671.5}]um
paint metal1

save interleaved.mag

