drc style drc(full)

#VARIABLES
set numero_lineas 25
set mitad_mas_uno 13
set ancho_linea 10
set separacion 10

# CUADRANTE DE ABAJO
for {set i 1} {$i < $mitad_mas_uno} {incr i} {
	box [expr {$ancho_linea*(2*$i-1)}]um 0um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um [expr {$ancho_linea*(2*$i-1) - $separacion}]um
	paint polysilicon
}

for {set i 13} {$i < $numero_lineas+1} {incr i} {
	box [expr {$ancho_linea*(2*$i-1)}]um 0um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um [expr {2*$ancho_linea*$numero_lineas - $ancho_linea*(2*$i-1) - $separacion}]um
	paint polysilicon
}


# CUADRANTE DE LA IZQUIERDA
for {set i 1} {$i < $mitad_mas_uno} {incr i} {
	box 0um [expr {$ancho_linea*(2*$i-1)}]um [expr {$ancho_linea*(2*$i-1) - $separacion}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um
	paint polysilicon
}

for {set i 13} {$i < $numero_lineas+1} {incr i} {
	box 0um [expr {$ancho_linea*(2*$i-1)}]um [expr {2*$ancho_linea*$numero_lineas - $ancho_linea*(2*$i-1) - $separacion}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um
	paint polysilicon
}


# CUADRANTE DE ARRIBA
for {set i 1} {$i < $mitad_mas_uno} {incr i} {
	box [expr {$ancho_linea*(2*$i-1)}]um [expr {2*$ancho_linea*$numero_lineas -10*(2*$i - 1) + $separacion}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um [expr {2*$ancho_linea*$numero_lineas}]um
	paint polysilicon
}

for {set i 13} {$i < $numero_lineas+1} {incr i} {
	box [expr {$ancho_linea*(2*$i-1)}]um [expr {$ancho_linea*(2*$i-1) + $separacion}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um [expr {2*$ancho_linea*$numero_lineas}]um
	paint polysilicon
}


# CUADRANTE DE LA DERECHA
for {set i 1} {$i < $mitad_mas_uno} {incr i} {
	box [expr {2*$ancho_linea*$numero_lineas -10*(2*$i - 1) + $separacion}]um [expr {$ancho_linea*(2*$i-1)}]um [expr {2*$ancho_linea*$numero_lineas}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um
	paint polysilicon
}

for {set i 13} {$i < $numero_lineas} {incr i} {
	box [expr {$ancho_linea*(2*$i-1) + $separacion + $ancho_linea}]um [expr {$ancho_linea*(2*$i-1)}]um [expr {2*$ancho_linea*$numero_lineas}]um [expr {$ancho_linea*(2*$i-1)+$ancho_linea}]um
	paint polysilicon
}


save shielding.mag
