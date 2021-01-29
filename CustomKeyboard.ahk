#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This Script is for our 1st prototype design keyboard
;
;

;1st Row
q::d
w::p
e::m
r::s
t::a
y::r
u::k
i::v
o::x
p::q

;2nd Row
a::u
s::c
d::h
f::n
g::e
h::i
j::w
k::y
l::j

;3rd Row
z::f
x::b
c::g
v::t
b::o
n::l
m::z

;Number Row
`::1
1::2
2::3
3::4
4::5
5::6
6::7
7::8
8::9
9::0
0::`

Esc::ExitApp  ;Escape key will exit... place this at the bottom of the script