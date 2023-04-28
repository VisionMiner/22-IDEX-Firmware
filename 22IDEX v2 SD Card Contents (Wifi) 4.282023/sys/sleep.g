if state.status == "busy"
  if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed || !move.axes[3].homed
    M98 P"homeall.g"
  
  M98 P"essential/autogen/lowerbed.g"             ; lower the bed (if needed)
  M98 P"essential/autogen/bedfinishbehavior.g"	   ; decide what to do with bed after printing is finished

M81 S1
M84