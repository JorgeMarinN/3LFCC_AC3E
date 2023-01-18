
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Un-flatten Waffles	#
#   11-11-2022        	#
# #####################	#

# ####### NMOS #######

#set size 5.5
#set n 34
#set base 5

#load nmos_empty_waffle_36x36.mag

#for {set i 0} {$i < $n} {incr i} { #ancho
#    for {set j 0} {$j < $n} {incr j} { #alto
#		if {[expr {($i + $j)%2}]} {
#			box [expr {$base + $size*$i - 0.15}]um [expr {$base + $size*$j}]um [expr {$base + $size*($i+1) - 0.15}]um [expr {$base + $size*($j+1)}]um
#			getcell nmos_drain.mag
#		} else {
#			box [expr {$base + $size*$i}]um [expr {$base + $size*$j}]um [expr {$base + $size*($i+1)}]um [expr {$base + $size*($j+1)}]um
#			getcell nmos_source.mag
#		}
#    }
#}

#save nmos_waffle_36x36.mag 


# ####### PMOS #######

set size 5.5
set n 46
set base 5

load pmos_empty_waffle_48x48.mag

for {set i 0} {$i < $n} {incr i} { #ancho
    for {set j 0} {$j < $n} {incr j} { #alto
		if {[expr {($i + $j)%2}]} {
			box [expr {$base + $size*$i - 0.33}]um [expr {$base + $size*$j - 0.33}]um [expr {$base + $size*($i+1) - 0.33}]um [expr {$base + $size*($j+1) - 0.33}]um
			getcell pmos_drain.mag
		} else {
			box [expr {$base + $size*$i - 0.33}]um [expr {$base + $size*$j - 0.33}]um [expr {$base + $size*($i+1) - 0.33}]um [expr {$base + $size*($j+1) - 0.33}]um
			getcell pmos_source.mag
		}
    }
}

save pmos_waffle_48x48.mag 