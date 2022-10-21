v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -790 -200 0 0 0.4 0.4 {}
N -1250 -470 -1250 -450 { lab=GND}
N -1250 -580 -1250 -530 { lab=VSS}
N -1170 -470 -1170 -450 { lab=GND}
N -1170 -580 -1170 -530 { lab=VH}
N -1030 -630 -1030 -620 {
lab=VH}
N -1030 -630 -1020 -630 {
lab=VH}
N -1030 -560 -1030 -550 {
lab=D1}
N -1040 -550 -1030 -550 {
lab=D1}
N -1030 -540 -1030 -530 {
lab=V_CFTOP}
N -1030 -540 -1020 -540 {
lab=V_CFTOP}
N -1030 -470 -1030 -460 {
lab=D2}
N -1040 -460 -1030 -460 {
lab=D2}
N -1030 -450 -1030 -440 {
lab=D2_N}
N -1030 -450 -1020 -450 {
lab=D2_N}
N -1030 -380 -1030 -370 {
lab=V_CFBOT}
N -1040 -370 -1030 -370 {
lab=V_CFBOT}
N -1030 -360 -1030 -350 {
lab=D1_N}
N -1030 -360 -1020 -360 {
lab=D1_N}
N -1030 -290 -1030 -280 {
lab=VSS}
N -1040 -280 -1030 -280 {
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
N -660 -630 -660 -620 {
lab=VH}
N -660 -630 -650 -630 {
lab=VH}
N -660 -560 -660 -550 {
lab=D5}
N -670 -550 -660 -550 {
lab=D5}
N -660 -540 -660 -530 {
lab=V_CFTOP}
N -660 -540 -650 -540 {
lab=V_CFTOP}
N -660 -470 -660 -460 {
lab=D6}
N -670 -460 -660 -460 {
lab=D6}
N -660 -450 -660 -440 {
lab=D6_N}
N -660 -450 -650 -450 {
lab=D6_N}
N -660 -380 -660 -370 {
lab=V_CFBOT}
N -670 -370 -660 -370 {
lab=V_CFBOT}
N -660 -360 -660 -350 {
lab=D5_N}
N -660 -360 -650 -360 {
lab=D5_N}
N -660 -290 -660 -280 {
lab=VSS}
N -670 -280 -660 -280 {
lab=VSS}
C {devices/vsource.sym} -1030 -590 0 0 {name=V4 value="PULSE(0 5 0 0.1n 0.1n 665n 1000n)"}
C {devices/lab_pin.sym} -1020 -630 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -1250 -500 0 0 {name=V2 value=0}
C {devices/gnd.sym} -1250 -450 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -1250 -580 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1040 -550 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -1030 -410 0 0 {name=V6 value="PULSE(0 5 166n 0.1n 0.1n 333n 1000n)"}
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
C {devices/vsource.sym} -1170 -500 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -1170 -450 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -1170 -580 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -1030 -500 0 0 {name=V5 value="PULSE(5 0 166n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -1020 -540 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -1040 -460 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -1020 -450 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -1040 -370 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -1030 -320 0 0 {name=V7 value="PULSE(0 5 655n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -1020 -360 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -1040 -280 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -550 1 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} -60 -550 1 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} -20 -550 1 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 20 -550 1 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/lab_wire.sym} 70 -550 1 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 100 -550 1 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
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
C {devices/vsource.sym} -1340 -490 0 0 {name=V1 value=0}
C {devices/vsource.sym} -660 -590 0 0 {name=V8 value="PULSE(0 5 0 0.1n 0.1n 665n 1000n)"}
C {devices/lab_pin.sym} -650 -630 0 1 {name=l2 sig_type=std_logic lab=VH
}
C {devices/lab_wire.sym} -670 -550 0 0 {name=l3 sig_type=std_logic lab=D5}
C {devices/vsource.sym} -660 -410 0 0 {name=V9 value="PULSE(0 5 166n 0.1n 0.1n 333n 1000n)"}
C {devices/vsource.sym} -660 -500 0 0 {name=V10 value="PULSE(5 0 166n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -650 -540 0 1 {name=l4 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -670 -460 0 0 {name=l5 sig_type=std_logic lab=D6}
C {devices/lab_pin.sym} -650 -450 0 1 {name=l6 sig_type=std_logic lab=D6_N
}
C {devices/lab_wire.sym} -670 -370 0 0 {name=l7 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -660 -320 0 0 {name=V11 value="PULSE(0 5 655n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -650 -360 0 1 {name=l8 sig_type=std_logic lab=D5_N
}
C {devices/lab_wire.sym} -670 -280 0 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -310 3 0 {name=l15 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} -60 -310 3 0 {name=l16 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} -20 -310 3 0 {name=l17 sig_type=std_logic lab=D6_N}
C {devices/lab_wire.sym} 20 -310 3 0 {name=l19 sig_type=std_logic lab=D5_N}
C {devices/lab_pin.sym} -180 -430 2 1 {name=l21 sig_type=std_logic lab=VH
}
