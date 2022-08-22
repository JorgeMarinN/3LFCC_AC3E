v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -6460 -550 -6420 -550 {
lab=s2}
N -6460 -610 -6420 -610 {
lab=fc1}
N -6460 -670 -6420 -670 {
lab=s1}
N -6240 -790 -6240 -750 {
lab=VP}
N -6240 -470 -6240 -400 {
lab=out}
N -6240 -440 -6140 -440 {
lab=out}
N -6460 -320 -6420 -320 {
lab=s3}
N -6460 -260 -6420 -260 {
lab=fc2}
N -6460 -200 -6420 -200 {
lab=s4}
N -6240 -120 -6240 -80 {
lab=VN}
C {devices/ipin.sym} -6460 -670 0 0 {name=p1 lab=s1}
C {devices/ipin.sym} -6460 -550 0 0 {name=p2 lab=s2}
C {devices/ipin.sym} -6460 -320 0 0 {name=p3 lab=s3}
C {devices/ipin.sym} -6460 -200 0 0 {name=p4 lab=s4
}
C {devices/iopin.sym} -6240 -790 3 0 {name=p5 lab=VP}
C {devices/iopin.sym} -6240 -80 1 0 {name=p6 lab=VN}
C {devices/opin.sym} -6140 -440 0 0 {name=p7 lab=out}
C {devices/opin.sym} -6460 -610 2 0 {name=p8 lab=fc1}
C {devices/opin.sym} -6460 -260 2 0 {name=p9 lab=fc2}
C {personal/3LFCC_AC3E/xschem/release/pmos_x2.sym} -6520 -490 0 0 {name=X1}
C {personal/3LFCC_AC3E/xschem/release/nmos_x2.sym} -6440 -100 0 0 {name=X2}
