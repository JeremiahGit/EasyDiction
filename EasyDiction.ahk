#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Counts space bars
counter := 0

; Algorithm where all the magic happens
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
	
	;; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  ;
	; This next part of the code releases pressed buttons, and starts the     ;
	; microsoft word diction reader. It also waits for it to finish.          ;
	; After that it toggles it off.                                           ;
	;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ;

	SendInput, {Control up}{Shift up}
	Sleep, 100
	SendInput, !^{space}
	Sleep, (waitTime*650)
	SendInput, !^{space}
	
	;; >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ; 
	; This next part of code will tell the user when the auto reader is      ;
	; done reading the words that they have typed. The goal is to type and   ;
	; read the word finish in a split second to alert the user they can      ;
	; continue.  RIGHT RIGHT RELEASE GO RIGHT                                ;
	;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ;
	SendInput, {Control down}{Shift down}
	Sleep, 100
	SendInput, {right}
	Sleep, 100
	SendInput, {right}
	Sleep, 100
	SendInput, {Control up}{Shift up}
	Sleep, 100
	SendInput, {right}
	Sleep, 100
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
return

Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script
