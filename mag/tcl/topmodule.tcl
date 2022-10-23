
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Topmodule layout	#
#   23-10-2022        	#
# #####################	#

set midd 1460
set yoff 1266

drc style drc(full)

see no mvndiffusion
see no mvpdiffusion
see no mvndcontact
see no mvpdcontact
see no mvpsubstratepdiff
see no mvnsubstratendiff
see no mvpsubstratepcontact
see no mvnsubstratencontact
see no polysilicon
see no locali
see no viali
see no metal1
see no m2contact
see no m3contact
see no via3
see no via4
see no mimcap
see no mimcap2
see no mimcapcontact
see no mimcap2contact

getcell user_analog_project_wrapper_empty.mag
box [expr {$midd - 1380}]um [expr {$yoff}]um [expr {$midd - 1380}]um [expr {$yoff}]um
getcell interleaved.mag

# Vdd
box 340um 3500um 853um 3511.5um
paint {metal3 metal4 metal5}
box 850um 3500um 880um 3510um
paint {metal3 metal4 metal5}
box 879.47um 3500um 905um 3511.5um
paint {metal3 metal4 metal5}

# Vout
box 1463um 3500um 1619.97um 3511.5um
paint {metal3 metal4 metal5}
box 1610um 3500um 1650um 3510um
paint {metal3 metal4 metal5}
box 1646.47um 3500um 2351.97um 3511.5um
paint {metal3 metal4 metal5}

# GND
box 1086.47um 3500um 1111.47um 3511.5um
paint {metal3 metal4 metal5}
box 1110um 3500um 1140um 3510um
paint {metal3 metal4 metal5}
box 1137.97um 3500um 1457um 3511.5um
paint {metal3 metal4 metal5}

# FC1_1
box 60um 2910um 70um 3510um
paint metal3

# FC1_2
box 40um 2850um 50um 3430um
paint metal3

# FC2_1
box 2850um 2910um 2860um 3510um
paint metal3

# FC2_2
box 2870um 2850um 2880um 3420um
paint metal3


# ## DI Routing ##

#D1 -> io_in[17]
box 11.5um 2934um 80um 2935um
paint {metal2}
box 11.5um 2843.5um 12.5um 2934um
paint {metal2}
box 11.55um 2843.55um 12.45um 2844.45um
paint {m3contact}
box 11.5um 1891.5um 12.5um 2844.5um
paint {metal3}
box 0um 1889um 20um 1895um
paint {metal3}
#D2 -> io_in[18]
box 21.5um 2932.5um 82um 2933.5um
paint {metal2}
box 21.5um 2843.5um 22.5um 2932.5um
paint {metal2}
box 21.55um 2843.55um 22.45um 2844.45um
paint {m3contact}
box 21.5um 1675.5um 22.5um 2844.5um
paint {metal3}
box 17.5um 1675.5um 22.5um 1676.5um
paint {metal3}
box 0um 1672.79um 20um 1678.79um
paint {metal3}
#D3 -> io_in[19]
box 31.5um 2931um 84um 2932um
paint {metal2}
box 31.5um 2843.5um 32.5um 2931.5um
paint {metal2}
box 31.55um 2843.55um 32.45um 2844.45um
paint {m3contact}
box 31.5um 1459.5um 32.5um 2844.5um
paint {metal3}
box 17.5um 1459.5um 32.5um 1460.5um
paint {metal3}
box 0um 1456.68um 20um 1462.68um
paint {metal3}
#D4 -> io_in[20]
box 41.5um 2929.5um 86um 2930.5um
paint {metal2}
box 41.5um 2843.5um 42.5um 2929.5um
paint {metal2}
box 41.55um 2843.55um 42.45um 2844.45um
paint {m3contact}
box 41.5um 1244um 42.5um 2844.5um
paint {metal3}
box 17.5um 1244um 42.5um 1245um
paint {metal3}
box 0um 1241.57um 20um 1247.57um
paint {metal3}
#D5 -> io_in[10]
box 2838.98um 2934um 2907.48um 2935um
paint {metal2}
box 2906.48um 2843.5um 2907.48um 2934um
paint {metal2}
box 2906.53um 2843.55um 2907.43um 2844.45um
paint {m3contact}
box 2906.48um 2044.18um 2907.48um 2844.5um
paint {metal3}
box 2900um 2041.62um 2920um 2047.62um
paint {metal3}
#D6 -> io_in[9]
box 2836.98um 2932.5um 2897.48um 2933.5um
paint {metal2}
box 2896.48um 2843.5um 2897.48um 2933.5um
paint {metal2}
box 2896.53um 2843.55um 2897.43um 2844.45um
paint {m3contact}
box 2896.48um 1812um 2897.48um 2844.5um
paint {metal3}
box 2896.48um 1812um 2901um 1813um
paint {metal3}
box 2900um 1809.505um 2920um 1815.505um
paint {metal3}
#D7 -> io_in[8]
box 2834.98um 2931um 2887.48um 2932um
paint {metal2}
box 2886.48um 2843.5um 2887.48um 2932um
paint {metal2}
box 2886.53um 2843.55um 2887.43um 2844.45um
paint {m3contact}
box 2886.48um 1586um 2887.48um 2844.5um
paint {metal3}
box 2886.48um 1586um 2901um 1587um
paint {metal3}
box 2900um 1583.4um 2920um 1589.4um
paint {metal3}
#D8 -> io_in[7]
box 2832.98um 2929.5um 2877.48um 2930.5um
paint {metal2}
box 2876.48um 2843.5um 2877.48um 2930.5um
paint {metal2}
box 2876.53um 2843.55um 2877.43um 2844.45um
paint {m3contact}
box 2876.48um 1364um 2877.48um 2844.5um
paint {metal3}
box 2876.48um 1364um 2901um 1365um
paint {metal3}
box 2900um 1361.29um 2920um 1367.29um
paint {metal3}

# 
box -10um -10um 0um 3530um
paint comment
box -10um -10um 2930um 0um
paint comment
box -10um 3520um 2920um 3530um
paint comment
box 2920um -10um 2930um 3530um
paint comment

