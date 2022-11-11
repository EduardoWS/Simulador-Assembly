alienPosition : var #1

alien : var #0

alienGaps : var #0

printalien:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #alien
  loadn R1, #alienGaps
  load R2, alienPosition
  loadn R3, #0 ;tamanho alien
  loadn R4, #0 ;incremetador

  printalienLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printalienLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagaralien:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #alienGaps
  load R2, alienPosition
  loadn R3, #0 ;tamanho alien
  loadn R4, #0 ;incremetador

  apagaralienLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagaralienLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
