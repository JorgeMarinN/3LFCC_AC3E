v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -260 40 -260 {
lab=VDD}
N 0 220 40 220 {
lab=VDD}
N 400 -210 440 -210 {
lab=VH}
N 400 -160 440 -160 {
lab=Vout1}
N 400 -110 440 -110 {
lab=GND}
N 400 370 440 370 {
lab=GND}
N 0 -210 40 -210 {
lab=D1}
N -0 -160 40 -160 {
lab=D2}
N 0 -110 40 -110 {
lab=D3}
N 0 -60 40 -60 {
lab=D4}
N 0 270 40 270 {
lab=D5}
N 0 320 40 320 {
lab=D6}
N 0 370 40 370 {
lab=D7}
N 0 420 40 420 {
lab=D8}
N 600 -210 640 -210 {
lab=VH}
N 600 -160 640 -160 {
lab=Vout1}
N 600 -110 640 -110 {
lab=GND}
N 440 -110 510 -110 {
lab=GND}
N 440 -110 440 210 {
lab=GND}
N 440 -160 480 -160 {
lab=Vout1}
N 480 -160 550 -160 {
lab=Vout1}
N 400 320 480 320 {
lab=Vout2}
N 400 270 520 270 {
lab=VH}
N 550 -160 600 -160 {
lab=Vout1}
N 440 -210 600 -210 {
lab=VH}
N 520 -210 520 -130 {
lab=VH}
N 520 -130 520 -80 {
lab=VH}
N 510 -110 600 -110 {
lab=GND}
N 520 -80 520 110 {
lab=VH}
N -60 220 0 220 {
lab=VDD}
N -60 -260 -60 60 {
lab=VDD}
N -60 -260 0 -260 {
lab=VDD}
N -100 -260 -60 -260 {
lab=VDD}
N 480 320 640 320 {
lab=Vout2}
N 520 110 520 270 {
lab=VH}
N 440 220 440 370 {
lab=GND}
N 440 210 440 220 {
lab=GND}
N -60 60 -60 220 {
lab=VDD}
C {core.sym} -20 420 0 0 {name=X1}
C {core.sym} -20 -60 0 0 {name=X2}
C {devices/ipin.sym} 0 -210 0 0 {name=p1 lab=D1}
C {devices/ipin.sym} 0 -160 0 0 {name=p2 lab=D2}
C {devices/ipin.sym} 0 -110 0 0 {name=p3 lab=D3}
C {devices/ipin.sym} 0 -60 0 0 {name=p4 lab=D4}
C {devices/ipin.sym} 0 270 0 0 {name=p5 lab=D5}
C {devices/ipin.sym} 0 320 0 0 {name=p6 lab=D6}
C {devices/ipin.sym} 0 370 0 0 {name=p7 lab=D7}
C {devices/ipin.sym} 0 420 0 0 {name=p8 lab=D8}
C {devices/iopin.sym} 640 -210 0 0 {name=p9 lab=VH}
C {devices/iopin.sym} 640 -110 0 0 {name=p10 lab=GND}
C {devices/opin.sym} 640 -160 0 0 {name=p11 lab=Vout1}
C {devices/ipin.sym} -90 -260 0 0 {name=p12 lab=VDD}
C {devices/opin.sym} 640 320 0 0 {name=p11 lab=Vout2
}
C {devices/iopin.sym} 180 30 1 0 {name=p10 lab=fc1_1}
C {devices/iopin.sym} 220 -350 3 0 {name=p10 lab=VLS1}
C {devices/iopin.sym} 220 130 3 0 {name=p10 lab=VLS2}
C {devices/iopin.sym} 260 30 1 0 {name=p10 lab=fc1_2}
C {devices/iopin.sym} 180 510 1 0 {name=p10 lab=fc2_1}
C {devices/iopin.sym} 260 510 1 0 {name=p10 lab=fc2_2}
