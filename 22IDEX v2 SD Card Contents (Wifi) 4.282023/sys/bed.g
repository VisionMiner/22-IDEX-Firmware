; Take Z referrence point (home Z)
if !exists(param.Z)
  M98 P"homez.g" L1 S1
else
  M98 P"homez.g" L1 S1 Z1

M98 R P"essential/attachedcheck.g" ; make sure probe is conected, pick if negative and leave relay active

; Fast Bed Leveling
M558 K0 P5 C"duex.e6stop" H50 F18000 T18000
M98 P"essential/autogen/ProbeOffset.g"
G1 U999 F18000 ; Move U - carriage off the way
G30 P0 X36.3 Y-34.3 Z-99999         ; probe near an adjusting screw
G30 P1 X-36.3 Y-34.3 Z-99999   ; probe near an adjusting screw
G30 P2 X0 Y50 Z-99999 S3 ; probe near an adjusting screw and report adjustments needed

M561 ; clear any bed transform
G29 S2 ; Clear height map

M558 K0 P5 C"duex.e6stop" H5 F15000 T18000
M98 P"essential/autogen/ProbeOffset.g"
G30 P0 X137.5 Y130 Z-99999 ; probe near an adjusting screw
G30 P1 X137.5 Y-130 Z-99999 ; probe near an adjusting screw
G30 P2 X-137.5 Y-130 Z-99999 ; probe near an adjusting screw
G30 P3 X-137.5 Y130 Z-99999 S3 ; probe near an adjusting screw and make adjustments needed

; Home Z
M98 P"homez.g" L1

if !exists(param.L)
  M98 P"place.g"