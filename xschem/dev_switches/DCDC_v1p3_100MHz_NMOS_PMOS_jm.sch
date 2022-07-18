v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -810 60 0 0 0.4 0.4 {}
N -700 -320 -700 -300 { lab=GND}
N 390 -510 430 -510 { lab=D1_5V}
N 470 -560 470 -540 { lab=VH}
N 470 -460 470 -440 { lab=V_CFTOP}
N 300 -450 470 -450 { lab=V_CFTOP}
N 300 -450 300 -400 { lab=V_CFTOP}
N 390 -410 430 -410 { lab=D2_5V}
N 470 -380 470 -340 { lab=VOUT_CORE}
N 390 -310 430 -310 { lab=D2_5V}
N 470 -260 500 -260 { lab=V_CFBOT}
N 500 -310 500 -260 { lab=V_CFBOT}
N 470 -310 500 -310 { lab=V_CFBOT}
N 470 -280 470 -240 { lab=V_CFBOT}
N 300 -270 470 -270 { lab=V_CFBOT}
N 300 -340 300 -270 { lab=V_CFBOT}
N 390 -210 430 -210 { lab=D1_5V}
N 470 -180 470 -140 { lab=VSS}
N 470 -160 500 -160 { lab=VSS}
N 500 -210 500 -160 { lab=VSS}
N 470 -210 500 -210 { lab=VSS}
N -700 -430 -700 -380 { lab=VDD}
N 470 -480 470 -460 { lab=V_CFTOP}
N -810 -160 -810 -140 { lab=D1}
N -810 -180 -790 -180 { lab=D1}
N -810 -180 -810 -160 { lab=D1}
N -570 -320 -570 -300 { lab=GND}
N -570 -430 -570 -380 { lab=VSS}
N -810 -80 -810 -30 { lab=VSS}
N 470 -360 710 -360 { lab=VOUT_CORE}
N -520 -160 -520 -140 { lab=D2}
N -520 -180 -500 -180 { lab=D2}
N -520 -180 -520 -160 { lab=D2}
N -520 -80 -520 -30 { lab=VSS}
N 770 -360 870 -360 { lab=VOUT}
N 870 -360 870 -340 { lab=VOUT}
N 870 -280 870 -230 { lab=VSS}
N 870 -360 1040 -360 { lab=VOUT}
N 1040 -360 1040 -330 { lab=VOUT}
N 1040 -210 1040 -160 { lab=VSS}
N 80 -50 80 -20 {
lab=D1}
N 80 -20 160 -20 {
lab=D1}
N 160 -40 160 -20 {
lab=D1}
N 510 -60 510 -40 {
lab=VH}
N 460 -40 510 -40 {
lab=VH}
N 570 -60 570 -20 {
lab=VDD}
N 460 -20 570 -20 {
lab=VDD}
N -350 -310 -350 -290 { lab=GND}
N -350 -420 -350 -370 { lab=VH}
N 460 0 460 30 {
lab=D1_5V}
N 460 30 560 30 {
lab=D1_5V}
N 560 10 560 30 {
lab=D1_5V}
N 80 90 80 120 {
lab=D2}
N 80 120 160 120 {
lab=D2}
N 160 100 160 120 {
lab=D2}
N 510 80 510 100 {
lab=VH}
N 460 100 510 100 {
lab=VH}
N 570 80 570 120 {
lab=VDD}
N 460 120 570 120 {
lab=VDD}
N 460 140 460 170 {
lab=D2_5V}
N 460 170 560 170 {
lab=D2_5V}
N 560 150 560 170 {
lab=D2_5V}
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
C {devices/lab_wire.sym} 390 -510 0 0 {name=l1 sig_type=std_logic lab=D1_5V}
C {devices/lab_wire.sym} 390 -410 0 0 {name=l2 sig_type=std_logic lab=D2_5V}
C {devices/lab_wire.sym} 390 -310 0 0 {name=l3 sig_type=std_logic lab=D2_5V}
C {devices/lab_wire.sym} 390 -210 0 0 {name=l4 sig_type=std_logic lab=D1_5V}
C {devices/vsource.sym} -700 -350 0 0 {name=V1 value=\{VIN\}}
C {devices/gnd.sym} -700 -300 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 470 -560 0 0 {name=l7 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} -700 -430 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -810 -110 0 0 {name=V3 value="PULSE(0 \{VIN\} 5n 0.3n 0.3n 10n 20n)"}
C {devices/lab_pin.sym} -790 -180 0 1 {name=l125 sig_type=std_logic lab=D1
}
C {devices/vsource.sym} -570 -350 0 0 {name=V2 value=0}
C {devices/gnd.sym} -570 -300 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -570 -430 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 470 -140 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -810 -30 0 0 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -360 0 1 {name=l12 sig_type=std_logic lab=VOUT_CORE}
C {devices/vsource.sym} -520 -110 0 0 {name=V4 value="PULSE(0 \{VIN\} 15n 0.3n 0.3n 10n 20n)"}
C {devices/lab_pin.sym} -500 -180 0 1 {name=l13 sig_type=std_logic lab=D2
}
C {devices/lab_wire.sym} -520 -30 0 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -790 170 0 0 {name=s1 only_toplevel=false value="
.param VIN = 1.8
.param VH = 5
*.param RL = 500
.param RL = 8.3
.option scale=1e-6
*.option temp=70
.ic v(V_CFTOP) = VIN/2
.ic v(V_CFBOT) = 0
*.probe vd(MP2:G:S)

.param mc_mm_switch=0
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
save all
tran 0.4n 2u
write DCDC_v1p3_100MHz_NMOS_PMOS.raw
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
C {devices/res.sym} 1040 -240 2 0 {name=R38
value=\{RL\}
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1040 -160 0 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1040 -360 0 1 {name=l19 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 1040 -300 0 0 {name=VS_RL value=0}
C {devices/lab_pin.sym} 80 -50 0 1 {name=l20 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} 510 -60 0 0 {name=l21 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 570 -60 0 0 {name=l22 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -350 -340 0 0 {name=V5 value=\{VH\}}
C {devices/gnd.sym} -350 -290 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -350 -420 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 560 10 0 0 {name=l25 sig_type=std_logic lab=D1_5V}
C {devices/lab_pin.sym} 80 90 0 1 {name=l26 sig_type=std_logic lab=D2
}
C {devices/lab_wire.sym} 510 80 0 0 {name=l27 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 570 80 0 0 {name=l28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 560 150 0 0 {name=l29 sig_type=std_logic lab=D2_5V}
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
C {/home/jorge/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/LS.sym} 310 -20 0 0 {name=x1}
C {/home/jorge/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/LS.sym} 310 120 0 0 {name=x2}
