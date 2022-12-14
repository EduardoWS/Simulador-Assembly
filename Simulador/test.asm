jmp main

Memoria: var #1
;ClearPrint: string "  "

main:
	
	loadn r3, #49			;caractere
	store Memoria, r3
	
	loadn r0, #20       ;posição na tela
	loadn r1, #Memoria	;endereço de memoria
	loadn r2, #512		;cor
	add r3, r3, r2		;soma o index da cor com o index do caractere que esta em r3
	outchar r3, r0		;printa na tela o que tem em r3 na posição que esta em r0
	
	;call Print
	
	;loadn r0, #21
	;loadn r1, #ClearPrint
	;loadn r2, #0
	
	;call Print
	halt
	
Print:
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

PrintLoop:	
	loadi r4, r1
	cmp r4, r3
	jeq PrintOut
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp PrintLoop

PrintOut:	
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts