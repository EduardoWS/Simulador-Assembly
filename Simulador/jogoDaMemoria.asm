jmp main

Points: var #1

main:
	test:
		
		call ApagaTela
		call InitialMsg
		call WaitPress
		call ApagaTela
		call IntroMsg
		call WaitPress
		reset:
			
			call ApagaTela
			
			call Nvl1Msg
			call Nvl1Reader
			
			call WIN
			call RestartReader
			

WIN:
	call ApagaTela
	call WinMsg
	rts

LOSS:
	call ApagaTela
	call LossMsg
	call RestartReader

	
;
;
;
;---------------------------	
;Print Functions
;
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

;
;
;
;---------------------------	
; Message Functions
;
InitialMsg:
	loadn r0, #160
	loadn r1, #StringJogo
	loadn r2, #0
	call Print
	
	loadn r0, #440
	loadn r1, #StringDaMaisAcento
	loadn r2, #0
	call Print
	
	loadn r0, #680
	loadn r1, #StringMemoria
	loadn r2, #2816
	call Print
	
	loadn r0, #1008
	loadn r1, #StringPressSpaceToStart
	loadn r2, #1536
	call Print
	
	rts

IntroMsg:
	loadn r0, #160
	loadn r1, #StringIntro
	loadn r2, #0
	call Print
	
	loadn r0, #1008
	loadn r1, #StringPressSpaceToContinue
	loadn r2, #1536
	call Print

	rts

LossMsg:
	loadn r0, #160
	loadn r1, #StringLoss
	loadn r2, #0
	call Print
	
	loadn r0, #1008
	loadn r1, #StringPressSpaceToRestart
	loadn r2, #1536
	call Print

	rts

WinMsg:
	loadn r0, #160
	loadn r1, #StringWin
	loadn r2, #0
	call Print
	
	loadn r0, #1008
	loadn r1, #StringPressSpaceToRestart
	loadn r2, #1536
	call Print

	rts
	
ApagaTela:
	loadn r0, #0
	loadn r1, #StringApagaTela
	loadn r2, #0
	call Print
	rts

WaitPress:
	WaitLoop:			; loop ate o jogador digitar algo
		loadn r1, #255	; Se nao digitar nada vem 255	
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq WaitLoop	; Fica lendo ate' que digite uma tecla 
		call BtnReader
	rts
	
ColorPress:
	ColorLoop:			; loop ate o jogador digitar algo
		loadn r1, #255	; Se nao digitar nada vem 255	
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq ColorLoop	; Fica lendo ate' que digite uma tecla 
		call ColorReader
	rts

RestartPress:
	RestartLoop:
		loadn r1, #255	; Se nao digitar nada vem 255	
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq RestartLoop	; Fica lendo ate' que digite uma tecla 
		call RestartReader
	
Nvl1Msg:

	loadn r0, #1008
	loadn r1, #StringPressSpaceToContinue
	loadn r2, #0
	call Print

	loadn r0, #160
	loadn r1, #StringBlock3
	loadn r2, #2304
	call Print
	
	call WaitPress
	
	loadn r0, #160
	loadn r1, #StringBlock4
	loadn r2, #512
	call Print
	
	call WaitPress
	
	loadn r0, #160
	loadn r1, #StringBlock5
	loadn r2, #3072
	call Print

	call WaitPress

	call ApagaTela

	rts
;
;
;
;---------------------------	
; Readers
;
BtnReader:
	SpacePress:
		loadn r1, #32; /space
		cmp r1, r0
		jne WaitLoop
		rts

ColorReader:
	RPress:
		loadn r1, #114; /r
		cmp r1, r0
		jne BPress
		rts
		
	BPress:
		loadn r1, #98; /b
		cmp r1, r0
		jne GPress
		rts
		
	GPress:
		loadn r1, #103; /g
		cmp r1, r0
		jne WrongAnswer
		rts
		
	WrongAnswer:
		call LOSS
		
RestartReader:
	SpacePress:
		loadn r1, #32; /space
		cmp r1, r0
		jne WaitLoop
		jmp reset

Nvl1Reader:
	loadn r0, #800
	loadn r1, #StringPressToColor
	loadn r2, #0
	call Print
	
	call ColorPress

	rts
;
;
;
;---------------------------	
; String Building
;
;----  Intrucoes de Menu
StringPressSpaceToStart: string "Press SPACE to begin"

StringPressSpaceToContinue: string "Press SPACE to continue"

StringPressSpaceToRestart: string "Press SPACE to restart"

StringPressToColor: string
"             Press R to RED            
            Press B to BLUE            
            Press G to GREEN           "

;----  Tela Inicial
StringJogo : string "      ###### ###### ###### ######      
      ###### ###### ###### ######      
        ##   ##  ## ##     ##  ##      
        ##   ##  ## ##  ## ##  ##      
      ####   ###### ###### ######      
      ####   ###### ###### ######      "   

StringDaMaisAcento : string "                ##  ###                
                # # # #                
                # # ###                
                # # # #                
                ##  # #                "

StringMemoria : string "    # #  ###  # #  ###  ###  #  ###    
    ###  #    ###  # #  # #     # #    
    # #  ###  # #  # #  ###  #  ###    
    # #  #    # #  # #  ##   #  # #    
    # #  ###  # #  ###  # #  #  # #    "
    
;----  Tela Instrucoes
StringIntro: string "     MEMORIZE A SEQUENCIA DE CORES     
         QUE APARECERAO NA TELA.         "

;---- Telas Finais
StringLoss: string "              VOCE PERDEU!              "
StringWin: string "              VOCE VENCEU!              "

;----  Apaga Tela
StringApagaTela: string "
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      
                                      "

;----  Blocks
StringBlock1: string
"  ####                                 
  ####                                 
  ####                                 
  ####                                 
  ####                                 
  ####                                 "
 
StringBlock2: string
"       ####                            
       ####                            
       ####                            
       ####                            
       ####                            
       ####                            "
  
StringBlock3: string
"            ####                       
            ####                       
            ####                       
            ####                       
            ####                       
            ####                       "

StringBlock4: string
"                 ####                  
                 ####                  
                 ####                  
                 ####                  
                 ####                  
                 ####                  "

StringBlock5: string
"                      ####             
                      ####             
                      ####             
                      ####             
                      ####             
                      ####             "

StringBlock6: string
"                           ####        
                           ####        
                           ####        
                           ####        
                           ####        
                           ####        "

StringBlock7: string
"                                ####   
                                ####   
                                ####   
                                ####   
                                ####   
                                ####   "