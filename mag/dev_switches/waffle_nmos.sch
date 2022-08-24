v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -120 60 -90 {
lab=D}
N -10 -60 20 -60 {
lab=G}
N 60 -30 60 -0 {
lab=S}
N 60 -20 90 -20 {
lab=S}
N 90 -60 90 -20 {
lab=S}
N 60 -60 90 -60 {}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 -60 0 0 {name=M1
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
C {devices/iopin.sym} 60 -110 3 0 {name=p2 lab=D}
C {devices/iopin.sym} 60 -10 1 0 {name=p3 lab=S}
C {devices/iopin.sym} 0 -60 2 0 {name=p1 lab=G}
