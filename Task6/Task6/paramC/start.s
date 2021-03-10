;============================================-=
; File:
       .file "start.s"
; Behaviour:
;      Initialize SP then call driver
; Assumptions:
;      none
; Board:
;      Sim Gdb
; Author/Date:
;      Peter Walsh Nov 2020
;==========================================-=

;----------------------------------------
;            Text Section (code and data)
;----------------------------------------
.global _start
.extern driver
.global _.frame

.sect .page0
_.frame: .word
 
.sect .text

_start:
          lds #_stack    ; initialize SP
          jsr driver
startX:
          swi


