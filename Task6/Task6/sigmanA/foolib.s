.global sigman
;---------------------------------------------
; Behaviour:
;    returns  sigma(n)
; Assumptions:
;    follows the gnu gcc parameter passing convention
; Restriction:
;    subroutine may only accesses registers and the stack
; Register and Memory Usage:
;    Precondition:
;      accb contains the value of n
;    Postcondition:
;      accb contains the returned value
;    Destroys:
;      acca accb
;---------------------------------------------

sigman:
      tpa            ; save ccr
      psha
      clra           ; clear partial sum
      tstb           ; test for initally n == 0
      beq done
loop:
      aba            ; acca:= acca + accb
      decb           ; decrement accb
      bne loop    

done: psha           ; place sum in b
      pulb

      pula           ; restore ccr
      tap
      clra

      rts
