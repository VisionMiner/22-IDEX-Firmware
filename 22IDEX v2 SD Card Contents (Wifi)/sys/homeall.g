; Home Y
M98 P"homey.g" L1
; Home X and U
G91                     ; relative positioning
G1 H1 X-375 U375 F6000  ; move quickly to both axis endstops and stop there (first pass)
G1 H1 X-375 F6000       ; move quickly to X axis endstop and stop there (first pass)
G1 H1 U375 F6000        ; move quickly to U axis endstop and stop there (first pass)
G1 H2 X5 U-5 F18000     ; go back a few mm
G1 H1 X-10 F240         ; move slowly to X axis endstop once more (second pass)
G1 H1 U10 F240          ; move slowly to U axis endstop once more (second pass)
G90                     ; absolute positioning
; Home Z
;True Bed Leveling
if exists(param.L)
  G32 L1 Z1
elif exists(param.S)
  G32 S1 Z1
elif exists(param.S) && exists(param.L)
  G32 L1 S1 Z1
else
  G32 Z1

if !exists(param.S)
  G1 X-999 U999 Y160 Z100 F18000