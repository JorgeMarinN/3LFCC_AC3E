v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -6460 -580 -6460 -540 {
lab=fc1}
N -6540 -560 -6460 -560 {
lab=fc1}
N -6460 -480 -6460 -440 {
lab=out}
N -6460 -380 -6460 -340 {
lab=fc2}
N -6540 -360 -6460 -360 {
lab=fc2}
N -6460 -280 -6460 -240 {
lab=VN}
N -6460 -680 -6460 -640 {
lab=VP}
N -6520 -510 -6500 -510 {
lab=s2}
N -6520 -410 -6500 -410 {
lab=s3}
N -6520 -610 -6500 -610 {
lab=s1}
N -6520 -310 -6500 -310 {
lab=driver4}
N -6460 -460 -6400 -460 {
lab=out}
N -6460 -510 -6440 -510 {
lab=fc1}
N -6440 -560 -6440 -510 {
lab=fc1}
N -6460 -560 -6440 -560 {
lab=fc1}
N -6460 -410 -6440 -410 {
lab=fc2}
N -6440 -410 -6440 -360 {
lab=fc2}
N -6460 -360 -6440 -360 {
lab=fc2}
N -6460 -310 -6440 -310 {
lab=VN}
N -6440 -310 -6440 -260 {
lab=VN}
N -6460 -260 -6440 -260 {
lab=VN}
N -6460 -610 -6440 -610 {
lab=VP}
N -6440 -660 -6440 -610 {
lab=VP}
N -6460 -660 -6440 -660 {
lab=VP}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -6480 -410 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -6480 -310 0 0 {name=M2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6480 -510 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6480 -610 0 0 {name=M4
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
C {devices/ipin.sym} -6520 -610 0 0 {name=p1 lab=s1}
C {devices/ipin.sym} -6520 -510 0 0 {name=p2 lab=s2}
C {devices/ipin.sym} -6520 -410 0 0 {name=p3 lab=s3}
C {devices/ipin.sym} -6520 -310 0 0 {name=p4 lab=s4
}
C {devices/iopin.sym} -6460 -680 3 0 {name=p5 lab=VP}
C {devices/iopin.sym} -6460 -240 1 0 {name=p6 lab=VN}
C {devices/opin.sym} -6400 -460 0 0 {name=p7 lab=out}
C {devices/opin.sym} -6540 -560 2 0 {name=p8 lab=fc1}
C {devices/opin.sym} -6540 -360 2 0 {name=p9 lab=fc2}
