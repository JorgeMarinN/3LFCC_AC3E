
# #########################	#
#   AC3E - UTFSM      		#
#   Project: 3LFCC    		#
#   decoupling caps layout	#
#   11-11-2022        		#
# #########################	#

set ancho 31.9
set alto 31.9
set connlen 1.9
#pad del cap

##
## De los cuatro del centro, el de abajo a la izquierda
##

set basex 990
set basey 3276

for {set i 0} {$i <= 5} {incr i} {
    box [expr {$basex + $ancho*$i}]um [expr {$basey}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto}]um
    getcell unit_cap.mag
    box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto*2}]um
    getcell unit_cap.mag
}

#Conexión a GND
set len 6

box [expr {$basex + $ancho*$i}]um [expr {$basey + 10}]um [expr {$basex + $len+ $ancho*$i}]um [expr {$basey + 20}]um
paint {metal3 metal5}
box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto + 10}]um [expr {$basex + $len+ $ancho*$i}]um [expr {$basey + $alto + 20}]um
paint {metal3 metal5}

#Conexión a VH
set len 9.4

#box [expr {$basex + 10}]um [expr {$basey + $alto*2}]um [expr {$basex + 20}]um [expr {$basey + $alto*2 + $len}]um
for {set i 0} {$i < 6} {incr i} {
    box [expr {$basex + 10 + $ancho*$i}]um [expr {$basey + $alto*2}]um [expr {$basex + 20 + $ancho*$i}]um [expr {$basey + $alto*2 + $len}]um
    paint metal4
}



##
## De los cuatro del centro, el de abajo a la derecha
##

set basex 1444
#set basey 3276

for {set i 0} {$i <= 6} {incr i} {
    box [expr {$basex + $ancho*$i}]um [expr {$basey}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto}]um
    getcell unit_cap.mag
    box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto*2}]um
    getcell unit_cap.mag
}

box [expr {$basex + $ancho*7}]um [expr {$basey + $alto}]um [expr {$basex + $ancho*8}]um [expr {$basey + $alto*2}]um
getcell unit_cap.mag

box [expr {$basex + $ancho*8}]um [expr {$basey + $alto}]um [expr {$basex + $ancho*9}]um [expr {$basey + $alto*2}]um
getcell unit_cap.mag

box [expr {$basex + $ancho*9}]um [expr {$basey + $alto}]um [expr {$basex + $ancho*10}]um [expr {$basey + $alto*2}]um
getcell unit_cap.mag

#Conexión a VH
set len 9.4

#box [expr {$basex + 10}]um [expr {$basey + $alto*2}]um [expr {$basex + 20}]um [expr {$basey + $alto*2 + $len}]um
for {set i 0} {$i < 10} {incr i} {
    box [expr {$basex + 10 + $ancho*$i}]um [expr {$basey + $alto*2}]um [expr {$basex + 20 + $ancho*$i}]um [expr {$basey + $alto*2 + $len}]um
    paint metal4
}

#Conexión a GND
set len 15
#box [expr {$basex + 10}]um [expr {$basey - $len}]um [expr {$basex + 20}]um [expr {$basey}]um
for {set i 0} {$i < 7} {incr i} {
    box [expr {$basex + 10 + $ancho*$i}]um [expr {$basey - $len}]um [expr {$basex + 20 + $ancho*$i}]um [expr {$basey}]um
    paint {metal3 metal5}
}


##
## De los cuatro del centro, el de arriba a la derecha
##

set basex 1447
set basey 3413

for {set i 0} {$i < 4} {incr i} {
    for {set j 0} {$j < 3} {incr j} {
        box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto*$j}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto*($j+1)}]um
        getcell unit_cap.mag 180
    }
}

box [expr {$basex + $ancho*4}]um [expr {$basey}]um [expr {$basex + $ancho*5}]um [expr {$basey + $alto}]um
getcell unit_cap.mag 180

box [expr {$basex + $ancho*5}]um [expr {$basey}]um [expr {$basex + $ancho*6}]um [expr {$basey + $alto}]um
getcell unit_cap.mag 180

#Conexión a VH
set len 5.4

#box [expr {$basex + 10 + $connlen}]um [expr {$basey}]um [expr {$basex + 20 + $connlen}]um [expr {$basey + $connlen}]um
for {set i 0} {$i < 6} {incr i} {
    box [expr {$basex + $ancho*$i + 10 + $connlen}]um [expr {$basey - $len}]um [expr {$basex + $ancho*$i + 20 + $connlen}]um [expr {$basey + $connlen}]um
    paint metal4
}

#Conexión a GND
set len 7.4
#box [expr {$basex - $len}]um [expr {$basey + 10 + $connlen}]um [expr {$basex}]um [expr {$basey + 20 + $connlen}]um
for {set i 0} {$i < 3} {incr i} {
    box [expr {$basex - $len}]um [expr {$basey + 10 + $connlen + $alto*$i}]um [expr {$basex}]um [expr {$basey + 20 + $connlen  + $alto*$i}]um
    paint {metal3 metal5}
}



##
## De los cuatro del centro, el de arriba a la izquierda
##

set basex 1011
#set basey 3413

for {set i 0} {$i < 2} {incr i} { #ancho
    for {set j 0} {$j < 3} {incr j} { #alto
        box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto*$j}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto*($j+1)}]um
        getcell unit_cap.mag 180h
    }
}

box [expr {$basex + $ancho*2}]um [expr {$basey}]um [expr {$basex + $ancho*3}]um [expr {$basey + $alto}]um
getcell unit_cap.mag 180h

box [expr {$basex + $ancho*3}]um [expr {$basey}]um [expr {$basex + $ancho*4}]um [expr {$basey + $alto}]um
getcell unit_cap.mag 180h


#Conexión a VH
set len 5.4

#box [expr {$basex + 10 + $connlen}]um [expr {$basey}]um [expr {$basex + 20 + $connlen}]um [expr {$basey + $connlen}]um
for {set i 0} {$i < 4} {incr i} {
    box [expr {$basex + $ancho*$i + 10}]um [expr {$basey - $len}]um [expr {$basex + $ancho*$i + 20}]um [expr {$basey + $connlen}]um
    paint metal4
}

#Conexión a GND
set len 15
box [expr {$basex + $ancho*2}]um [expr {$basey + $alto + $connlen + 10}]um [expr {$basex + $ancho*2 + $len}]um [expr {$basey + $alto + $connlen + 20}]um
paint {metal3 metal5}
box [expr {$basex + $ancho*2}]um [expr {$basey + $alto*2 + $connlen + 10}]um [expr {$basex + $ancho*2 + $len}]um [expr {$basey + $alto*2 + $connlen + 20}]um
paint {metal3 metal5}
box [expr {$basex + $ancho*4}]um [expr {$basey + $connlen + 10}]um [expr {$basex + $ancho*4 + $len}]um [expr {$basey + $connlen + 20}]um
paint {metal3 metal5}

##
## Arriba a la derecha
##

set basex 2475
#set basey 3414

for {set i 0} {$i < 11} {incr i} { #ancho
    for {set j 0} {$j < 3} {incr j} { #alto
        if {$j==2 && $i<5} {
            continue
        }
        box [expr {$basex + $ancho*$i}]um [expr {$basey + $alto*$j}]um [expr {$basex + $ancho*($i+1)}]um [expr {$basey + $alto*($j+1)}]um
        getcell unit_cap.mag 180
    }
}

for {set i 0} {$i < 4} {incr i} {
    box [expr {$basex + $ancho*(7+$i)}]um [expr {$basey - $alto}]um [expr {$basex + $ancho*(8+$i)}]um [expr {$basey}]um
    getcell unit_cap.mag 180
}

#Conexión a VH
set len 5.4

#box [expr {$basex + 10 + $connlen}]um [expr {$basey}]um [expr {$basex + 20 + $connlen}]um [expr {$basey + $connlen}]um
for {set i 0} {$i < 7} {incr i} {
    box [expr {$basex + $ancho*$i + 10 + $connlen}]um [expr {$basey - $len}]um [expr {$basex + $ancho*$i + 20 + $connlen}]um [expr {$basey + $connlen}]um
    paint metal4
}

for {set i 7} {$i < 11} {incr i} {
    box [expr {$basex + $ancho*$i + 10 + $connlen}]um [expr {$basey - $alto - $len}]um [expr {$basex + $ancho*$i + 20 + $connlen}]um [expr {$basey - $alto + $connlen}]um
    paint metal4
}

set len 25
set basey 3475
for {set i 0} {$i < 5} {incr i} {
    box [expr {$basex + $ancho*$i + 10 + $connlen}]um [expr {$basey}]um [expr {$basex + $ancho*$i + 20 + $connlen}]um [expr {$basey  + $len}]um
    paint {metal3 metal5}
}
