
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Interleaved layout	#
#   23-10-2022        	#
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
box [expr {$midd - 260}]um [expr {$yoff + 2000}]um [expr {$midd + 30}]um [expr {$yoff + 2022}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 129}]um [expr {$yoff + 2012}]um [expr {$midd - 99}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 97}]um [expr {$yoff + 2012}]um [expr {$midd - 67}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 65}]um [expr {$yoff + 2012}]um [expr {$midd - 35}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 33}]um [expr {$yoff + 2012}]um [expr {$midd - 3}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 131}]um [expr {$yoff + 2012}]um [expr {$midd - 161}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 163}]um [expr {$yoff + 2012}]um [expr {$midd - 193}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 195}]um [expr {$yoff + 2012}]um [expr {$midd - 225}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 257}]um [expr {$yoff + 2012}]um [expr {$midd - 227}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd - 257}]um [expr {$yoff + 2214}]um [expr {$midd - 3}]um [expr {$yoff + 2244}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 257}]um [expr {$yoff + 2182}]um [expr {$midd - 3}]um [expr {$yoff + 2212}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 260}]um [expr {$yoff + 2012}]um [expr {$midd + 0}]um [expr {$yoff + 2022}]um
paint {metal1 metal2}
box [expr {$midd - 259.85}]um [expr {$yoff + 2012.15}]um [expr {$midd - 0.15}]um [expr {$yoff + 2021.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 256.85}]um [expr {$yoff + 2214.15}]um [expr {$midd - 3.15}]um [expr {$yoff + 2243.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 256.85}]um [expr {$yoff + 2182.15}]um [expr {$midd - 3.15}]um [expr {$yoff + 2211.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 257}]um [expr {$yoff + 2214}]um [expr {$midd - 227}]um [expr {$yoff + 2244}]um
label GND west metal5

# VH
box [expr {$midd - 1360}]um [expr {$yoff + 2182}]um [expr {$midd - 516}]um [expr {$yoff + 2212}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1328}]um [expr {$yoff + 2214}]um [expr {$midd - 516}]um [expr {$yoff + 2244}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 578}]um [expr {$yoff + 2088}]um [expr {$midd + 322}]um [expr {$yoff + 2118}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 578}]um [expr {$yoff + 2120}]um [expr {$midd + 322}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 578}]um [expr {$yoff + 2088}]um [expr {$midd - 548}]um [expr {$yoff + 2244}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 546}]um [expr {$yoff + 2088}]um [expr {$midd - 516}]um [expr {$yoff + 2244}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 260}]um [expr {$yoff + 2088}]um [expr {$midd + 290}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 292}]um [expr {$yoff + 2088}]um [expr {$midd + 322}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 260}]um [expr {$yoff + 2120}]um [expr {$midd + 1360}]um [expr {$yoff + 2150}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 260}]um [expr {$yoff + 2152}]um [expr {$midd + 1360}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1330}]um [expr {$yoff + 2060}]um [expr {$midd + 1360}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1298}]um [expr {$yoff + 2060}]um [expr {$midd + 1328}]um [expr {$yoff + 2182}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1360}]um [expr {$yoff + 2060}]um [expr {$midd - 1330}]um [expr {$yoff + 2212}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1328}]um [expr {$yoff + 2060}]um [expr {$midd - 1298}]um [expr {$yoff + 2244}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1360}]um [expr {$yoff + 2150}]um [expr {$midd - 1266}]um [expr {$yoff + 2180}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1296}]um [expr {$yoff + 2150}]um [expr {$midd - 1266}]um [expr {$yoff + 2244}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 546}]um [expr {$yoff + 2214}]um [expr {$midd - 516}]um [expr {$yoff + 2244}]um
label VH east metal5

# Vout
box [expr {$midd - 650}]um [expr {$yoff + 2024}]um [expr {$midd + 650}]um [expr {$yoff + 2054}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 930}]um [expr {$yoff + 2056}]um [expr {$midd + 930}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 580}]um [expr {$yoff + 2000}]um [expr {$midd + 610}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 548}]um [expr {$yoff + 2000}]um [expr {$midd + 578}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 610}]um [expr {$yoff + 2000}]um [expr {$midd - 580}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 578}]um [expr {$yoff + 2000}]um [expr {$midd - 548}]um [expr {$yoff + 2086}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 99}]um [expr {$yoff + 2024}]um [expr {$midd + 129}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 67}]um [expr {$yoff + 2024}]um [expr {$midd + 97}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 35}]um [expr {$yoff + 2024}]um [expr {$midd + 65}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 3}]um [expr {$yoff + 2024}]um [expr {$midd + 33}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 131}]um [expr {$yoff + 2024}]um [expr {$midd + 161}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 163}]um [expr {$yoff + 2024}]um [expr {$midd + 193}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 195}]um [expr {$yoff + 2024}]um [expr {$midd + 225}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 227}]um [expr {$yoff + 2024}]um [expr {$midd + 257}]um [expr {$yoff + 2244}]um
paint {metal1 metal2}
box [expr {$midd + 3}]um [expr {$yoff + 2214}]um [expr {$midd + 257}]um [expr {$yoff + 2244}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd + 3}]um [expr {$yoff + 2182}]um [expr {$midd + 257}]um [expr {$yoff + 2212}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd + 3}]um [expr {$yoff + 2056}]um [expr {$midd + 257}]um [expr {$yoff + 2086}]um
paint {metal1 metal2}
box [expr {$midd + 3}]um [expr {$yoff + 2024}]um [expr {$midd + 257}]um [expr {$yoff + 2054}]um
paint {metal1 metal2}
box [expr {$midd + 3.15}]um [expr {$yoff + 2214.15}]um [expr {$midd + 256.85}]um [expr {$yoff + 2243.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 3.15}]um [expr {$yoff + 2182.15}]um [expr {$midd + 256.85}]um [expr {$yoff + 2211.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 3.15}]um [expr {$yoff + 2056.15}]um [expr {$midd + 256.85}]um [expr {$yoff + 2085.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 3.15}]um [expr {$yoff + 2024.15}]um [expr {$midd + 256.85}]um [expr {$yoff + 2053.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 227}]um [expr {$yoff + 2214}]um [expr {$midd + 257}]um [expr {$yoff + 2244}]um
label Vout east metal5

# VDD
box [expr {$midd - 20}]um [expr {$yoff + 1669.5}]um [expr {$midd + 20}]um [expr {$yoff + 1671.5}]um
paint metal1

save interleaved.mag

