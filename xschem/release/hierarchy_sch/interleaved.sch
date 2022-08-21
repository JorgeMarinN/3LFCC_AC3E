v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -40 650 -40 {
lab=#net1}
N 320 -140 480 -140 {
lab=#net2}
N 480 -140 480 -100 {
lab=#net2}
N 480 -100 650 -100 {
lab=#net2}
N 320 -240 520 -240 {
lab=#net3}
N 520 -240 520 -160 {
lab=#net3}
N 520 -160 650 -160 {
lab=#net3}
N 320 -340 570 -340 {
lab=#net4}
N 570 -340 570 -220 {
lab=#net4}
N 570 -220 650 -220 {
lab=#net4}
N -300 -380 -300 -320 {
lab=VDD_}
N 320 -60 360 -60 {
lab=VDD_}
N 320 -160 360 -160 {
lab=VDD_}
N 320 -260 360 -260 {
lab=VDD_}
N 320 -360 360 -360 {
lab=VDD_}
N 1060 -60 1120 -60 {
lab=VN}
N 1060 -130 1120 -130 {
lab=out}
N 1060 -200 1120 -200 {
lab=VP_}
N 320 -380 360 -380 {
lab=VP_}
N 320 -280 360 -280 {
lab=VP_}
N 320 -180 360 -180 {
lab=VP_}
N 320 -80 360 -80 {
lab=VP_}
N 1220 -380 1220 -320 {
lab=VP}
N -100 -380 20 -380 {}
N -100 -280 20 -280 {}
N -100 -180 20 -180 {}
N -100 -80 20 -80 {}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/converter.sym} 610 60 0 0 {name=X1}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -60 0 0 {name=x1}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -160 0 0 {name=x2}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -260 0 0 {name=x3}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -360 0 0 {name=x4}
C {devices/ipin.sym} -300 -380 1 0 {name=p3 lab=VDD}
C {devices/lab_pin.sym} -300 -320 3 0 {name=l7 sig_type=std_logic lab=VDD_}
C {devices/lab_pin.sym} 360 -360 2 0 {name=l8 sig_type=std_logic lab=VDD_}
C {devices/lab_pin.sym} 360 -260 2 0 {name=l9 sig_type=std_logic lab=VDD_}
C {devices/lab_pin.sym} 360 -160 2 0 {name=l10 sig_type=std_logic lab=VDD_}
C {devices/lab_pin.sym} 360 -60 2 0 {name=l11 sig_type=std_logic lab=VDD_}
C {devices/iopin.sym} 1120 -60 0 0 {name=p4 lab=VN}
C {devices/opin.sym} 1120 -130 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 360 -60 2 0 {name=l12 sig_type=std_logic lab=VDD_}
C {devices/lab_pin.sym} 1120 -200 2 0 {name=l13 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 360 -180 2 0 {name=l14 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 360 -80 2 0 {name=l15 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 360 -280 2 0 {name=l16 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 360 -380 2 0 {name=l17 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 1220 -320 3 0 {name=l18 sig_type=std_logic lab=VP_}
C {devices/iopin.sym} 1220 -380 3 0 {name=p6 lab=VP}
C {devices/ipin.sym} -100 -380 0 0 {name=p1 lab=D1}
C {devices/ipin.sym} -100 -280 0 0 {name=p2 lab=D2}
C {devices/ipin.sym} -100 -180 0 0 {name=p8 lab=D3}
C {devices/ipin.sym} -100 -80 0 0 {name=p9 lab=D4}
