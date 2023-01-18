v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 3860 -340 4120 -340 {
lab=io_analog[8]}
N 4020 -280 4020 -260 {
lab=io_analog[2]}
N 4060 -340 4060 -280 {
lab=io_analog[8]}
N 4060 -220 4060 -200 {
lab=io_analog[3]}
N 4100 -340 4100 -220 {
lab=io_analog[8]}
N 4100 -160 4100 -140 {
lab=io_analog[7]}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} 3640 0 3 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 4200 -440 0 0 {name=l2 sig_type=std_logic lab=vssa1}
C {devices/lab_pin.sym} 4200 -400 0 1 {name=l10 sig_type=std_logic lab=gpio_noesd[7]}
C {sky130_fd_pr/res_generic_m1.sym} 4020 -310 0 0 {name=R1
W=2.55e+07u
L=1e+06u
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4060 -250 0 0 {name=R2
W=2.55e+07u
L=1e+06u
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 4100 -190 0 0 {name=R4
W=2.55e+07u
L=1e+06u
model=res_generic_m3
mult=1}
C {interleaved.sym} 3560 60 0 0 {name=X1}
C {devices/lab_pin.sym} 3540 -380 2 1 {name=l9 sig_type=std_logic lab=io_in[20]}
C {devices/lab_pin.sym} 3540 -340 2 1 {name=l9 sig_type=std_logic lab=io_in[19]}
C {devices/lab_pin.sym} 3540 -300 2 1 {name=l9 sig_type=std_logic lab=io_in[18]}
C {devices/lab_pin.sym} 3540 -260 2 1 {name=l9 sig_type=std_logic lab=io_in[17]}
C {devices/lab_pin.sym} 3540 -180 2 1 {name=l9 sig_type=std_logic lab=io_in[7]}
C {devices/lab_pin.sym} 3540 -140 2 1 {name=l9 sig_type=std_logic lab=io_in[8]}
C {devices/lab_pin.sym} 3540 -100 2 1 {name=l9 sig_type=std_logic lab=io_in[9]}
C {devices/lab_pin.sym} 3540 -60 2 1 {name=l9 sig_type=std_logic lab=io_in[10]}
C {devices/lab_pin.sym} 4100 -140 3 0 {name=l5 sig_type=std_logic lab=io_analog[7]}
C {devices/lab_pin.sym} 4020 -260 3 0 {name=l5 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 3860 -260 2 0 {name=l5 sig_type=std_logic lab=io_analog[6]}
C {devices/lab_pin.sym} 3860 -180 2 0 {name=l5 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 3540 -220 2 1 {name=l3 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 4060 -200 3 0 {name=l5 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4120 -340 2 0 {name=l5 sig_type=std_logic lab=io_analog[8]}
C {devices/lab_pin.sym} 3860 -100 2 0 {name=l5 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 3640 -440 1 0 {name=l1 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 3720 0 3 0 {name=l5 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 3780 0 3 0 {name=l5 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_pin.sym} 3720 -440 1 0 {name=l5 sig_type=std_logic lab=io_analog[9]}
C {devices/lab_pin.sym} 3780 -440 1 0 {name=l5 sig_type=std_logic lab=io_analog[10]}
