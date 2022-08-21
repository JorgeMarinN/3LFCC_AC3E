v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 420 -120 420 -50 {
lab=#net1}
N 480 -120 480 -50 {
lab=#net2}
N 260 -280 300 -280 {
lab=s1}
N 260 -250 300 -250 {
lab=s2}
N 260 -220 300 -220 {
lab=s3}
N 260 -190 300 -190 {
lab=s4}
N 600 -270 650 -270 {
lab=VP}
N 600 -230 650 -230 {
lab=out}
N 600 -190 650 -190 {
lab=xxx}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/power_stage.sym} 200 -20 0 0 {name=X1}
C {devices/capa.sym} 450 -50 3 0 {name=CFLY
m=1
value=6.8n
footprint=1206
device="ceramic capacitor"}
C {devices/ipin.sym} 260 -280 0 0 {name=p1 lab=s1}
C {devices/ipin.sym} 260 -250 0 0 {name=p2 lab=s2}
C {devices/ipin.sym} 260 -220 0 0 {name=p3 lab=s3}
C {devices/ipin.sym} 260 -190 0 0 {name=p4 lab=s4}
C {devices/iopin.sym} 650 -270 0 0 {name=p5 lab=VP}
C {devices/iopin.sym} 650 -190 0 0 {name=p6 lab=VN}
C {devices/opin.sym} 650 -230 0 0 {name=p7 lab=out}
