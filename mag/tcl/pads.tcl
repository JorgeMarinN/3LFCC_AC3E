

set size 1.6

set nx 187
set ny 62

for {set i 0} {$i < $nx} {incr i} { #ancho
    for {set j 0} {$j < $ny} {incr j} { #alto
        box [expr {$size*$i}]um [expr {$size*$j}]um [expr {$size*($i+1)}]um [expr {$size*($j+1)}]um
        getcell unit_pad.mag
    }
}

box -0.4um -0.4um 299.6um 0um
paint {metal1 metal2 metal3 metal4 metal5}
box -0.4um -0.4um 0um 99.6um
paint {metal1 metal2 metal3 metal4 metal5}

box -0.4um 99.2um 299.6um 99.6um
paint {metal1 metal2 metal3 metal4}
box 299.2um -0.4um 299.6um 99.6um
paint {metal1 metal2 metal3 metal4}

# ##############

for {set i 0} {$i < $nx} {incr i} { #ancho
    for {set j 0} {$j < $ny} {incr j} { #alto
		box [expr {$size*$i}]um [expr {$size*$j}]um [expr {$size*($i+1)}]um [expr {$size*($j+1)}]um
		if {[expr {($i + $j)%2}]} {
			getcell unit_pad.mag
		} #else {
		#	paint {metal1 metal2 metal3 metal4 metal5}
		#}
    }
}

box -0.4um -0.4um 299.6um 99.6um
paint {metal1 metal2 metal3 metal4 metal5}

# ##############

set nx 62
set ny 137

for {set i 0} {$i < $nx} {incr i} { #ancho
    for {set j 0} {$j < $ny} {incr j} { #alto
		box [expr {$size*$i}]um [expr {$size*$j}]um [expr {$size*($i+1)}]um [expr {$size*($j+1)}]um
		if {[expr {($i + $j)%2}]} {
			getcell unit_pad.mag
		}
	}
}

box -0.4um -0.4um 99.6um 219.7um
paint {metal1 metal2 metal3 metal4 metal5}
