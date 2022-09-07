v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -790 -200 0 0 0.4 0.4 {}
N -810 -480 -810 -460 { lab=GND}
N -810 -590 -810 -540 { lab=VSS}
N -730 -480 -730 -460 { lab=GND}
N -730 -590 -730 -540 { lab=VH}
N -570 -620 -570 -610 {
lab=VH}
N -570 -620 -560 -620 {
lab=VH}
N -570 -550 -570 -540 {
lab=D1}
N -580 -540 -570 -540 {
lab=D1}
N -570 -530 -570 -520 {
lab=V_CFTOP}
N -570 -530 -560 -530 {
lab=V_CFTOP}
N -570 -460 -570 -450 {
lab=D2}
N -580 -450 -570 -450 {
lab=D2}
N -570 -440 -570 -430 {
lab=D2_N}
N -570 -440 -560 -440 {
lab=D2_N}
N -570 -370 -570 -360 {
lab=V_CFBOT}
N -580 -360 -570 -360 {
lab=V_CFBOT}
N -570 -350 -570 -340 {
lab=D1_N}
N -570 -350 -560 -350 {
lab=D1_N}
N -570 -280 -570 -270 {
lab=VSS}
N -580 -270 -570 -270 {
lab=VSS}
N 400 -430 460 -430 {
lab=VOUT_CORE}
N 520 -430 570 -430 {
lab=VOUT_CORE}
N 300 -430 370 -430 {
lab=VOUT_CORE}
N 300 -470 330 -470 {
lab=out}
N 300 -390 330 -390 {
lab=VSS}
N 460 -430 520 -430 {
lab=VOUT_CORE}
N 520 -340 520 -300 {
lab=VSS}
N 520 -430 520 -400 {
lab=VOUT_CORE}
N 370 -430 400 -430 {
lab=VOUT_CORE}
C {devices/vsource.sym} -570 -580 0 0 {name=V4 value="PULSE(0 5 0 0.1n 0.1n 665n 1000n)"}
C {devices/lab_pin.sym} -560 -620 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -810 -510 0 0 {name=V2 value=0}
C {devices/gnd.sym} -810 -460 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -810 -590 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -580 -540 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -570 -400 0 0 {name=V6 value="PULSE(0 5 166n 0.1n 0.1n 333n 1000n)"}
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
C {devices/vsource.sym} -730 -510 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -730 -460 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -730 -590 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -570 -490 0 0 {name=V5 value="PULSE(5 0 166n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -560 -530 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -580 -450 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -560 -440 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -580 -360 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -570 -310 0 0 {name=V7 value="PULSE(0 5 655n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -560 -350 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -580 -270 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -600 1 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} -60 -600 1 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} -20 -600 1 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 20 -600 1 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/lab_wire.sym} 70 -590 1 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 100 -590 1 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 370 -430 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} 330 -390 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 600 -370 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 520 -300 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 520 -370 0 0 {name=R2
value=22
footprint=1206
device=resistor
m=1}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/top_module.sym} -160 -250 0 0 {name=X2}
C {devices/iopin.sym} 330 -470 0 0 {name=p14 lab=out}
