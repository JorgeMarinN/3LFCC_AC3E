v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -630 30 0 0 0.4 0.4 {}
N 390 -510 430 -510 { lab=S1}
N 470 -560 470 -540 { lab=VH}
N 470 -460 470 -440 { lab=V_CFTOP}
N 300 -450 470 -450 { lab=V_CFTOP}
N 300 -450 300 -400 { lab=V_CFTOP}
N 390 -410 430 -410 { lab=S2}
N 470 -380 470 -340 { lab=VOUT_CORE}
N 390 -310 430 -310 { lab=S1_N}
N 470 -260 500 -260 { lab=V_CFBOT}
N 500 -310 500 -260 { lab=V_CFBOT}
N 470 -310 500 -310 { lab=V_CFBOT}
N 470 -280 470 -240 { lab=V_CFBOT}
N 300 -270 470 -270 { lab=V_CFBOT}
N 300 -340 300 -270 { lab=V_CFBOT}
N 390 -210 430 -210 { lab=S2_N}
N 470 -180 470 -140 { lab=VSS}
N 470 -160 500 -160 { lab=VSS}
N 500 -210 500 -160 { lab=VSS}
N 470 -210 500 -210 { lab=VSS}
N 470 -480 470 -460 { lab=V_CFTOP}
N 470 -360 710 -360 { lab=VOUT_CORE}
N 770 -360 870 -360 { lab=VOUT}
N 870 -360 870 -340 { lab=VOUT}
N 870 -280 870 -230 { lab=VSS}
N 870 -360 1040 -360 { lab=VOUT}
N 1040 -360 1040 -330 { lab=VOUT}
N 1040 -210 1040 -160 { lab=VSS}
N 410 -70 410 -40 {
lab=D1}
N 410 -40 490 -40 {
lab=D1}
N 490 -60 490 -40 {
lab=D1}
N 840 -80 840 -60 {
lab=VH}
N 790 -60 840 -60 {
lab=VH}
N 900 -80 900 -40 {
lab=VDD}
N 790 -40 900 -40 {
lab=VDD}
N 790 -20 790 10 {
lab=S1}
N 790 10 890 10 {
lab=S1}
N 890 -10 890 10 {
lab=S1}
N 400 190 400 220 {
lab=D3}
N 400 220 480 220 {
lab=D3}
N 480 200 480 220 {
lab=D3}
N 830 180 830 200 {
lab=VH}
N 780 200 830 200 {
lab=VH}
N 890 180 890 220 {
lab=VDD}
N 780 220 890 220 {
lab=VDD}
N 780 240 780 270 {
lab=S2}
N 780 270 880 270 {
lab=S2}
N 880 250 880 270 {
lab=S2}
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
N 400 320 400 350 {
lab=D4}
N 400 350 480 350 {
lab=D4}
N 480 330 480 350 {
lab=D4}
N 830 310 830 330 {
lab=VH}
N 780 330 830 330 {
lab=VH}
N 890 310 890 350 {
lab=VDD}
N 780 350 890 350 {
lab=VDD}
N 780 370 780 400 {
lab=S2_N}
N 780 400 880 400 {
lab=S2_N}
N 880 380 880 400 {
lab=S2_N}
N 400 60 400 90 {
lab=D2}
N 400 90 480 90 {
lab=D2}
N 480 70 480 90 {
lab=D2}
N 830 50 830 70 {
lab=VH}
N 780 70 830 70 {
lab=VH}
N 890 50 890 90 {
lab=VDD}
N 780 90 890 90 {
lab=VDD}
N 780 110 780 140 {
lab=S1_N}
N 780 140 880 140 {
lab=S1_N}
N 880 120 880 140 {
lab=S1_N}
N -610 -370 -610 -350 { lab=D1}
N -610 -390 -590 -390 { lab=D1}
N -610 -390 -610 -370 { lab=D1}
N -610 -290 -610 -240 { lab=VSS}
N -320 -370 -320 -350 { lab=D2}
N -320 -390 -300 -390 { lab=D2}
N -320 -390 -320 -370 { lab=D2}
N -320 -290 -320 -240 { lab=VSS}
N -610 -510 -610 -490 { lab=GND}
N -610 -620 -610 -570 { lab=VDD}
N -480 -510 -480 -490 { lab=GND}
N -480 -620 -480 -570 { lab=VSS}
N -260 -500 -260 -480 { lab=GND}
N -260 -610 -260 -560 { lab=VH}
N -620 -170 -620 -150 { lab=D3}
N -620 -190 -600 -190 { lab=D3}
N -620 -190 -620 -170 { lab=D3}
N -620 -90 -620 -40 { lab=VSS}
N -330 -170 -330 -150 { lab=D4}
N -330 -190 -310 -190 { lab=D4}
N -330 -190 -330 -170 { lab=D4}
N -330 -90 -330 -40 { lab=VSS}
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
C {devices/lab_wire.sym} 390 -510 0 0 {name=l1 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 390 -410 0 0 {name=l2 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 390 -310 0 0 {name=l3 sig_type=std_logic lab=S1_N}
C {devices/lab_wire.sym} 390 -210 0 0 {name=l4 sig_type=std_logic lab=S2_N}
C {devices/lab_wire.sym} 470 -560 0 0 {name=l7 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 470 -140 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -360 0 1 {name=l12 sig_type=std_logic lab=VOUT_CORE}
C {devices/code_shown.sym} -610 140 0 0 {name=s1 only_toplevel=false value="
.param VIN = 1.8
.param VH = 5
.param RL = 50
.option scale=1e-7
*.option temp=70
.ic v(V_CFTOP) = VIN/2
.ic v(vout)=0
.ic v(V_CFBOT) = 0
*.probe vd(MP2:G:S)

.param mc_mm_switch=0
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
save all
tran 0.003 2n
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
C {devices/lab_pin.sym} 410 -70 0 1 {name=l20 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} 840 -80 0 0 {name=l21 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 900 -80 0 0 {name=l22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 890 -10 0 0 {name=l25 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 400 190 0 1 {name=l26 sig_type=std_logic lab=D3
}
C {devices/lab_wire.sym} 830 180 0 0 {name=l27 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 890 180 0 0 {name=l28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 880 250 0 0 {name=l29 sig_type=std_logic lab=S2}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 450 -510 0 0 {name=MP2
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
v \{xschem version=3.0.0 file_version=1.2 

* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

\}
G \{\}
K \{type=pmos
format="@spiceprefix@name @pinlist @body sky130_fd_pr__@model L=@L W=@W
+ nf=@nf ad=@ad as=@as pd=@pd ps=@ps
+ nrd=@nrd nrs=@nrs sa=@sa sb=@sb sd=@sd 
+ mult=@mult m=@mult"
template="name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad=\\\\"'int((nf+1)/2) * W/nf * 0.29'\\\\" 
pd=\\\\"'2*int((nf+1)/2) * (W/nf + 0.29)'\\\\"
as=\\\\"'int((nf+2)/2) * W/nf * 0.29'\\\\" 
ps=\\\\"'2*int((nf+2)/2) * (W/nf + 0.29)'\\\\"
nrd=\\\\"'0.29 / W'\\\\" nrs=\\\\"'0.29 / W'\\\\"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
"\}
V \{\}
S \{\}
E \{\}
L 4 20 -30 20 -17.5 \{\}
L 4 20 17.5 20 30 \{\}
L 4 7.5 17.5 20 17.5 \{\}
L 4 12.5 -17.5 20 -17.5 \{\}
L 4 -20 0 -12.5 0 \{\}
L 4 7.5 -22.5 7.5 22.5 \{\}
B 5 17.5 27.5 22.5 32.5 \{name=D dir=inout\}
B 5 -22.5 -2.5 -17.5 2.5 \{name=G dir=in\}
B 5 17.5 -32.5 22.5 -27.5 \{name=S dir=inout\}
A 4 -7.5 0 5 180 360 \{\}
P 4 4 12.5 -20 7.5 -17.5 12.5 -15 12.5 -20 \{fill=true\}
P 4 5 -2.5 15 -2.5 -15 2.5 -15 2.5 15 -2.5 15 \{\}
T \{@name\} 5 -30 0 1 0.2 0.2 \{\}
T \{D\} 22.5 17.5 0 0 0.15 0.15 \{layer=7\}
T \{S\} 22.5 -17.5 2 1 0.15 0.15 \{layer=7\}
T \{G\} -11.875 -10 0 1 0.15 0.15 \{layer=7\}
T \{@model\} 30 -8.75 2 1 0.2 0.2 \{\}
T \{@mult x @W / @L\} 31.25 13.75 0 0 0.2 0.2 \{ layer=13\}
T \{nf=@nf\} 31.25 1.25 0 0 0.2 0.2 \{ layer=13\}
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
C {LS_FINAL.sym} 640 -40 0 0 {name=x1}
C {LS_FINAL.sym} 630 220 0 0 {name=x2}
C {devices/lab_pin.sym} 400 320 0 1 {name=l30 sig_type=std_logic lab=D4
}
C {devices/lab_wire.sym} 830 310 0 0 {name=l31 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 890 310 0 0 {name=l32 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 880 380 0 0 {name=l33 sig_type=std_logic lab=S2_N}
C {LS_FINAL.sym} 630 350 0 0 {name=x3}
C {devices/lab_pin.sym} 400 60 0 1 {name=l38 sig_type=std_logic lab=D2

}
C {devices/lab_wire.sym} 830 50 0 0 {name=l39 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 890 50 0 0 {name=l40 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 880 120 0 0 {name=l41 sig_type=std_logic lab=S1_N}
C {LS_FINAL.sym} 630 90 0 0 {name=x5}
C {devices/vsource.sym} -610 -320 0 0 {name=V6 value="PULSE(0 \{VIN\} 0 1n 1n 0.5u 1u)"}
C {devices/lab_pin.sym} -590 -390 0 1 {name=l34 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -610 -240 0 0 {name=l35 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -320 -320 0 0 {name=V7 value="PULSE(0 \{VIN\} 0.6u 1n 1n 0.3u 1u)"}
C {devices/lab_pin.sym} -300 -390 0 1 {name=l36 sig_type=std_logic lab=D2
}
C {devices/lab_wire.sym} -320 -240 0 0 {name=l37 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -610 -540 0 0 {name=V1 value=\{VIN\}}
C {devices/gnd.sym} -610 -490 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -610 -620 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -480 -540 0 0 {name=V2 value=0}
C {devices/gnd.sym} -480 -490 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -480 -620 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -260 -530 0 0 {name=V5 value=\{VH\}}
C {devices/gnd.sym} -260 -480 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -260 -610 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -620 -120 0 0 {name=V8 value="PULSE(0 \{VIN\} 5n 0.5u 1n 1n 0.5u 1u)"}
C {devices/lab_pin.sym} -600 -190 0 1 {name=l42 sig_type=std_logic lab=D3
}
C {devices/lab_wire.sym} -620 -40 0 0 {name=l43 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -330 -120 0 0 {name=V9 value="PULSE(0 \{VIN\} 0.1u 1n 1n 0.3u 1u)"}
C {devices/lab_pin.sym} -310 -190 0 1 {name=l44 sig_type=std_logic lab=D4
}
C {devices/lab_wire.sym} -330 -40 0 0 {name=l45 sig_type=std_logic lab=VSS}
