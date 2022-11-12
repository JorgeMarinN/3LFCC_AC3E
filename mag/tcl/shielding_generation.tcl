drc style drc(full)

# CUADRANTE DE ABAJO
for {set i 1} {$i < 126} {incr i} {
	box [expr {2*$i-1}]um 0um [expr {2*$i}]um [expr {2*$i} -2]um
	paint polysilicon
}

for {set i 126} {$i < 250} {incr i} {
	box [expr {2*$i-1}]um 0um [expr {2*$i}]um [expr {500 - 2*$i -2}]um
	paint polysilicon
}


# CUADRANTE DE LA IZQUIERDA
for {set i 1} {$i < 126} {incr i} {
	box 0um [expr {2*$i-1}]um [expr {2*$i - 2}]um [expr {2*$i}]um
	paint polysilicon
}

for {set i 126} {$i < 250} {incr i} {
	box 0um [expr {2*$i-1}]um [expr {500 - 2*$i -2}]um [expr {2*$i}]um
	paint polysilicon
}


# CUADRANTE DE ARRIBA
for {set i 1} {$i < 126} {incr i} {
	box [expr {2*$i - 1}]um [expr {500 - 2*$i +1}]um [expr {2*$i}]um 500um
	paint polysilicon
}

for {set i 126} {$i < 250} {incr i} {
	box [expr {2*$i - 1}]um [expr {2*$i +1}]um [expr {2*$i}]um 500um
	paint polysilicon
}


# CUADRANTE DE LA DERECHA
for {set i 1} {$i < 126} {incr i} {
	box [expr {500 - 2*$i +1}]um [expr {2*$i-1}]um 500um [expr {2*$i}]um
	paint polysilicon
}

for {set i 126} {$i < 250} {incr i} {
	box [expr {2*$i +1}]um [expr {2*$i-1}]um 500um [expr {2*$i}]um
	paint polysilicon
}


save shielding.mag