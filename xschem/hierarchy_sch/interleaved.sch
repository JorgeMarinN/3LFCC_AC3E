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
N 320 -60 360 -60 {
lab=VDD}
N 320 -160 360 -160 {
lab=VDD}
N 320 -260 360 -260 {
lab=VDD}
N 320 -360 360 -360 {
lab=VDD}
N 1060 -60 1120 -60 {
lab=VN}
N 1060 -130 1120 -130 {
lab=out}
N 1060 -200 1120 -200 {
lab=VP}
N 320 -380 360 -380 {
lab=VP}
N 320 -280 360 -280 {
lab=VP}
N 320 -180 360 -180 {
lab=VP}
N 320 -80 360 -80 {
lab=VP}
N -100 -380 20 -380 {
lab=D1}
N -100 -280 20 -280 {
lab=D2}
N -100 -180 20 -180 {
lab=D3}
N -100 -80 20 -80 {
lab=D4}
N 810 20 810 90 {
lab=fc1_read_int}
N 900 20 900 90 {
lab=fc2_read_int}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -60 0 0 {name=x1}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -160 0 0 {name=x2}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -260 0 0 {name=x3}
C {personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/LS_FINAL.sym} 170 -360 0 0 {name=x4}
C {devices/iopin.sym} 1120 -60 0 0 {name=p4 lab=VN}
C {devices/ipin.sym} -100 -380 0 0 {name=p1 lab=D1}
C {devices/ipin.sym} -100 -280 0 0 {name=p2 lab=D2}
C {devices/ipin.sym} -100 -180 0 0 {name=p8 lab=D3}
C {devices/ipin.sym} -100 -80 0 0 {name=p9 lab=D4}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/converter.sym} 610 60 0 0 {name=X1}
C {devices/opin.sym} 810 90 1 0 {name=p7 lab=fc1_read_int
}
C {devices/opin.sym} 900 90 1 0 {name=p10 lab=fc2_read_int
}
C {devices/iopin.sym} 1120 -200 0 0 {name=p11 lab=VP}
C {devices/iopin.sym} 360 -380 0 0 {name=p6 lab=VP}
C {devices/iopin.sym} 360 -280 0 0 {name=p12 lab=VP}
C {devices/iopin.sym} 360 -180 0 0 {name=p13 lab=VP}
C {devices/iopin.sym} 360 -80 0 0 {name=p14 lab=VP}
C {devices/iopin.sym} 360 -360 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 360 -260 0 0 {name=p16 lab=VDD}
C {devices/iopin.sym} 360 -160 0 0 {name=p17 lab=VDD}
C {devices/iopin.sym} 360 -60 0 0 {name=p18 lab=VDD}
C {devices/iopin.sym} 1120 -130 0 0 {name=p3 lab=out}
