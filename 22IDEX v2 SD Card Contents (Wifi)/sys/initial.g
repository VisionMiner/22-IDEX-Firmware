; Preheat
M98 P"essential/leds/start_cold.g"
M98 P"essential/preheat.g"
M98 P"essential/leds/start_hot.g"

; Turn E-Cooling Fan on
M106 P5 S1

; Save selectrd tool to slot 0
G60 S0

; Home the machine
M98 P"homeall.g" L1 S1 Z1

; Run Mesh Compensation
G29

; Purging and Cleaning the nozzles
G90
G1 Y-75 X-999 U999 F18000
G91
M83
; Load previously selected tool and purge 50mm of filament
T R0
G1 E50 F300
G4 S3
; Clean the nozzles
G1 X30 U-30 F18000
G1 X-30 U30 F18000
G1 X30 U-30 F18000
G1 X-30 U30 F18000
G90