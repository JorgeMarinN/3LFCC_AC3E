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
C {transistor_group_one.sym} -6520 -490 0 0 {name=X1v \{xschem version=3.0.0 file_version=1.2 \}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=X1"\}
V \{\}
S \{\}
E \{\}
L 4 140 -220 140 -20 \{\}
L 4 140 -20 440 -20 \{\}
L 4 440 -220 440 -20 \{\}
L 4 140 -220 440 -220 \{\}
L 4 100 -180 140 -180 \{\}
L 4 100 -120 140 -120 \{\}
L 4 100 -60 140 -60 \{\}
L 4 280 -260 280 -220 \{\}
L 4 280 -20 280 20 \{\}
B 5 97.5 -62.5 102.5 -57.5 \{name=s2
dir=inout\}
B 5 97.5 -122.5 102.5 -117.5 \{name=fc1
dir=inout\}
B 5 97.5 -182.5 102.5 -177.5 \{name=s1
dir=inout\}
B 5 277.5 -262.5 282.5 -257.5 \{name=VP
dir=inout\}
B 5 277.5 17.5 282.5 22.5 \{name=out
dir=inout\}
T \{VP
\} 270 -210 0 0 0.35 0.35 \{\}
T \{s1\} 150 -190 0 0 0.35 0.35 \{\}
T \{fc1
\} 150 -130 0 0 0.35 0.35 \{\}
T \{s2\} 150 -70 0 0 0.35 0.35 \{\}
T \{out\} 270 -50 0 0 0.35 0.35 \{\}
T \{transistor_group_one\} 210 -130 0 0 0.4 0.4 \{\}
}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/transistor_group_two.sym} -6440 -100 0 0 {name=X2}
