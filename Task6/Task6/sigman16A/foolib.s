.global sigman
;---------------------------------------------
; Author:
;    Princekumar Diyora(diyorapr)
; Behaviour:
;    returns  sigma(n)
; Assumptions:
;    follows the gnu gcc parameter passing convention
; Restriction:
;    subroutine may only accesses registers and the stack
; Register and Memory Usage:
;    Precondition:
;      accd contains the value of n by using index
;      register x and y
;    Postcondition:
;      accd contains the returned value
;    Destroys:
;      clearing the x and y register
;---------------------------------------------

sigman:
      pshy         ;pushing index register y on the stack
      pshx         ;pushing the index register x on the stack
      ldx #0       ;loading the register x with the value 0
      xgdx         ;moving the index register x into the register D
      cpx #0       ;now comparing the index register x with the 0 
                   ;if x==0 then it will execute the next line else
                   ;it will jump to the loop
      beq done     ;we are making the branch to the done part if the
                   ;z flag is 0
loop:
      pshx         ;pushing the index register x on the stack
      tsy          ;transfering from the stack pointer to the 
                   ;index register y
      addd 0,y     ;adding the regiseter d with the location 1000 and the instrution
                   ;and store that result back into the register d
      pulx         ;pulling the index register x from the stack
      dex          ;decrementing the index register by one
      cpx #0       ;coparing the index register x, if x==0 then it will execute 
                   ;next line again and if not then skip the next line go to 
                   ;done part
      bne loop     ;if z is not eual to zero then we are making branch 
                   ;back to the loop
done:            
      pulx         ;taking out the index register x from the stack
      puly         ;taking out the index register y from the stack
      rts          ;return from the subroutine
