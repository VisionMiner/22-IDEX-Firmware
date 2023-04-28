; Homing XYU axis if they are not homed
if !move.axes[1].homed || !move.axes[0].homed || !move.axes[3].homed
  M98 P"homeall.g" S1 L1 Z1


T0                 ; Select first tool
G91                ; relative positioning
if !exists(param.Z)
  G1 H2 Z25 F18000   ; lift Z relative to current position

M558 K0 P5 C"duex.e6stop" H5 F15000 T18000
M98 P"essential/autogen/ProbeOffset.g"
  
M98 R P"essential/attachedcheck.g" ; make sure probe is conected, pick if negative and leave relay active

G90                 ; absolute positioning
G1 U999 F18000      ; Move second tool out of the way
G1 X{0 - sensors.probes[0].offsets[0]} Y{0 - sensors.probes[0].offsets[1]} F18000 
M98 R P"essential/attachedcheck.g" ; make sure probe is conected, pick if negative and leave relay active
G30			    	; Home bed using probe

if !exists(param.S)
  G1 H2 Z100 F18000   ; Lift Z

if !exists(param.L)
  M98 P"place.g"