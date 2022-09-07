v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
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
N 690 -630 690 -600 {
lab=V_CFTOP}
N 760 -630 760 -600 {
lab=V_CFBOT}
N 910 -860 940 -860 {
lab=VH}
N 910 -760 940 -760 {
lab=VSS}
N 1010 -810 1070 -810 {
lab=VOUT_CORE}
N 1130 -810 1180 -810 {
lab=VOUT_CORE}
N 910 -810 980 -810 {
lab=VOUT_CORE}
N 1070 -810 1130 -810 {
lab=VOUT_CORE}
N 1130 -720 1130 -680 {
lab=VSS}
N 1130 -810 1130 -780 {
lab=VOUT_CORE}
N 980 -810 1010 -810 {
lab=VOUT_CORE}
C {devices/vsource.sym} -160 -500 0 0 {name=V4 value="PULSE(0 5 0 0.1n 0.1n 665n 1000n)"}
C {devices/lab_pin.sym} -150 -540 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -400 -430 0 0 {name=V2 value=0}
C {devices/gnd.sym} -400 -380 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -400 -510 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -170 -460 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -160 -320 0 0 {name=V6 value="PULSE(0 5 166n 0.1n 0.1n 333n 1000n)"}
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
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT) v(VOUT_CORE) v(vdd) v(vh) i(v3) i(vmeas) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS)
.save @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
.param mc_mm_switch=0
*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
*save all
tran 400n 3u
write DCDC_v1p4_5MHz_NMOS_PMOS.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v3) tran.v(vh) tran.i(v5)
wrdata /foss/designs/personal/3LFCC_AC3E/xschem/hierarchy_sch/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(v3)

*plot v(d1top_5v) v(d2_5v)
*plot v(d2bot_5v) v(d1bot_5v)
plot v(v_cftop,v_cfbot) v(vout_core)
plot v(D1,VH) v(D1_N,VSS)
plot v(D2,V_CFTOP) v(D2_N,V_CFBOT)
plot  v(vout_core)
plot i(v3) v(D1,VH) v(D2,V_CFTOP)
plot i(v3) v(D1_N,VSS) v(D2_N,V_CFBOT)
plot i(v3) 
plot i(v3) v(v_cftop,v_cfbot)
plot @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]


*plot v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(v_cftop,v_cfbot) v(vout)
*plot v(v_cftop,v_cfbot) v(vout)
.endc
"}
C {devices/vsource.sym} -320 -430 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -320 -380 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -320 -510 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -160 -410 0 0 {name=V5 value="PULSE(5 0 166n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -150 -450 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -170 -370 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -150 -360 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -170 -280 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -160 -230 0 0 {name=V7 value="PULSE(0 5 655n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -150 -270 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -170 -190 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/interleaved.sym} 490 -710 0 0 {name=X2}
C {devices/lab_wire.sym} 690 -600 3 0 {name=l2 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 760 -600 3 0 {name=l3 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 940 -860 2 0 {name=l4 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 940 -760 2 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 980 -810 0 1 {name=l6 sig_type=std_logic lab=VOUT_CORE}
C {devices/isource.sym} 1210 -750 0 0 {name=I1 value=0.15
}
C {devices/lab_wire.sym} 1130 -680 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1130 -750 0 0 {name=R1
value=22
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 490 -860 0 0 {name=l1 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 490 -810 0 0 {name=l7 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 490 -760 0 0 {name=l12 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 490 -710 0 0 {name=l15 sig_type=std_logic lab=D1_N}