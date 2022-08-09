v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -220 100 -170 {
lab=#net1}
N 30 -250 60 -250 {
lab=IN}
N 30 -250 30 -140 {
lab=IN}
N 30 -140 60 -140 {
lab=IN}
N 0 -190 30 -190 {
lab=IN}
N 100 -310 100 -280 {
lab=vdd}
N 100 -110 100 -80 {
lab=GND}
N 100 -140 120 -140 {
lab=GND}
N 120 -140 120 -80 {
lab=GND}
N 100 -250 120 -250 {
lab=vdd}
N 120 -310 120 -250 {
lab=vdd}
N 420 -410 720 -410 {
lab=VH}
N 720 -410 720 -380 {
lab=VH}
N 420 -410 420 -380 {
lab=VH}
N 570 -410 570 -380 {
lab=VH}
N 420 -320 420 -220 {
lab=#net2}
N 570 -320 570 -220 {
lab=#net3}
N 720 -320 720 -220 {
lab=#net4}
N 400 -410 400 -350 {
lab=VH}
N 400 -410 420 -410 {
lab=VH}
N 570 -350 590 -350 {
lab=VH}
N 590 -410 590 -350 {
lab=VH}
N 720 -350 740 -350 {
lab=VH}
N 740 -410 740 -350 {
lab=VH}
N 720 -410 740 -410 {
lab=VH}
N 460 -350 470 -350 {
lab=#net3}
N 470 -350 470 -290 {
lab=#net3}
N 470 -290 570 -290 {
lab=#net3}
N 230 -190 380 -190 {
lab=#net1}
N 420 -160 420 -130 {
lab=GND}
N 420 -130 720 -130 {
lab=GND}
N 720 -160 720 -130 {
lab=GND}
N 570 -160 570 -130 {
lab=GND}
N 420 -190 440 -190 {
lab=GND}
N 440 -190 440 -130 {
lab=GND}
N 550 -190 570 -190 {
lab=GND}
N 550 -190 550 -130 {
lab=GND}
N 720 -190 740 -190 {
lab=GND}
N 740 -190 740 -130 {
lab=GND}
N 720 -130 740 -130 {
lab=GND}
N 520 -350 530 -350 {
lab=#net2}
N 520 -350 520 -270 {
lab=#net2}
N 420 -270 520 -270 {
lab=#net2}
N 420 -250 660 -250 {
lab=#net2}
N 660 -350 660 -250 {
lab=#net2}
N 660 -350 680 -350 {
lab=#net2}
N 610 -190 680 -190 {
lab=IN}
N 150 -10 660 -10 {
lab=IN}
N 660 -190 660 -10 {
lab=IN}
N 500 -130 500 -100 {
lab=GND}
N 400 -350 420 -350 {
lab=VH}
N 100 -190 150 -190 {
lab=#net1}
N 100 -310 120 -310 {
lab=vdd}
N 100 -80 120 -80 {
lab=GND}
N 30 -10 150 -10 {
lab=IN}
N 30 -140 30 -10 {
lab=IN}
N 150 -190 230 -190 {
lab=#net1}
N 720 -270 830 -270 {
lab=#net4}
N 110 -320 110 -310 {
lab=vdd}
N 480 -420 480 -410 {
lab=VH}
N 890 -400 890 -370 {
lab=VH}
N 890 -310 890 -210 {
lab=OUT}
N 890 -340 910 -340 {
lab=VH}
N 910 -400 910 -340 {
lab=VH}
N 890 -400 910 -400 {
lab=VH}
N 890 -150 890 -120 {
lab=GND}
N 890 -180 910 -180 {
lab=GND}
N 910 -180 910 -120 {
lab=GND}
N 890 -120 910 -120 {
lab=GND}
N 830 -340 830 -240 {
lab=#net4}
N 830 -340 850 -340 {
lab=#net4}
N 890 -250 920 -250 {
lab=OUT}
N 830 -230 830 -180 {
lab=#net4}
N 830 -240 830 -230 {
lab=#net4}
N 830 -180 850 -180 {
lab=#net4}
N 740 -410 890 -410 {
lab=VH}
N 890 -410 890 -400 {
lab=VH}
C {sky130_fd_pr/pfet_01v8.sym} 80 -250 0 0 {name=M11
L=0.15
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 80 -140 0 0 {name=M12
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 440 -350 0 1 {name=M15
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 550 -350 0 0 {name=M14
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 700 -350 0 0 {name=M16
L=0.5
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 400 -190 0 0 {name=M18
L=0.5
W=12
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 590 -190 0 1 {name=M13
L=0.5
W=12
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 700 -190 0 0 {name=M17
L=0.5
W=10
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 120 -80 0 0 {name=l6 lab=GND}
C {devices/ipin.sym} 0 -190 0 0 {name=p3 lab=IN}
C {devices/gnd.sym} 500 -100 0 0 {name=l7 lab=GND}
C {devices/iopin.sym} 110 -320 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 480 -420 3 0 {name=p1 lab=VH}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 870 -340 0 0 {name=M7
L=0.5
W=10
nf=1
mult=\{multip\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 870 -180 0 0 {name=M10
L=0.5
W=10
nf=1
mult=\{multip\}
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/opin.sym} 920 -250 0 0 {name=p2 lab=OUT}
C {devices/gnd.sym} 890 -120 0 0 {name=l1 lab=GND}
C {devices/netlist_not_shown.sym} 1020 -210 0 0 {*name=s1 only_toplevel=false value=
*"
* Parameters

*.PARAM BAT=1.8
.PARAM W12=12 W45=2 LLS=0.5 multip=40
*.option scale=1e-6
*.options TEMP = 65.0

* Models
*.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT

*Fuentes******
*VBAT VDD 0 DC BAT
*VHIGH VH 0 DC 5
*vin IN 0 dc 0 PULSE (0 BAT .1n .1n .1n 10n 20n)

*COUT OUT 0 20p


*.options savecurrents
*.save all
*+ @M.XM12.msky130_fd_pr_nfet_01v8[id]

*.control
*tran 0.1n 100n
*plot v(IN) v(LS1) v(OUT) v(net6) i(@M.XM12.msky130_fd_pr_nfet_01v8[id])
*write LS_FINAL.raw
*.endc
*.end
*"}
