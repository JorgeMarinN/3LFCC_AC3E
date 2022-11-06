
# #########################	#
#   AC3E - UTFSM      		#
#   Project: 3LFCC    		#
#   Flying capacitor layout	#
#   05-11-2022        		#
# #########################	#

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

#
source cap_matrix_43x52.tcl

# terminal 1
box 10um 1658.8um 689.9um 1670um
paint {metal3 metal5}
box 10um 1660um 689.9um 1680um
paint metal4
box 10.2um 1660.2um 689.7um 1669.8um
paint {via3 via4}

# terminal 2
box 711.8um 1658.8um 1359.8um 1670.5um
paint metal4
box 711.8um 1660.5um 1359.8um 1680um
paint {metal3 metal5}
box 712um 1660.7um 1359.6um 1670.3um
paint {via3 via4}

# erase caps
box 95.7um 1658.80um 0um 1435.50um
select visible
delete
box 0um 988.9um 95.700um 1212.200um
select visible
delete

# pad 1
box [expr {95.7-100-1.6}]um [expr {1435.50 + 1.6}]um [expr {95.7-1.6}]um [expr {1658.8-1.6}]um 
paint {m1,m2,m3,m4,m5}
box [expr {95.7-100-1.4}]um [expr {1435.50 + 1.8}]um [expr {95.7-1.8}]um [expr {1658.8-1.8}]um 
paint {m2contact, m3contact, via3, via4}
box [expr {95.7-1.6}]um [expr {1435.50+10}]um [expr {95.7}]um [expr {1435.5+20}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+31.9}]um [expr {95.7}]um [expr {1435.5+20+31.9}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+31.9*2}]um [expr {95.7}]um [expr {1435.5+20+31.9*2}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+31.9*3}]um [expr {95.7}]um [expr {1435.5+20+31.9*3}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+31.9*4}]um [expr {95.7}]um [expr {1435.5+20+31.9*4}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+31.9*5}]um [expr {95.7}]um [expr {1435.5+20+31.9*5}]um 
paint {m3,m5}
box [expr {95.7-1.6}]um [expr {1435.50+10+(31.9*6)}]um [expr {95.7}]um [expr {1435.5+20+31.9*6}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10}]um [expr {1435.50}]um [expr {95.7-1.6-30.3+20}]um [expr {1435.50+1.6}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10-31.9}]um [expr {1435.50}]um [expr {95.7-1.6-30.3+20-31.9}]um [expr {1435.50+1.6}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10-31.9*2}]um [expr {1435.50}]um [expr {95.7-1.6-30.3+20-31.9*2}]um [expr {1435.50+1.6}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10}]um [expr {1658.80-1.6}]um [expr {95.7-1.6-30.3+20}]um [expr {1658.80}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10-31.9}]um [expr {1658.80-1.6}]um [expr {95.7-1.6-30.3+20-31.9}]um [expr {1658.80}]um 
paint {m3,m5}
box [expr {95.7-1.6-30.3+10-31.9*2}]um [expr {1658.80-1.6}]um [expr {95.7-1.6-30.3+20-31.9*2}]um [expr {1658.80}]um 
paint {m3,m5}

# pad 2
box [expr {95.7-100-1.6}]um [expr {988.9 + 1.6}]um [expr {95.7-1.6}]um [expr {1212.200-1.6}]um 
paint {m1,m2,m3,m4,m5}
box [expr {95.7 - 100 - 1.4}]um [expr {988.9 + 1.8}]um [expr {95.7-1.8}]um [expr {1212.200-1.8}]um 
paint {m2contact, m3contact, via3, via4}
box [expr {95.7-1.6}]um [expr {988.9+10}]um [expr {95.7}]um [expr {988.9+20}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+31.9}]um [expr {95.7}]um [expr {988.9+20+31.9}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+31.9*2}]um [expr {95.7}]um [expr {988.9+20+31.9*2}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+31.9*3}]um [expr {95.7}]um [expr {988.9+20+31.9*3}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+31.9*4}]um [expr {95.7}]um [expr {988.9+20+31.9*4}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+31.9*5}]um [expr {95.7}]um [expr {988.9+20+31.9*5}]um 
paint {m4}
box [expr {95.7-1.6}]um [expr {988.9+10+(31.9*6)}]um [expr {95.7}]um [expr {988.9+20+31.9*6}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10}]um [expr {988.9}]um [expr {95.7-1.6-30.3+20}]um [expr {988.9+1.6}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10-31.9}]um [expr {988.9}]um [expr {95.7-1.6-30.3+20-31.9}]um [expr {988.9+1.6}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10-31.9*2}]um [expr {988.9}]um [expr {95.7-1.6-30.3+20-31.9*2}]um [expr {988.9+1.6}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10}]um [expr {1212.200-1.6}]um [expr {95.7-1.6-30.3+20}]um [expr {1212.200}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10-31.9}]um [expr {1212.200-1.6}]um [expr {95.7-1.6-30.3+20-31.9}]um [expr {1212.200}]um 
paint {m4}
box [expr {95.7-1.6-30.3+10-31.9*2}]um [expr {1212.200-1.6}]um [expr {95.7-1.6-30.3+20-31.9*2}]um [expr {1212.200}]um 
paint {m4}

# extra connection 1
box 10um 1640um 689.9um 1670um
paint {metal1 metal2}
box 10.2um 1660.2um 689.7um 1669.8um
paint {m2contact m3contact}
box 90um 1580um 250um 1610um
paint {metal1 metal2}
box 220um 1580um 250um 1660um
paint {metal1 metal2}
box 90um 1520um 390um 1550um
paint {metal1 metal2}
box 360um 1520um 390um 1660um
paint {metal1 metal2}
box 90um 1460um 540um 1490um
paint {metal1 metal2}
box 510um 1460um 540um 1660um
paint {metal1 metal2}

# extra connection 2
box 711.8um 1660um 1359.8um 1670um
paint {metal1 metal2 metal3}
box 712um 1660.2um 1359.6um 1669.8um
paint {m2contact m3contact}
box 710um 1640um 1360um 1670um
paint {metal1 metal2}
box 10um 1190um 740um 1220um
paint {metal1 metal2}
box 90um 1150um 850um 1180um
paint {metal1 metal2}
box 90um 1110um 960um 1140um
paint {metal1 metal2}
box 90um 1070um 1070um 1100um
paint {metal1 metal2}
box 90um 1030um 1180um 1060um
paint {metal1 metal2}
box 90um 990um 1290um 1020um
paint {metal1 metal2}
box 710um 1190um 740um 1670um
paint {metal1 metal2}
box 820um 1150um 850um 1660um
paint {metal1 metal2}
box 930um 1110um 960um 1660um
paint {metal1 metal2}
box 1040um 1070um 1070um 1660um
paint {metal1 metal2}
box 1150um 1030um 1180um 1660um
paint {metal1 metal2}
box 1260um 990um 1290um 1660um
paint {metal1 metal2}

#
save flying_cap.mag