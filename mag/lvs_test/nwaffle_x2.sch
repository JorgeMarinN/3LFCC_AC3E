v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -10 -60 20 -60 {
lab=S1}
N 60 -30 60 -0 {
lab=S}
N 60 -20 90 -20 {
lab=S}
N 90 -60 90 -20 {
lab=S}
N 60 -60 90 -60 {
lab=S}
N 60 -110 60 -90 {
lab=#net1}
N 60 -100 90 -100 {
lab=#net1}
N 90 -140 90 -100 {
lab=#net1}
N 60 -140 90 -140 {
lab=#net1}
N -10 -140 20 -140 {
lab=S2}
N 60 -200 60 -170 {
lab=Vout}
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
C {devices/iopin.sym} 60 -190 3 0 {name=p2 lab=Vout}
C {devices/iopin.sym} 60 -10 1 0 {name=p3 lab=GND}
C {devices/iopin.sym} 0 -60 2 0 {name=p1 lab=S1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 -140 0 0 {name=M2
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
C {devices/iopin.sym} 0 -140 2 0 {name=p4 lab=S2}
