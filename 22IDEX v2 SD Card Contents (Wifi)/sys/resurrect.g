; File "0:/gcodes/KLA-YW-3DPRINT 22IDEX.gcode" resume print after print paused at 2023-04-25 14:45
G21
M140 P0 S160.0
M141 P0 S100.0
G29 S1
G92 X94.780 Y-8.172 Z24.170 U205.000
G60 S1
G10 P1 S0 R0
G10 P2 S0:0 R0:0
G10 P3 S0:0 R0:0
G10 P0 S370 R370
T0 P0
M98 P"resurrect-prologue.g"
M116
M290 X0.000 Y0.000 Z0.000 U0.000 R0
T-1 P0
T0 P6
; Workplace coordinates
G10 L2 P1 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P2 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P3 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P4 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P5 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P6 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P7 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P8 X0.00 Y0.00 Z0.00 U0.00
G10 L2 P9 X0.00 Y0.00 Z0.00 U0.00
G54
M106 S0.00
M106 P1 S0.00
M106 P3 S0.00
M106 P5 S1.00
M106 P6 S1.00
M116
G92 E0.00000
M83
M486 S0 A"Process 1"
M486 S0
G17
M23 "0:/gcodes/KLA-YW-3DPRINT 22IDEX.gcode"
M26 S2048882
G0 F6000 Z26.170
G0 F6000 X94.780 Y-8.172 U205.000
G0 F6000 Z24.170
G1 F2400.0 P0
G21
M24
