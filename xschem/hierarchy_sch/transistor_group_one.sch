v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -6410 -520 -6410 -480 {
lab=fc1}
N -6410 -450 -6390 -450 {
lab=fc1}
N -6390 -500 -6390 -450 {
lab=fc1}
N -6410 -500 -6390 -500 {
lab=fc1}
N -6410 -550 -6390 -550 {
lab=VP}
N -6390 -600 -6390 -550 {
lab=VP}
N -6410 -600 -6390 -600 {
lab=VP}
N -6480 -500 -6410 -500 {
lab=fc1}
N -6410 -660 -6410 -580 {
lab=VP}
N -6410 -420 -6410 -370 {
lab=xxx}
N -6480 -550 -6450 -550 {
lab=s1}
N -6480 -450 -6450 -450 {
lab=s2}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6430 -450 0 0 {name=M3
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -6430 -550 0 0 {name=M4
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
C {devices/iopin.sym} -6410 -660 3 0 {name=p1 lab=VP
}
C {devices/ipin.sym} -6480 -550 0 0 {name=p2 lab=s1}
C {devices/ipin.sym} -6480 -450 0 0 {name=p3 lab=s2
}
C {devices/opin.sym} -6480 -500 2 0 {name=p4 lab=fc1
}
C {devices/iopin.sym} -6410 -370 1 0 {name=p5 lab=out}
