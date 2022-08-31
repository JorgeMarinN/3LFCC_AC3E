v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
N -490 -400 -490 -380 { lab=GND}
N -490 -510 -490 -460 { lab=VDD}
N -400 -400 -400 -380 { lab=GND}
N -400 -510 -400 -460 { lab=VSS}
N -320 -400 -320 -380 { lab=GND}
N -320 -510 -320 -460 { lab=VH}
N -160 -540 -160 -530 {
lab=VH}
N -160 -540 -150 -540 {
lab=VH}
N -160 -470 -160 -460 {
lab=D1}
N -170 -460 -160 -460 {
lab=D1}
N -160 -450 -160 -440 {
lab=V_CFTOP}
N -160 -450 -150 -450 {
lab=V_CFTOP}
N -160 -380 -160 -370 {
lab=D2}
N -170 -370 -160 -370 {
lab=D2}
N -160 -360 -160 -350 {
lab=D2_N}
N -160 -360 -150 -360 {
lab=D2_N}
N -160 -290 -160 -280 {
lab=V_CFBOT}
N -170 -280 -160 -280 {
lab=V_CFBOT}
N -160 -270 -160 -260 {
lab=D1_N}
N -160 -270 -150 -270 {
lab=D1_N}
N -160 -200 -160 -190 {
lab=VSS}
N -170 -190 -160 -190 {
lab=VSS}
N 260 -500 310 -500 {
lab=D1}
N 260 -470 310 -470 {
lab=D2}
N 260 -440 310 -440 {
lab=D2_N}
N 260 -410 310 -410 {
lab=D1_N}
N 270 -330 270 -310 {
lab=V_CFTOP}
N 270 -250 270 -230 {
lab=V_CFBOT}
N 270 -230 490 -230 {
lab=V_CFBOT}
N 490 -340 490 -230 {
lab=V_CFBOT}
N 430 -340 430 -330 {
lab=V_CFTOP}
N 270 -330 430 -330 {
lab=V_CFTOP}
N 890 -450 890 -430 { lab=VOUT}
N 890 -370 890 -320 { lab=VSS}
N 890 -450 950 -450 {
lab=VOUT}
N 1010 -450 1060 -450 {
lab=VOUT}
N 680 -450 780 -450 {
lab=VOUT_CORE}
N 610 -450 680 -450 {
lab=VOUT_CORE}
N 610 -490 640 -490 {
lab=VH}
N 610 -410 640 -410 {
lab=VSS}
N 840 -450 870 -450 {
lab=VOUT}
N 870 -450 890 -450 {
lab=VOUT}
N 950 -450 1010 -450 {
lab=VOUT}
N 1010 -360 1010 -320 {
lab=VSS}
N 1010 -450 1010 -420 {
lab=VOUT}
C {devices/vsource.sym} -490 -430 0 0 {name=V1 value=\{VIN\}}
C {devices/gnd.sym} -490 -380 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -490 -510 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -160 -500 0 0 {name=V4 value="PULSE(0 5 0 0.001n 0.001n 665n 1000n)"}
C {devices/lab_pin.sym} -150 -540 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -400 -430 0 0 {name=V2 value=0}
C {devices/gnd.sym} -400 -380 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -400 -510 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -170 -460 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -160 -320 0 0 {name=V6 value="PULSE(0 5 174n 0.001n 0.001n 313n 1000n)"}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VH = 5
.param RL = 50
.option scale=1e-6
*.option temp=70
.ic v(V_CFTOP) = VH/2
.ic v(vout)=0
.ic v(V_CFBOT) = 0
*.probe vd(MP2:G:S)
*.save all
*.save v(d1) v(d2) v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(vout) v(vout_core) v(vdd) v(vh) i(v1) i(v5) i(vmeas) v(v_cftop,v_cfbot)
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT) v(VOUT_CORE) v(vdd) v(vh) i(v1) i(v3) i(vmeas) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS)
.param mc_mm_switch=0
*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
*save all
tran 100n 3u
write DCDC_v1p4_5MHz_NMOS_PMOS.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v1) tran.v(vh) tran.i(v5)
wrdata /foss/designs/personal/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(v3) tran.i(v1)

*plot v(d1top_5v) v(d2_5v)
*plot v(d2bot_5v) v(d1bot_5v)
plot v(v_cftop,v_cfbot) v(vout)
plot v(D1,VH) v(D1_N,VSS)
plot v(D2,V_CFTOP) v(D2_N,V_CFBOT)
plot v(vout) v(vout_core)



*plot v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(v_cftop,v_cfbot) v(vout)
*plot v(v_cftop,v_cfbot) v(vout)
.endc
"}
C {devices/vsource.sym} -320 -430 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -320 -380 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -320 -510 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -160 -410 0 0 {name=V5 value="PULSE(5 0 163n 0.001n 0.001n 336n 1000n)"}
C {devices/lab_pin.sym} -150 -450 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -170 -370 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -150 -360 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -170 -280 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -160 -230 0 0 {name=V7 value="PULSE(0 5 676n 0.001n 0.001n 310n 1000n)"}
C {devices/lab_pin.sym} -150 -270 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -170 -190 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/power_stage.sym} 210 -240 0 0 {name=X1}
C {devices/lab_wire.sym} 260 -500 0 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 260 -470 0 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 260 -440 0 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 260 -410 0 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/capa.sym} 270 -280 0 0 {name=CFLY1
m=1
value=6.8n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 270 -330 0 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 270 -230 0 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 680 -450 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/ind.sym} 810 -450 1 0 {name=L1
m=1
value=100u
footprint=1206
device=inductor}
C {devices/capa.sym} 890 -400 0 0 {name=C1
m=1
value=12n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 890 -320 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1060 -450 0 1 {name=l31 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 640 -490 2 0 {name=l32 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 640 -410 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 1010 -390 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 1010 -320 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1120 -340 0 0 {name=R1
value=22
footprint=1206
device=resistor
m=1}
