v {xschem version=3.1.0 file_version=1.2
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
N 160 -320 160 -260 {
lab=V_CFTOP}
N 160 -320 310 -320 {
lab=V_CFTOP}
N 160 -200 160 -140 {
lab=V_CFBOT}
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
N -910 -750 -910 -740 {
lab=D1_s}
N -910 -750 -900 -750 {
lab=D1_s}
N -910 -680 -910 -670 {
lab=VSS}
N -920 -670 -910 -670 {
lab=VSS}
N -910 -660 -910 -650 {
lab=D2_s}
N -910 -660 -900 -660 {
lab=D2_s}
N -910 -590 -910 -580 {
lab=VSS}
N -920 -580 -910 -580 {
lab=VSS}
N -910 -570 -910 -560 {
lab=D2_N_s}
N -910 -570 -900 -570 {
lab=D2_N_s}
N -910 -500 -910 -490 {
lab=VSS}
N -920 -490 -910 -490 {
lab=VSS}
N -910 -480 -910 -470 {
lab=D1_N_s}
N -910 -480 -900 -480 {
lab=D1_N_s}
N -910 -410 -910 -400 {
lab=VSS}
N -920 -400 -910 -400 {
lab=VSS}
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
wrdata /foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/DCDC_5V_FINAL/3LFCC_v1p4_LSH2_jm.txt tran.v(vout_core) tran.i(v3)


**plot v(d1top_5v) v(d2_5v)
**plot v(d2bot_5v) v(d1bot_5v)
plot v(v_cftop,v_cfbot) v(vout_core)
plot v(D1,VH) v(D1_N,VSS)
plot v(D2,V_CFTOP) v(D2_N,V_CFBOT)
plot  v(vout_core)
plot i(v3) v(D1,VH) v(D1_N,VSS) 
plot i(v3) v(D2,V_CFTOP) v(D2_N,V_CFBOT)
**plot i(v1) 
plot i(v3) v(v_cftop,v_cfbot)
**plot @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
plot v(v_out_ls1) v(d1_n)
plot v(v_out_ls2) v(d2_n,v_cfbot)


*plot v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(v_cftop,v_cfbot) v(vout)
*plot v(v_cftop,v_cfbot) v(vout)
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
C {/foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/power_stage.sym} 210 -240 0 0 {name=X2}
C {devices/capa.sym} 160 -230 0 0 {name=Cext
m=1
value=720n
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/Driver_UCU/sch/LS_FINAL.sym} -280 -320 0 0 {name=x1}
C {devices/vsource.sym} -920 -240 0 0 {name=V8 value=\{VDIG\}}
C {devices/gnd.sym} -920 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -920 -320 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -460 -340 2 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -70 -380 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -360 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {/foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/Driver_UCU/sch/LS_FINAL.sym} -280 -450 0 0 {name=x3}
C {devices/lab_pin.sym} -460 -470 2 1 {name=l1 sig_type=std_logic lab=D2_N_s
}
C {devices/lab_wire.sym} -70 -510 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -490 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_wire.sym} -900 -750 0 1 {name=l11 sig_type=std_logic lab=D1_s}
C {devices/vsource.sym} -910 -530 0 0 {name=V6 value="PULSE(0 1.8 166n 0.1n 0.1n 333n 1000n)"}
C {devices/vsource.sym} -910 -620 0 0 {name=V5 value="PULSE(0 1.8 166n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_wire.sym} -900 -660 0 1 {name=l43 sig_type=std_logic lab=D2_s}
C {devices/lab_pin.sym} -900 -570 0 1 {name=l44 sig_type=std_logic lab=D2_N_s
}
C {devices/vsource.sym} -910 -440 0 0 {name=V7 value="PULSE(0 1.8 666n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -900 -480 0 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -920 -400 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -670 0 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -580 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -920 -490 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -910 -710 0 0 {name=V1 value="PULSE(0 1.8 666n 0.1n 0.1n 333n 1000n)"}
C {devices/lab_pin.sym} -90 -300 0 1 {name=l14 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} -90 -430 0 1 {name=l44 sig_type=std_logic lab=D2_N
}
C {/foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/Driver_UCU/sch/LS_FINAL.sym} -280 -590 0 0 {name=x4}
C {devices/lab_pin.sym} -460 -610 2 1 {name=l1 sig_type=std_logic lab=D2_s
}
C {devices/lab_wire.sym} -70 -650 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -630 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -90 -570 0 1 {name=l44 sig_type=std_logic lab=D2
}
C {/foss/designs/3LFCC_AC3E/xschem/hierarchy_sch/Driver_UCU/sch/LS_FINAL.sym} -280 -730 0 0 {name=x5}
C {devices/lab_pin.sym} -460 -750 2 1 {name=l1 sig_type=std_logic lab=D1_s
}
C {devices/lab_wire.sym} -70 -790 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -110 -770 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -90 -710 0 1 {name=l44 sig_type=std_logic lab=D1
}
