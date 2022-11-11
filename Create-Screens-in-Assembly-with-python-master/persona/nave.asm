navePosition : var #1

nave : var #0

naveGaps : var #0

printnave:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #nave
  loadn R1, #naveGaps
  load R2, navePosition
  loadn R3, #0 ;tamanho nave
  loadn R4, #0 ;incremetador

  printnaveLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printnaveLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarnave:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #naveGaps
  load R2, navePosition
  loadn R3, #0 ;tamanho nave
  loadn R4, #0 ;incremetador

  apagarnaveLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarnaveLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
