v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -260 40 -260 {
lab=VDD}
N 400 -210 440 -210 {
lab=VP_}
N 400 -160 440 -160 {
lab=out}
N 400 -110 440 -110 {
lab=VN_}
N 400 340 440 340 {
lab=VP_}
N 400 390 440 390 {
lab=out_}
N 400 440 440 440 {
lab=VN_}
N 0 -210 40 -210 {
lab=D1}
N -0 -160 40 -160 {
lab=D2}
N 0 -110 40 -110 {
lab=D3}
N 0 -60 40 -60 {
lab=D4}
N 0 340 40 340 {
lab=D5}
N 0 390 40 390 {
lab=D6}
N 0 440 40 440 {
lab=D7}
N 0 490 40 490 {
lab=D8}
N 600 -210 640 -210 {
lab=VP}
N 600 -160 640 -160 {
lab=out}
N 600 -110 640 -110 {
lab=VN}
N 180 20 180 70 {
lab=fc1_read_top_1}
N 250 20 250 70 {
lab=fc2_read_top_1}
N 180 570 180 620 {
lab=fc1_read_top_2}
N 250 570 250 620 {
lab=fc2_read_top_2}
N 0 290 40 290 {
lab=VDD}
C {devices/lab_pin.sym} 440 -210 2 0 {name=l3 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 440 340 2 0 {name=l4 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 440 390 2 0 {name=l6 sig_type=std_logic lab=out_}
C {devices/lab_pin.sym} 440 -110 2 0 {name=l7 sig_type=std_logic lab=VN_}
C {devices/lab_pin.sym} 440 440 2 0 {name=l8 sig_type=std_logic lab=VN_}
C {devices/ipin.sym} 0 -210 0 0 {name=p1 lab=D1}
C {devices/ipin.sym} 0 -160 0 0 {name=p2 lab=D2}
C {devices/ipin.sym} 0 -110 0 0 {name=p3 lab=D3}
C {devices/ipin.sym} 0 -60 0 0 {name=p4 lab=D4}
C {devices/ipin.sym} 0 340 0 0 {name=p5 lab=D5}
C {devices/ipin.sym} 0 390 0 0 {name=p6 lab=D6}
C {devices/ipin.sym} 0 440 0 0 {name=p7 lab=D7}
C {devices/ipin.sym} 0 490 0 0 {name=p8 lab=D8}
C {devices/lab_pin.sym} 600 -210 0 0 {name=l9 sig_type=std_logic lab=VP_}
C {devices/lab_pin.sym} 600 -160 0 0 {name=l10 sig_type=std_logic lab=out_}
C {devices/lab_pin.sym} 600 -110 0 0 {name=l11 sig_type=std_logic lab=VN_}
C {devices/iopin.sym} 640 -210 0 0 {name=p9 lab=VP}
C {devices/iopin.sym} 640 -110 0 0 {name=p10 lab=VN}
C {devices/ipin.sym} 0 -260 0 0 {name=p12 lab=VDD}
C {devices/opin.sym} 180 70 1 0 {name=p13 lab=fc1_read_top_1}
C {devices/opin.sym} 250 70 1 0 {name=p14 lab=fc2_read_top_1}
C {devices/opin.sym} 180 620 1 0 {name=p15 lab=fc1_read_top_2}
C {devices/opin.sym} 250 620 1 0 {name=p16 lab=fc2_read_top_2}
C {devices/iopin.sym} 640 -160 0 0 {name=p17 lab=out}
C {devices/iopin.sym} 440 -160 0 0 {name=p11 lab=out}
C {devices/ipin.sym} 0 290 0 0 {name=p18 lab=VDD}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/core.sym} -20 -60 0 0 {name=X1}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/core.sym} -20 490 0 0 {name=X2}
