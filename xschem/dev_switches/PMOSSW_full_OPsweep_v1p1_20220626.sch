v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -290 250 -270 { lab=VDD}
N 250 -400 250 -350 { lab=VGS}
N 380 -290 380 -270 { lab=GND}
N 380 -400 380 -350 { lab=VS}
N 80 -290 80 -270 { lab=GND}
N 80 -400 80 -350 { lab=VDD}
N 700 -280 700 -240 { lab=VS}
N 620 -310 660 -310 { lab=VGS}
N 700 -400 700 -340 { lab=VDD}
N 700 -310 720 -310 { lab=VDD}
N 720 -360 720 -310 { lab=VDD}
N 700 -360 720 -360 { lab=VDD}
C {devices/vsource.sym} 250 -320 0 0 {name=VGS value=5}
C {devices/lab_wire.sym} 250 -400 0 0 {name=l8 sig_type=std_logic lab=VGS}
C {devices/vsource.sym} 380 -320 0 0 {name=VS value=0}
C {devices/gnd.sym} 380 -270 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 380 -400 0 0 {name=l10 sig_type=std_logic lab=VS}
C {devices/vsource.sym} 80 -320 0 0 {name=VDD value=20}
C {devices/gnd.sym} 80 -270 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -400 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 700 -400 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 620 -310 0 0 {name=l4 sig_type=std_logic lab=VGS}
C {devices/lab_wire.sym} 700 -240 0 0 {name=l6 sig_type=std_logic lab=VS}
C {devices/code_shown.sym} 40 -970 0 0 {name=s1 only_toplevel=false value="
*.param VIN = 20
*.param RL = 50
*.option temp=70
*.ic v(V_CFTOP) = VIN/2
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT

*.dc VDS 0 1.8 0.05
*.op

.control
save all
*unset noglob
*save @m.*[*]
*set noglob
*save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]
*save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[vdsat]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[cds]
*save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[vth]
*op
dc VGS -5 5 0.1 VS 0 5 1
*print all
print @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[cds]
plot @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[cds]
*plot @m.xm1.msky130_fd_pr__nfet_g5v0d10v5
.endc
"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -310 0 0 {name=M1
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
C {devices/lab_wire.sym} 250 -270 0 0 {name=l5 sig_type=std_logic lab=VDD}
