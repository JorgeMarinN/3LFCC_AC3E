v {xschem version=3.0.0 file_version=1.2 
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
N -830 -210 -830 -190 { lab=GND}
N -830 -320 -830 -270 { lab=VSS}
N -750 -210 -750 -190 { lab=GND}
N -750 -320 -750 -270 { lab=VH}
N 260 -500 310 -500 {
lab=D1}
N 260 -470 310 -470 {
lab=D2}
N 260 -440 310 -440 {
lab=D2_N}
N 260 -410 310 -410 {
lab=D1_N}
N 430 -340 430 -330 {
lab=V_CFTOP}
N 710 -450 770 -450 {
lab=VOUT_CORE}
N 830 -450 880 -450 {
lab=VOUT_CORE}
N 610 -450 680 -450 {
lab=VOUT_CORE}
N 610 -490 640 -490 {
lab=VH}
N 610 -410 640 -410 {
lab=VSS}
N 770 -450 830 -450 {
lab=VOUT_CORE}
N 830 -360 830 -320 {
lab=VSS}
N 830 -450 830 -420 {
lab=VOUT_CORE}
N 680 -450 710 -450 {
lab=VOUT_CORE}
N 410 -330 430 -330 {
lab=V_CFTOP}
N 410 -330 410 -230 {
lab=V_CFTOP}
N 410 -170 410 -140 {
lab=V_CFBOT}
N 410 -140 520 -140 {
lab=V_CFBOT}
N 520 -340 520 -140 {
lab=V_CFBOT}
N 490 -340 520 -340 {
lab=V_CFBOT}
N 310 -320 310 -290 {
lab=V_CFTOP}
N 310 -320 410 -320 {
lab=V_CFTOP}
N 310 -230 310 -140 {
lab=V_CFBOT}
N 310 -140 410 -140 {
lab=V_CFBOT}
N 160 -320 310 -320 {
lab=V_CFTOP}
N 160 -140 310 -140 {
lab=V_CFBOT}
N -920 -210 -920 -190 { lab=GND}
N -920 -320 -920 -270 { lab=VDIG}
N -460 -340 -430 -340 {
lab=D1_N_s}
N -130 -320 -70 -320 {
lab=VDIG}
N -70 -380 -70 -320 {
lab=VDIG}
N -130 -340 -110 -340 {
lab=VH}
N -110 -360 -110 -340 {
lab=VH}
N -130 -300 -90 -300 {
lab=D1_N}
N -460 -470 -430 -470 {
lab=D2_N_s}
N -130 -450 -70 -450 {
lab=VDIG}
N -70 -510 -70 -450 {
lab=VDIG}
N -130 -470 -110 -470 {
lab=VH}
N -110 -490 -110 -470 {
lab=VH}
N -130 -430 -90 -430 {
lab=D2_N}
N -460 -610 -430 -610 {
lab=D2_s}
N -130 -590 -70 -590 {
lab=VDIG}
N -70 -650 -70 -590 {
lab=VDIG}
N -130 -610 -110 -610 {
lab=VH}
N -110 -630 -110 -610 {
lab=VH}
N -130 -570 -90 -570 {
lab=D2}
N -460 -750 -430 -750 {
lab=D1_s}
N -130 -730 -70 -730 {
lab=VDIG}
N -70 -790 -70 -730 {
lab=VDIG}
N -130 -750 -110 -750 {
lab=VH}
N -110 -770 -110 -750 {
lab=VH}
N -130 -710 -90 -710 {
lab=D1}
N -910 -790 -910 -780 {
lab=D1_s}
N -910 -790 -900 -790 {
lab=D1_s}
N -910 -720 -910 -710 {
lab=VSS}
N -920 -710 -910 -710 {
lab=VSS}
N -910 -700 -910 -690 {
lab=D2_s}
N -910 -700 -900 -700 {
lab=D2_s}
N -910 -630 -910 -620 {
lab=VSS}
N -920 -620 -910 -620 {
lab=VSS}
N -910 -610 -910 -600 {
lab=D2_N_s}
N -910 -610 -900 -610 {
lab=D2_N_s}
N -910 -540 -910 -530 {
lab=VSS}
N -920 -530 -910 -530 {
lab=VSS}
N -910 -520 -910 -510 {
lab=D1_N_s}
N -910 -520 -900 -520 {
lab=D1_N_s}
N -910 -450 -910 -440 {
lab=VSS}
N -920 -440 -910 -440 {
lab=VSS}
N 160 -320 160 -280 {
lab=V_CFTOP}
N 160 -220 160 -140 {
lab=V_CFBOT}
C {devices/vsource.sym} -830 -240 0 0 {name=V2 value=0}
C {devices/gnd.sym} -830 -190 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -830 -320 0 0 {name=l10 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VDIG = 1.8
.param VH = 5
.param RL = 50
.option scale=1e-6
*.option temp=70
.ic v(V_CFTOP) = VH/2
.ic v(vout_core)=0
.ic v(V_CFBOT) = 0
*.probe vd(MP2:G:S)
*.save all
*.save v(d1) v(d2) v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(vout) v(vout_core) v(vdd) v(vh) i(v1) i(v5) i(vmeas) v(v_cftop,v_cfbot)
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT_CORE) v(vh) i(v3) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS) v(v_out_ls1) v(v_out_ls2) v(d2_n,v_cfbot)
.save @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
.param mc_mm_switch=0
*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
*save all
tran 100n 3u
*write DCDC_v1p4_5MHz_NMOS_PMOS.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v3) tran.v(vh) tran.i(v5)
*wrdata /foss/designs/personal/3LFCC_AC3E/xschem/hierarchy_sch/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout_core) tran.i(v1)
wrdata /foss/designs/personal/3LFCC_AC3E/xschem/testbench/interleaved/3LFCC_v1p5_jm.txt tran.v(vout_core) tran.i(v3)

*Relación D1 D2 para combinar estados
plot v(D1) v(D2)	v(v_cftop,v_cfbot)
*plot v(D1_N) v(D2_N)

*Relación Pulso P y N para acondicionar tiempos muertos (reducir peaks)
plot v(D1) v(D1_N) v(v_cftop,v_cfbot)
plot v(D2) v(D2_N) i(v3)
*plot v(D1) v(D1_N)	 v(D2) v(D2_N) i(v3) v(v_cftop,v_cfbot)


*Revisión de estados del convertidor en base a señal de Flycap (caso Cap_ext omitido para ver bien formas de onda de flycap)
*plot v(v_cftop,v_cfbot) v(vout_core) i(v3)

*plot v(v_cftop,v_cfbot) v(D1) v(D2)
*plot v(v_cftop,v_cfbot) v(D2) v(D2_N)
*plot v(v_cftop,v_cfbot) v(D1) v(D1_N)
*plot v(v_cftop,v_cfbot) v(vout_core) 

**Problema actual, eficiencia no se logra calcular debido a que no transicionan bien todo los estados, (Cuando el Flycap esta flotante no esta consumiendo energía, es decir la carga no esta conectada a la fuente de entrada...)
** Si bien D1- D1_N y D2- D2_N estan con sus respectivos tiempos muertos (redución de peaks), falta sincronizar bien D1 con D2 para lograr la conexión correcta para que la carga se conecte a la fuente en estado de flycap flotante.

.endc
"}
C {devices/vsource.sym} -750 -240 0 0 {name=V3 value=\{VH\}}
C {devices/gnd.sym} -750 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -750 -320 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 260 -500 0 0 {name=l18 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 260 -470 0 0 {name=l20 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 260 -440 0 0 {name=l25 sig_type=std_logic lab=D2_N}
C {devices/lab_wire.sym} 260 -410 0 0 {name=l26 sig_type=std_logic lab=D1_N}
C {devices/lab_wire.sym} 310 -320 0 0 {name=l27 sig_type=std_logic lab=V_CFTOP}
C {devices/lab_wire.sym} 310 -140 0 0 {name=l28 sig_type=std_logic lab=V_CFBOT}
C {devices/lab_wire.sym} 680 -450 0 1 {name=l29 sig_type=std_logic lab=VOUT_CORE}
C {devices/lab_wire.sym} 640 -490 2 0 {name=l32 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 640 -410 2 0 {name=l33 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 910 -390 0 0 {name=I0 value=0.15
}
C {devices/lab_wire.sym} 830 -320 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/res.sym} 830 -390 0 0 {name=R2
value=22
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 310 -260 0 0 {name=C1 model=cap_mim_m3_2 W=30 L=30 MF=1978 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 -200 0 0 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=1978 spiceprefix=X}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/power_stage.sym} 210 -240 0 0 {name=X2v \{xschem version=3.0.0 file_version=1.2 \}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=X1"\}
V \{\}
S \{\}
E \{\}
L 4 360 -250 400 -250 \{\}
L 4 360 -210 400 -210 \{\}
L 4 360 -170 400 -170 \{\}
L 4 140 -280 140 -140 \{\}
L 4 140 -140 360 -140 \{\}
L 4 360 -280 360 -140 \{\}
L 4 140 -280 360 -280 \{\}
L 4 220 -140 220 -100 \{\}
L 4 280 -140 280 -100 \{\}
L 4 100 -260 140 -260 \{\}
L 4 100 -230 140 -230 \{\}
L 4 100 -200 140 -200 \{\}
L 4 100 -170 140 -170 \{\}
B 5 97.5 -262.5 102.5 -257.5 \{name=s1
dir=in\}
B 5 97.5 -232.5 102.5 -227.5 \{name=s2
dir=in\}
B 5 97.5 -202.5 102.5 -197.5 \{name=s3
dir=in\}
B 5 97.5 -172.5 102.5 -167.5 \{name=s4
dir=in\}
B 5 217.5 -102.5 222.5 -97.5 \{name=fc1
dir=inout\}
B 5 277.5 -102.5 282.5 -97.5 \{name=fc2
dir=inout\}
B 5 397.5 -212.5 402.5 -207.5 \{name=out
dir=inout\}
B 5 397.5 -252.5 402.5 -247.5 \{name=VP
dir=inout\}
B 5 397.5 -172.5 402.5 -167.5 \{name=VN
dir=inout\}
T \{fc1\} 210 -170 0 0 0.35 0.35 \{\}
T \{fc2\} 270 -170 0 0 0.35 0.35 \{\}
T \{out\} 320 -220 0 0 0.35 0.35 \{\}
T \{VP\} 330 -260 0 0 0.35 0.35 \{\}
T \{VN\} 330 -180 0 0 0.35 0.35 \{\}
T \{s1\} 150 -270 0 0 0.35 0.35 \{\}
T \{s4\} 150 -180 0 0 0.35 0.35 \{\}
T \{s3\} 150 -210 0 0 0.35 0.35 \{\}
T \{s2\} 150 -240 0 0 0.35 0.35 \{\}
T \{power_stage\} 210 -240 0 0 0.25 0.25 \{\}
}
C {devices/vsource.sym} -920 -240 0 0 {name=V8 value=\{VDIG\}}
C {devices/gnd.sym} -920 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -920 -320 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -460 -340 2 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -70 -380 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -360 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -460 -470 2 1 {name=l1 sig_type=std_logic lab=D2_N_s
}
C {devices/lab_wire.sym} -70 -510 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -490 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -90 -300 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} -90 -430 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {devices/lab_pin.sym} -460 -610 2 1 {name=l1 sig_type=std_logic lab=D2_s
}
C {devices/lab_wire.sym} -70 -650 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -630 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -90 -570 0 1 {name=l44 sig_type=std_logic lab=D2
}
C {devices/lab_pin.sym} -460 -750 2 1 {name=l1 sig_type=std_logic lab=D1_s
}
C {devices/lab_wire.sym} -70 -790 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -770 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -90 -710 0 1 {name=l44 sig_type=std_logic lab=D1
}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/LS_FINAL.sym} -280 -320 0 0 {name=x1 \{xschem version=3.1.0 file_version=1.2\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}

T \{@symname\} -54 -6 0 0 0.3 0.3 \{\}
T \{@name\} 135 -42 0 0 0.2 0.2 \{\}
L 4 -130 -30 130 -30 \{\}
L 4 -130 30 130 30 \{\}
L 4 -130 -30 -130 30 \{\}
L 4 130 -30 130 30 \{\}
B 5 147.5 -22.5 152.5 -17.5 \{name=VH dir=inout \}
L 7 130 -20 150 -20 \{\}
T \{VH\} 125 -24 0 1 0.2 0.2 \{\}
B 5 147.5 -2.5 152.5 2.5 \{name=VDD dir=inout \}
L 7 130 0 150 0 \{\}
T \{VDD\} 125 -4 0 1 0.2 0.2 \{\}
B 5 147.5 17.5 152.5 22.5 \{name=OUT dir=out \}
L 4 130 20 150 20 \{\}
T \{OUT\} 125 16 0 1 0.2 0.2 \{\}
B 5 -152.5 -22.5 -147.5 -17.5 \{name=IN dir=in \}
L 4 -150 -20 -130 -20 \{\}
T \{IN\} -125 -24 0 0 0.2 0.2 \{\}
}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/LS_FINAL.sym} -280 -450 0 0 {name=x2 \{xschem version=3.1.0 file_version=1.2\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}

T \{@symname\} -54 -6 0 0 0.3 0.3 \{\}
T \{@name\} 135 -42 0 0 0.2 0.2 \{\}
L 4 -130 -30 130 -30 \{\}
L 4 -130 30 130 30 \{\}
L 4 -130 -30 -130 30 \{\}
L 4 130 -30 130 30 \{\}
B 5 147.5 -22.5 152.5 -17.5 \{name=VH dir=inout \}
L 7 130 -20 150 -20 \{\}
T \{VH\} 125 -24 0 1 0.2 0.2 \{\}
B 5 147.5 -2.5 152.5 2.5 \{name=VDD dir=inout \}
L 7 130 0 150 0 \{\}
T \{VDD\} 125 -4 0 1 0.2 0.2 \{\}
B 5 147.5 17.5 152.5 22.5 \{name=OUT dir=out \}
L 4 130 20 150 20 \{\}
T \{OUT\} 125 16 0 1 0.2 0.2 \{\}
B 5 -152.5 -22.5 -147.5 -17.5 \{name=IN dir=in \}
L 4 -150 -20 -130 -20 \{\}
T \{IN\} -125 -24 0 0 0.2 0.2 \{\}
}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/LS_FINAL.sym} -280 -590 0 0 {name=x3 \{xschem version=3.1.0 file_version=1.2\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}

T \{@symname\} -54 -6 0 0 0.3 0.3 \{\}
T \{@name\} 135 -42 0 0 0.2 0.2 \{\}
L 4 -130 -30 130 -30 \{\}
L 4 -130 30 130 30 \{\}
L 4 -130 -30 -130 30 \{\}
L 4 130 -30 130 30 \{\}
B 5 147.5 -22.5 152.5 -17.5 \{name=VH dir=inout \}
L 7 130 -20 150 -20 \{\}
T \{VH\} 125 -24 0 1 0.2 0.2 \{\}
B 5 147.5 -2.5 152.5 2.5 \{name=VDD dir=inout \}
L 7 130 0 150 0 \{\}
T \{VDD\} 125 -4 0 1 0.2 0.2 \{\}
B 5 147.5 17.5 152.5 22.5 \{name=OUT dir=out \}
L 4 130 20 150 20 \{\}
T \{OUT\} 125 16 0 1 0.2 0.2 \{\}
B 5 -152.5 -22.5 -147.5 -17.5 \{name=IN dir=in \}
L 4 -150 -20 -130 -20 \{\}
T \{IN\} -125 -24 0 0 0.2 0.2 \{\}
}
C {personal/3LFCC_AC3E/xschem/hierarchy_sch/LS_FINAL.sym} -280 -730 0 0 {name=x4 \{xschem version=3.1.0 file_version=1.2\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}

T \{@symname\} -54 -6 0 0 0.3 0.3 \{\}
T \{@name\} 135 -42 0 0 0.2 0.2 \{\}
L 4 -130 -30 130 -30 \{\}
L 4 -130 30 130 30 \{\}
L 4 -130 -30 -130 30 \{\}
L 4 130 -30 130 30 \{\}
B 5 147.5 -22.5 152.5 -17.5 \{name=VH dir=inout \}
L 7 130 -20 150 -20 \{\}
T \{VH\} 125 -24 0 1 0.2 0.2 \{\}
B 5 147.5 -2.5 152.5 2.5 \{name=VDD dir=inout \}
L 7 130 0 150 0 \{\}
T \{VDD\} 125 -4 0 1 0.2 0.2 \{\}
B 5 147.5 17.5 152.5 22.5 \{name=OUT dir=out \}
L 4 130 20 150 20 \{\}
T \{OUT\} 125 16 0 1 0.2 0.2 \{\}
B 5 -152.5 -22.5 -147.5 -17.5 \{name=IN dir=in \}
L 4 -150 -20 -130 -20 \{\}
T \{IN\} -125 -24 0 0 0.2 0.2 \{\}
}
C {devices/lab_wire.sym} -900 -790 0 1 {name=l11 sig_type=std_logic lab=D1_s}
C {devices/vsource.sym} -910 -570 0 0 {name=V6 value="PULSE(0 1.8 176n 1n 2.5n 316n 1000n)"}
C {devices/vsource.sym} -910 -660 0 0 {name=V5 value="PULSE(0 1.8 166n 1n 2.5n 333n 1000n)"}
C {devices/lab_wire.sym} -900 -700 0 1 {name=l43 sig_type=std_logic lab=D2_s}
C {devices/lab_pin.sym} -900 -610 0 1 {name=l2 sig_type=std_logic lab=D2_N_s
}
C {devices/vsource.sym} -910 -480 0 0 {name=V7 value="PULSE(0 1.8 676n 1n 2.5n 313n 1000n)"}
C {devices/lab_pin.sym} -900 -520 0 1 {name=l3 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -920 -440 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -710 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -620 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -530 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -910 -750 0 0 {name=V1 value="PULSE(1.8 0 10n 1n 2.5n 646n 1000n)"}
C {devices/capa.sym} 160 -250 0 0 {name=C3
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
