#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;Algorithm

space::
	send !^{space}
	sleep 1000
	send !^{space}
return

Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script