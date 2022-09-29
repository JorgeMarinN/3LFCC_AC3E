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
N 260 -500 310 -500 {
lab=D1}
N 260 -470 310 -470 {
lab=D2}
N 260 -440 310 -440 {
lab=D2_N}
N 260 -410 310 -410 {
lab=D1_N}
N 430 -340 430 -330 {
lab=V_CFTOP}
N 830 -450 880 -450 {
lab=VOUT_CORE}
N 610 -450 830 -450 {
lab=VOUT_CORE}
N 610 -490 640 -490 {
lab=VH}
N 610 -410 640 -410 {
lab=VSS}
N 830 -360 830 -320 {
lab=VSS}
N 830 -450 830 -420 {
lab=VOUT_CORE}
N 410 -330 430 -330 {
lab=V_CFTOP}
N 410 -320 410 -230 {
lab=V_CFTOP}
N 410 -170 410 -140 {
lab=V_CFBOT}
N 410 -140 520 -140 {
lab=V_CFBOT}
N 520 -340 520 -140 {
lab=V_CFBOT}
N 490 -340 520 -340 {
lab=V_CFBOT}
N 310 -320 310 -290 {
lab=V_CFTOP}
N 310 -320 410 -320 {
lab=V_CFTOP}
N 310 -230 310 -140 {
lab=V_CFBOT}
N 310 -140 410 -140 {
lab=V_CFBOT}
N 410 -330 410 -320 {
lab=V_CFTOP}
N -120 -530 -120 -520 {
lab=VH}
N -120 -530 -110 -530 {
lab=VH}
N -120 -460 -120 -450 {
lab=D1}
N -130 -450 -120 -450 {
lab=D1}
N -120 -440 -120 -430 {
lab=V_CFTOP}
N -120 -440 -110 -440 {
lab=V_CFTOP}
N -120 -370 -120 -360 {
lab=D2}
N -130 -360 -120 -360 {
lab=D2}
N -120 -350 -120 -340 {
lab=D2_N}
N -120 -350 -110 -350 {
lab=D2_N}
N -120 -280 -120 -270 {
lab=V_CFBOT}
N -130 -270 -120 -270 {
lab=V_CFBOT}
N -120 -260 -120 -250 {
lab=D1_N}
N -120 -260 -110 -260 {
lab=D1_N}
N -120 -190 -120 -180 {
lab=VSS}
N -130 -180 -120 -180 {
lab=VSS}
C {devices/vsource.sym} -400 -430 0 0 {name=V2 value=0}
C {devices/gnd.sym} -400 -380 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -400 -510 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VH = 5
.param RL = 50
.option scale=1e-6
*.option temp=70
.ic v(V_CFTOP) = VH/2
.ic v(vout_core)=0
.ic v(V_CFBOT) = 0
*.probe vd(MP2:G:S)
*.save all
*.save v(d1) v(d2) v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(vout) v(vout_core) v(vdd) v(vh) i(v1) i(v5) i(vmeas) v(v_cftop,v_cfbot)
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT_CORE) v(vh) i(v3) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS)
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
tran 100n 3u
write converter_testbench.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v3) tran.v(vh) tran.i(v5)
wrdata /foss/designs/personal/3LFCC_AC3E/xschem/testbench/Converter/3LFCC_v1p4.txt tran.v(vout_core) tran.i(v3)

*plot v(d1top_5v) v(d2_5v)
*plot v(d2bot_5v) v(d1bot_5v)
plot v(v_cftop,v_cfbot) v(vout_core)
plot v(D1,VH) v(D1_N,VSS)
plot v(D2,V_CFTOP) v(D2_N,V_CFBOT)
plot  v(vout_core)
plot i(v3) v(D1,VH) v(D1_N,VSS) 
plot i(v3) v(D2,V_CFTOP) v(D2_N,V_CFBOT)
plot i(v1) 
plot i(v3) v(v_cftop,v_cfbot)
plot @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]


*plot v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(v_cftop,v_cfbot) v(vout)
*plot v(v_cftop,v_cfbot) v(vout)
.endc
"}
C {devices/vsource.sym} -320 -430 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -320 -380 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -320 -510 0 0 {name=l24 sig_type=std_logic lab=VH}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/power_stage_diode.sym} 210 -240 0 0 {name=X1v \{xschem version=3.0.0 file_version=1.2 \}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=X1"\}
V \{\}
S \{\}
E \{\}
L 4 360 -250 400 -250 \{\}
L 4 360 -210 400 -210 \{\}
L 4 360 -170 400 -170 \{\}
L 4 140 -280 140 -140 \{\}
L 4 140 -140 360 -140 \{\}
L 4 360 -280 360 -140 \{\}
L 4 140 -280 360 -280 \{\}
L 4 220 -140 220 -100 \{\}
L 4 280 -140 280 -100 \{\}
L 4 100 -260 140 -260 \{\}
L 4 100 -230 140 -230 \{\}
L 4 100 -200 140 -200 \{\}
L 4 100 -170 140 -170 \{\}
B 5 97.5 -262.5 102.5 -257.5 \{name=s1
dir=in\}
B 5 97.5 -232.5 102.5 -227.5 \{name=s2
dir=in\}
B 5 97.5 -202.5 102.5 -197.5 \{name=s3
dir=in\}
B 5 97.5 -172.5 102.5 -167.5 \{name=s4
dir=in\}
B 5 217.5 -102.5 222.5 -97.5 \{name=fc1
dir=inout\}
B 5 277.5 -102.5 282.5 -97.5 \{name=fc2
dir=inout\}
B 5 397.5 -212.5 402.5 -207.5 \{name=out
dir=inout\}
B 5 397.5 -252.5 402.5 -247.5 \{name=VP
dir=inout\}
B 5 397.5 -172.5 402.5 -167.5 \{name=VN
dir=inout\}
T \{fc1\} 210 -170 0 0 0.35 0.35 \{\}
T \{fc2\} 270 -170 0 0 0.35 0.35 \{\}
T \{out\} 320 -220 0 0 0.35 0.35 \{\}
T \{VP\} 330 -260 0 0 0.35 0.35 \{\}
T \{VN\} 330 -180 0 0 0.35 0.35 \{\}
T \{s1\} 150 -270 0 0 0.35 0.35 \{\}
T \{s4\} 150 -180 0 0 0.35 0.35 \{\}
T \{s3\} 150 -210 0 0 0.35 0.35 \{\}
T \{s2\} 150 -240 0 0 0.35 0.35 \{\}
T \{power_stage\} 210 -240 0 0 0.25 0.25 \{\}
}
C {devices/lab_wire.sym} 260 -500 0 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 260 -470 0 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 260 -440 0 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 260 -410 0 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/lab_wire.sym} 310 -320 0 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 310 -140 0 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 680 -450 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} 640 -490 2 0 {name=l32 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 640 -410 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 910 -390 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 830 -320 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 830 -390 0 0 {name=R2
value=22
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 310 -260 0 0 {name=C1 model=cap_mim_m3_2 W=30 L=30 MF=1978 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 -200 0 0 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=1978 spiceprefix=X}
C {devices/vsource.sym} -120 -490 0 0 {name=V4 value="PULSE(0 5 10n 2.5n 1n 646n 1000n)"}
C {devices/lab_pin.sym} -110 -530 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_wire.sym} -130 -450 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -120 -310 0 0 {name=V6 value="PULSE(0 5 176n 2.5n 1n 313n 1000n)"}
C {devices/vsource.sym} -120 -400 0 0 {name=V5 value="PULSE(5 0 166n 2.5n 1n 333n 1000n)"}
C {devices/lab_pin.sym} -110 -440 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -130 -360 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -110 -350 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -130 -270 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -120 -220 0 0 {name=V7 value="PULSE(0 5 666n 2.5n 1n 333n 1000n)"}
C {devices/lab_pin.sym} -110 -260 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -130 -180 0 0 {name=l45 sig_type=std_logic lab=VSS}
