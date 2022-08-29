v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
N -480 -320 -480 -300 { lab=GND}
N 390 -510 430 -510 { lab=D1}
N 470 -560 470 -540 { lab=VH}
N 470 -460 470 -440 { lab=V_CFTOP}
N 300 -450 470 -450 { lab=V_CFTOP}
N 300 -450 300 -400 { lab=V_CFTOP}
N 390 -410 430 -410 { lab=D2}
N 470 -380 470 -340 { lab=VOUT_CORE}
N 390 -310 430 -310 { lab=D2_N}
N 470 -260 500 -260 { lab=V_CFBOT}
N 500 -310 500 -260 { lab=V_CFBOT}
N 470 -310 500 -310 { lab=V_CFBOT}
N 470 -280 470 -240 { lab=V_CFBOT}
N 300 -270 470 -270 { lab=V_CFBOT}
N 300 -340 300 -270 { lab=V_CFBOT}
N 390 -210 430 -210 { lab=D1_N}
N 470 -180 470 -140 { lab=VSS}
N 470 -160 500 -160 { lab=VSS}
N 500 -210 500 -160 { lab=VSS}
N 470 -210 500 -210 { lab=VSS}
N -480 -430 -480 -380 { lab=VDD}
N 470 -480 470 -460 { lab=V_CFTOP}
N -390 -320 -390 -300 { lab=GND}
N -390 -430 -390 -380 { lab=VSS}
N 470 -360 710 -360 { lab=VOUT_CORE}
N 770 -360 870 -360 { lab=#net1}
N 870 -360 870 -340 { lab=#net1}
N 870 -280 870 -230 { lab=VSS}
N -310 -320 -310 -300 { lab=GND}
N -310 -430 -310 -380 { lab=VH}
N 470 -510 520 -510 {
lab=VH}
N 520 -550 520 -510 {
lab=VH}
N 470 -550 520 -550 {
lab=VH}
N 470 -410 510 -410 {
lab=V_CFTOP}
N 510 -450 510 -410 {
lab=V_CFTOP}
N 470 -450 510 -450 {
lab=V_CFTOP}
N 870 -360 930 -360 {
lab=#net1}
N 990 -360 1040 -360 {
lab=VOUT}
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -310 0 0 {name=MN2
L=0.5
W=4.38
nf=1
mult=2520
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 450 -210 0 0 {name=MN1
L=0.5
W=4.38
nf=1
mult=2520
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/capa.sym} 300 -370 0 0 {name=CFLY
m=1
value=6.8n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 390 -510 0 0 {name=l1 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 390 -410 0 0 {name=l2 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 390 -310 0 0 {name=l3 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 390 -210 0 0 {name=l4 sig_type=std_logic lab=D1_N}
C {devices/vsource.sym} -480 -350 0 0 {name=V1 value=\{VIN\}}
C {devices/gnd.sym} -480 -300 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 470 -560 0 0 {name=l7 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} -480 -430 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -160 -500 0 0 {name=V4 value="PULSE(0 \{VIN\} 0n 0.1n 0.1n 500n 1000n)"}
C {devices/lab_pin.sym} -150 -540 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -390 -350 0 0 {name=V2 value=0}
C {devices/gnd.sym} -390 -300 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -390 -430 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 470 -140 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -170 -460 0 0 {name=l11 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 610 -360 0 1 {name=l12 sig_type=std_logic lab=VOUT_CORE}
C {devices/vsource.sym} -160 -320 0 0 {name=V6 value="PULSE(0 \{VIN\} 121n 0.1n 0.1n 278n 1000n)"}
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
C {devices/lab_wire.sym} 300 -450 0 0 {name=l15 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 300 -270 0 0 {name=l16 sig_type=std_logic lab=V_CFBOT}
C {devices/ind.sym} 740 -360 1 0 {name=L9
m=1
value=5n
footprint=1206
device=inductor}
C {devices/capa.sym} 870 -310 0 0 {name=C22
m=1
value=50n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 870 -230 0 0 {name=l17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1040 -360 0 1 {name=l19 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -310 -350 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -310 -300 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -310 -430 0 0 {name=l24 sig_type=std_logic lab=VH}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -510 0 0 {name=MP2
L=0.5
W=4.38
nf=1
mult=4506
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -410 0 0 {name=MP1
L=0.5
W=4.38
nf=1
mult=4506
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 960 -360 3 0 {name=Vmeas value=0}
C {devices/vsource.sym} -160 -410 0 0 {name=V5 value="PULSE(\{VIN\} 0 21n 0.1n 0.1n 458n 1000n)"}
C {devices/lab_pin.sym} -150 -450 0 1 {name=l42 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} -170 -370 0 0 {name=l43 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -150 -360 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_wire.sym} -170 -280 0 0 {name=l13 sig_type=std_logic lab=V_CFBOT}
C {devices/vsource.sym} -160 -230 0 0 {name=V7 value="PULSE(\{VIN\} 0 620n 0.1n 0.1n 270n 1000n)"}
C {devices/lab_pin.sym} -150 -270 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} -170 -190 0 0 {name=l45 sig_type=std_logic lab=VSS}
