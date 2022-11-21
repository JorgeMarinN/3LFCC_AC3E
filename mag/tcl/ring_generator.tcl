drc style drc(full)
tech unlock *

#VARIABLES
set {layer} obsactive
set ring_width 100
set x1 43.870
set y1 43.850
set x2 262.110
set y2 262.090


#PAINTING LEFT SIDE
box [expr {$x1 - $ring_width}]um [expr {$y1 - $ring_width}]um [expr {$x1}]um [expr {$y2 + $ring_width}]um
paint ${layer}

#PAINTING RIGHT SIDE
box [expr {$x2}]um [expr {$y1 - $ring_width}]um [expr {$x2 + $ring_width}]um [expr {$y2 + $ring_width}]um
paint ${layer}

#PAINTING SIDE UP
box [expr {$x1}]um [expr {$y2}]um [expr {$x2}]um [expr {$y2+$ring_width}]um
paint ${layer}

#PAINTING SIDE DOWN
box [expr {$x1}]um [expr {$y1 - $ring_width}]um [expr {$x2}]um [expr {$y1}]um
paint ${layer}