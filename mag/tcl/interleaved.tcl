
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Interleaved layout	#
#   03-11-2022        	#
# #####################	#

set midd 0
set yoff 0
#set midd 1460
#set yoff 1254
set core1 [expr {$midd - 1377.6 - 8}]
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
box [expr {$core1}]um [expr {$yoff - 10}]um [expr {$core1}]um [expr {$yoff}]um
getcell core.mag
rotate 180
box [expr {$core2}]um [expr {$yoff - 10}]um [expr {$core2}]um [expr {$yoff}]um
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

#box 140um 3410um 440um 3510um
#paint comment
#box -817.2um 2156um -517.2um 2256um
#paint comment
#box -317.2um 2156um -17.2um 2256um
#paint comment
#box 182.8um 2156um 482.8um 2256um
#paint comment
#box 2140um 3410um 2440um 3510um
#paint comment

#GND
box [expr {$midd - 30}]um [expr {$yoff + 1800}]um [expr {$midd +30}]um [expr {$yoff + 2009}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 50}]um [expr {$yoff + 2011}]um [expr {$midd - 20}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 82}]um [expr {$yoff + 2011}]um [expr {$midd - 52}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 114}]um [expr {$yoff + 2011}]um [expr {$midd - 84}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 146}]um [expr {$yoff + 2011}]um [expr {$midd - 116}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 178}]um [expr {$yoff + 2011}]um [expr {$midd - 148}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 210}]um [expr {$yoff + 2011}]um [expr {$midd - 180}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 242}]um [expr {$yoff + 2011}]um [expr {$midd - 212}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 276}]um [expr {$yoff + 2011}]um [expr {$midd - 244}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 276}]um [expr {$yoff + 1980}]um [expr {$midd + 250}]um [expr {$yoff + 2009}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 276}]um [expr {$yoff + 2011}]um [expr {$midd - 20}]um [expr {$yoff + 2041}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 276}]um [expr {$yoff + 2043}]um [expr {$midd - 20}]um [expr {$yoff + 2073}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 50}]um [expr {$yoff + 2000}]um [expr {$midd - 20}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 160}]um [expr {$yoff + 2000}]um [expr {$midd - 130}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 276}]um [expr {$yoff + 2000}]um [expr {$midd - 244}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 275.85}]um [expr {$yoff + 2011.15}]um [expr {$midd - 20.15}]um [expr {$yoff + 2040.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 275.85}]um [expr {$yoff + 2043.15}]um [expr {$midd - 20.15}]um [expr {$yoff + 2072.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 276}]um [expr {$yoff + 2194}]um [expr {$midd - 20}]um [expr {$yoff + 2224}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 276}]um [expr {$yoff + 2226}]um [expr {$midd - 20}]um [expr {$yoff + 2256}]um
paint {metal1 metal2 metal3 metal4 metal5}
label GND east metal5
#box [expr {$midd - 275.85}]um [expr {$yoff + 2194.15}]um [expr {$midd - 20.15}]um [expr {$yoff + 2223.85}]um
#paint {m2contact m3contact via3 via4}
#box [expr {$midd - 275.85}]um [expr {$yoff + 2226.15}]um [expr {$midd - 20.15}]um [expr {$yoff + 2255.85}]um
#paint {m2contact m3contact via3 via4}
box [expr {$midd - 276}]um [expr {$yoff + 2194}]um [expr {$midd - 246}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 50}]um [expr {$yoff + 2194}]um [expr {$midd - 20}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}

box [expr {$midd + 230}]um [expr {$yoff + 2000}]um [expr {$midd + 250}]um [expr {$yoff + 2026}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 230}]um [expr {$yoff + 2011}]um [expr {$midd + 334}]um [expr {$yoff + 2026}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 318}]um [expr {$yoff + 2011}]um [expr {$midd + 334}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 318}]um [expr {$yoff + 2075}]um [expr {$midd + 1060}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 990}]um [expr {$yoff + 2078}]um [expr {$midd + 1060}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 990.15}]um [expr {$yoff + 2078.15}]um [expr {$midd + 1059.85}]um [expr {$yoff + 2089.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 990}]um [expr {$yoff + 2241}]um [expr {$midd + 1060}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 990.15}]um [expr {$yoff + 2241.15}]um [expr {$midd + 1059.85}]um [expr {$yoff + 2255.85}]um
paint {m2contact m3contact via3 via4}

#VH
box [expr {$midd - 1360}]um [expr {$yoff + 2092}]um [expr {$midd + 1368}]um [expr {$yoff + 2122}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1320}]um [expr {$yoff + 2124}]um [expr {$midd + 1232}]um [expr {$yoff + 2154}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1368}]um [expr {$yoff + 2060}]um [expr {$midd - 1338}]um [expr {$yoff + 2122}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1320}]um [expr {$yoff + 2060}]um [expr {$midd - 1290}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1100}]um [expr {$yoff + 2060}]um [expr {$midd - 1070}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1050}]um [expr {$yoff + 2092}]um [expr {$midd - 1020}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 860}]um [expr {$yoff + 2092}]um [expr {$midd - 830}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 1320}]um [expr {$yoff + 2226}]um [expr {$midd - 830}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
label VH east metal5
box [expr {$midd + 600}]um [expr {$yoff + 2092}]um [expr {$midd + 630}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 680}]um [expr {$yoff + 2092}]um [expr {$midd + 710}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 950}]um [expr {$yoff + 2092}]um [expr {$midd + 980}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 600}]um [expr {$yoff + 2226}]um [expr {$midd + 980}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1070}]um [expr {$yoff + 2060}]um [expr {$midd + 1100}]um [expr {$yoff + 2154}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1202}]um [expr {$yoff + 2060}]um [expr {$midd + 1232}]um [expr {$yoff + 2154}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 1338}]um [expr {$yoff + 2060}]um [expr {$midd + 1368}]um [expr {$yoff + 2122}]um
paint {metal3 metal4 metal5}

#Vout1
box [expr {$midd - 502}]um [expr {$yoff + 2011}]um [expr {$midd - 472}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 534}]um [expr {$yoff + 2011}]um [expr {$midd - 504}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 566}]um [expr {$yoff + 2011}]um [expr {$midd - 536}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 598}]um [expr {$yoff + 2011}]um [expr {$midd - 568}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 630}]um [expr {$yoff + 2011}]um [expr {$midd - 600}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 662}]um [expr {$yoff + 2078}]um [expr {$midd - 632}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 694}]um [expr {$yoff + 2078}]um [expr {$midd - 664}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 726}]um [expr {$yoff + 2078}]um [expr {$midd - 696}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd - 650}]um [expr {$yoff + 1980}]um [expr {$midd - 380}]um [expr {$yoff + 2009}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 650}]um [expr {$yoff + 2011}]um [expr {$midd - 472}]um [expr {$yoff + 2041}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 726}]um [expr {$yoff + 2043}]um [expr {$midd - 472}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 726}]um [expr {$yoff + 2075}]um [expr {$midd - 472}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 502}]um [expr {$yoff + 1980}]um [expr {$midd - 472}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 598}]um [expr {$yoff + 1980}]um [expr {$midd - 568}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 726}]um [expr {$yoff + 2043}]um [expr {$midd - 696}]um [expr {$yoff + 2090}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 630}]um [expr {$yoff + 2011}]um [expr {$midd - 472}]um [expr {$yoff + 2041}]um
paint {metal1 metal2}
box [expr {$midd - 630}]um [expr {$yoff + 2043}]um [expr {$midd - 472}]um [expr {$yoff + 2073}]um
paint {metal1 metal2}
box [expr {$midd - 726}]um [expr {$yoff + 2078}]um [expr {$midd - 472}]um [expr {$yoff + 2090}]um
paint {metal1 metal2}
box [expr {$midd - 629.85}]um [expr {$yoff + 2011.15}]um [expr {$midd - 472.15}]um [expr {$yoff + 2040.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 629.85}]um [expr {$yoff + 2043.15}]um [expr {$midd - 472.15}]um [expr {$yoff + 2072.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 725.85}]um [expr {$yoff + 2078.15}]um [expr {$midd - 472.15}]um [expr {$yoff + 2089.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 726}]um [expr {$yoff + 2194}]um [expr {$midd - 472}]um [expr {$yoff + 2224}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd - 726}]um [expr {$yoff + 2226}]um [expr {$midd - 472}]um [expr {$yoff + 2256}]um
paint {metal1 metal2 metal3 metal4 metal5}
label Vout1 east metal5
box [expr {$midd - 501.85}]um [expr {$yoff + 2194.15}]um [expr {$midd - 472.15}]um [expr {$yoff + 2223.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 501.85}]um [expr {$yoff + 2226.15}]um [expr {$midd - 472.15}]um [expr {$yoff + 2255.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd - 726}]um [expr {$yoff + 2194}]um [expr {$midd - 696}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd - 502}]um [expr {$yoff + 2194}]um [expr {$midd - 472}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}

#Vout2
box [expr {$midd + 336}]um [expr {$yoff + 2011}]um [expr {$midd + 366}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 368}]um [expr {$yoff + 2011}]um [expr {$midd + 398}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 400}]um [expr {$yoff + 2011}]um [expr {$midd + 430}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 432}]um [expr {$yoff + 2011}]um [expr {$midd + 462}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 464}]um [expr {$yoff + 2011}]um [expr {$midd + 494}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 496}]um [expr {$yoff + 2011}]um [expr {$midd + 526}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 528}]um [expr {$yoff + 2011}]um [expr {$midd + 558}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 560}]um [expr {$yoff + 2011}]um [expr {$midd + 590}]um [expr {$yoff + 2256}]um
paint {metal1 metal2}
box [expr {$midd + 336}]um [expr {$yoff + 1980}]um [expr {$midd + 650}]um [expr {$yoff + 2009}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 2011}]um [expr {$midd + 650}]um [expr {$yoff + 2041}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 2043}]um [expr {$midd + 930}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 1980}]um [expr {$midd + 366}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 432}]um [expr {$yoff + 1980}]um [expr {$midd + 462}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 528}]um [expr {$yoff + 1980}]um [expr {$midd + 558}]um [expr {$yoff + 2073}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 2011}]um [expr {$midd + 590}]um [expr {$yoff + 2041}]um
paint {metal1 metal2}
box [expr {$midd + 336}]um [expr {$yoff + 2043}]um [expr {$midd + 590}]um [expr {$yoff + 2073}]um
paint {metal1 metal2}
box [expr {$midd + 336.15}]um [expr {$yoff + 2011.15}]um [expr {$midd + 589.85}]um [expr {$yoff + 2040.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 336.15}]um [expr {$yoff + 2043.15}]um [expr {$midd + 589.85}]um [expr {$yoff + 2072.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 336}]um [expr {$yoff + 2194}]um [expr {$midd + 366}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 560}]um [expr {$yoff + 2194}]um [expr {$midd + 590}]um [expr {$yoff + 2256}]um
paint {metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 2194}]um [expr {$midd + 590}]um [expr {$yoff + 2224}]um
paint {metal1 metal2 metal3 metal4 metal5}
box [expr {$midd + 336}]um [expr {$yoff + 2226}]um [expr {$midd + 590}]um [expr {$yoff + 2256}]um
paint {metal1 metal2 metal3 metal4 metal5}
label Vout2 east metal5
box [expr {$midd + 496.15}]um [expr {$yoff + 2194.15}]um [expr {$midd + 589.85}]um [expr {$yoff + 2223.85}]um
paint {m2contact m3contact via3 via4}
box [expr {$midd + 496.15}]um [expr {$yoff + 2226.15}]um [expr {$midd + 589.85}]um [expr {$yoff + 2255.85}]um
paint {m2contact m3contact via3 via4}

# VDD
box [expr {$midd - 30}]um [expr {$yoff + 1670.5}]um [expr {$midd + 30}]um [expr {$yoff + 1673}]um
paint metal1


# ## 2nd Guard Rings (Diodes) ##
# NMOS' to VH
box [expr {$midd + 305}]um [expr {$yoff + 1970}]um [expr {$midd + 325}]um [expr {$yoff + 2154}]um
paint {metal2}
box [expr {$midd - 325}]um [expr {$yoff + 1970}]um [expr {$midd - 305}]um [expr {$yoff + 2154}]um
paint {metal2}
box [expr {$midd + 305.15}]um [expr {$yoff + 2092.15}]um [expr {$midd + 324.85}]um [expr {$yoff + 2121.85}]um
paint {m3contact via3 via4}
box [expr {$midd + 305.15}]um [expr {$yoff + 2124.15}]um [expr {$midd + 324.85}]um [expr {$yoff + 2153.85}]um
paint {m3contact via3 via4}
box [expr {$midd - 324.85}]um [expr {$yoff + 2092.15}]um [expr {$midd - 305.05}]um [expr {$yoff + 2121.85}]um
paint {m3contact via3 via4}
box [expr {$midd - 324.85}]um [expr {$yoff + 2124.15}]um [expr {$midd - 305.05}]um [expr {$yoff + 2153.85}]um
paint {m3contact via3 via4}
# PMOS' to GND
box [expr {$midd + 700}]um [expr {$yoff + 1670}]um [expr {$midd + 1290}]um [expr {$yoff + 1720}]um
paint metal2
box [expr {$midd - 1290}]um [expr {$yoff + 1670}]um [expr {$midd - 700}]um [expr {$yoff + 1720}]um
paint metal2
box [expr {$midd - 20}]um [expr {$yoff + 1680}]um [expr {$midd + 20}]um [expr {$yoff + 1810}]um
paint metal3
box [expr {$midd - 20}]um [expr {$yoff + 1661}]um [expr {$midd + 20}]um [expr {$yoff + 1705}]um
paint metal2
box [expr {$midd - 20}]um [expr {$yoff + 1661}]um [expr {$midd + 20}]um [expr {$yoff + 1664}]um
paint metal1
box [expr {$midd - 17.95}]um [expr {$yoff + 1661.05}]um [expr {$midd + 17.95}]um [expr {$yoff + 1663.95}]um
paint m2contact
box [expr {$midd - 19.95}]um [expr {$yoff + 1680.05}]um [expr {$midd + 19.95}]um [expr {$yoff + 1704.95}]um
paint {m3contact}

save interleaved.mag

