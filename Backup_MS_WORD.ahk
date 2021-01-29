#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#EscapeChar \
;Algorithm
counter := 0
!space::
	send %counter%
	Send !^{space}
return


; Increase counter on these keys
space up::
	send {space}
	counter += 1
return

.::
	send "."
	counter += 1 
return


{comma} up:: 
	send ","
	counter +=1 
return

\! up::
	send "!"
	counter += 1
return

\? up::
	send "?"
	counter +=1 
return


Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script