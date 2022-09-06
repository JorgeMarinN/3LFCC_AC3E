v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -6320 -500 -6280 -500 {
lab=s2}
N -6300 -540 -6260 -540 {
lab=fc1}
N -6320 -580 -6280 -580 {
lab=s1}
N -6240 -650 -6240 -610 {
lab=VP}
N -6240 -440 -6140 -440 {
lab=out}
N -6320 -380 -6280 -380 {
lab=s3}
N -6300 -340 -6260 -340 {
lab=fc2}
N -6320 -300 -6280 -300 {
lab=s4}
N -6240 -270 -6240 -230 {
lab=VN}
N -6260 -540 -6240 -540 {
lab=fc1}
N -6240 -500 -6220 -500 {
lab=fc1}
N -6240 -580 -6220 -580 {
lab=VP}
N -6220 -620 -6220 -580 {
lab=VP}
N -6240 -620 -6220 -620 {
lab=VP}
N -6220 -540 -6220 -500 {
lab=fc1}
N -6240 -540 -6220 -540 {
lab=fc1}
N -6240 -550 -6240 -530 {
lab=fc1}
N -6240 -350 -6240 -330 {
lab=fc2}
N -6260 -340 -6240 -340 {
lab=fc2}
N -6240 -340 -6220 -340 {
lab=fc2}
N -6220 -380 -6220 -340 {
lab=fc2}
N -6240 -380 -6220 -380 {
lab=fc2}
N -6240 -470 -6240 -410 {
lab=out}
N -6240 -260 -6220 -260 {
lab=VN}
N -6220 -300 -6220 -260 {
lab=VN}
N -6240 -300 -6220 -300 {
lab=VN}
C {devices/ipin.sym} -6320 -580 0 0 {name=p1 lab=s1}
C {devices/ipin.sym} -6320 -500 0 0 {name=p2 lab=s2}
C {devices/ipin.sym} -6320 -380 0 0 {name=p3 lab=s3}
C {devices/ipin.sym} -6320 -300 0 0 {name=p4 lab=s4
}
C {devices/iopin.sym} -6240 -650 3 0 {name=p5 lab=VP}
C {devices/iopin.sym} -6240 -230 1 0 {name=p6 lab=VN}
C {devices/opin.sym} -6140 -440 0 0 {name=p7 lab=out}
C {devices/opin.sym} -6300 -540 2 0 {name=p8 lab=fc1}
C {devices/opin.sym} -6300 -340 2 0 {name=p9 lab=fc2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -6260 -380 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6260 -500 0 0 {name=M2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6260 -580 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -6260 -300 0 0 {name=M4
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
