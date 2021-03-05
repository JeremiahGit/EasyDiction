#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;
; Algorithm
;
counter := 0

!space::
	counter++
	counter++
	counter++
	waitTime := 0
	SendInput, {Control down}{Shift down}
	Loop %counter%
	{
		counter--
		waitTime++
		SendInput,{Left down}
		Sleep, 100
		SendInput, {Left up}
		Sleep, 100
	}
	SendInput, {Control up}{Shift up}
	Sleep, 100
	SendInput, !^{space}
	Sleep, (waitTime*750)
	SendInput, !^{space}
	
	SendInput, {right}{Control}{Shift}
	Sleep, 50
	SendInput, {right}
	Sleep, 50
	SendInput, {Control up}{Shift up}{right up}
	Sleep, 50
	SendInput, {right}
	Sleep, 50
	SendInput, {right}
	Sleep, 50
	SendInput, {space}
	Send Finish

	SendInput, !^{space}
	Sleep, 750

	SendInput, {Control down}{Shift down}{right down}
	Sleep, 50
	SendInput, {Control up}{Shift up}{right up}
	Sleep, 50
	SendInput, {Backspace}
	Sleep, 50
	send !^{space}
	
return

;; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;; < < < Increase counter on these keys > > >
;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
space up::
	send {space}
	counter += 1
;	tooltip hi
return

Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script
