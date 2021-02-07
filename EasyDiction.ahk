#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;
; Algorithm
;
;
counter := 0
WaitTime := 0
!space::
	counter++
	counter++
	SendInput, {Control down}{Shift down}
	Loop %counter%
	{
		counter--
		SendInput,{Left down}
		Sleep 100
		SendInput, {Left up}
		Sleep 100
	}
	SendInput, {Control up}{Shift up}
	send !^{space}
return

;
; alt + F1
; Thiss hotkey is meant to be presseda after the
; MS Narrator finishes reading whatw as typed
; !F1 moves the cursor past the last word that was
; typed and past punctuation. 
;
!F1::
	SendInput, {Control down}{Shift down}{Right down}
	Sleep 50
	SendInput, {Control up}{Shift up}{Right up}
	Sleep, 50
	Loop 2
	{
		SendInput, {Right down}
		Sleep, 25
		SendInput, {Right up}
		Sleep, 25
	}
	send {space}
	send !^{space}
return

; Increase counter on these keys
space up::
	send {space}
	counter += 1
;	tooltip hi
return

Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script
