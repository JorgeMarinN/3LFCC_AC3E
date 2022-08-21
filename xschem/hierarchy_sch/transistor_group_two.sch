v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -180 100 -140 {
lab=xxx}
N 100 -210 120 -210 {
lab=xxx}
N 120 -210 120 -160 {
lab=xxx}
N 100 -160 120 -160 {
lab=xxx}
N 100 -110 120 -110 {
lab=VN}
N 120 -110 120 -60 {
lab=VN}
N 100 -60 120 -60 {
lab=VN}
N 100 -280 100 -240 {
lab=out}
N 20 -210 60 -210 {
lab=s3}
N 20 -160 100 -160 {
lab=xxx}
N 20 -110 60 -110 {
lab=s4}
N 100 -80 100 -20 {
lab=VN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 -210 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 -110 0 0 {name=M2
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
C {devices/iopin.sym} 100 -280 3 0 {name=p1 lab=out
}
C {devices/ipin.sym} 20 -210 0 0 {name=p2 lab=s3}
C {devices/ipin.sym} 20 -110 0 0 {name=p3 lab=s4}
C {devices/opin.sym} 20 -160 2 0 {name=p4 lab=fc2}
C {devices/iopin.sym} 100 -20 1 0 {name=p5 lab=VN}
