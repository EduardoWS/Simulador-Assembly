;Nave : 

	; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000
; 3840 branco						1111 0000



	
;	- Move 3 Objetos com Delays diferentes
;	- Nao apaga o cenario
;	- Le teclado para movimentar a Nave
;	- Declara Tabela de nr. Randoicos
;	- Le Tabela de nr. Randomico para movimentar o Alien
;	- Se Tiro ou Alien passar por cima, nao apaga a Nave
;	- Nao fica piscando, pois so' redezenha se pos != posAnt
;   - Senario Colorido!!!!!
;	- Loop principal segue estrutura abaixo:


;	Loop:
;		if (mod(c/10)==0
;			{	
;				RecalculaNave (posNave = Teclado...)
;				If (posNave != posAntNave)
;				{ 	ApagaNave: Print Tela(posAntNave + posAntNave/40) , posAntNave
;				 	DesenhaNave  (posAntNave = posNave)
;				}
;			}
;		if (mod(c/5)==0
;			{	
;				RecalculaAlien (posAlien = Rand...)
;				If (posAlien != posAntAlien)
;				{ 	ApagaAlien: Print Tela(posAntAlien + posAntAlien/40) , posAntAlien
;				 	DesenhaAlien  (posAntAlien = posAlien)
;				}
;			}
;		if (mod(c/2)==0
;			{	
;				RecalculaTiro (posTiro = posTiro + IncTiro...)
;				If (posTiro != posAntTiro)
;				{ 	ApagaTiro: Print Tela(posAntTiro + posAntTiro/40) , posAntTiro
;				 	DesenhaTiro  (posAntTiro = posTiro)
;				}
;			}
;		
;		Delay
;		c++
;		goto Loop


jmp menu
Msn0: string "V O C E   V E N C E U !!!"
Msn1: string "Quer jogar novamente? <s/n>"
Msn2: string "[ 1 ] Jogar SinglePlayer"
Msn3: string "[ 2 ] Jogar MultiPlayer Local"
Msn4: string "[ 0 ] Sair"
Msn5: string "P L A Y E R  1   V E N C E U !!!"
Msn6: string "P L A Y E R  2   V E N C E U !!!"

Letra: var #1		; Contem a letra que foi digitada

posNave: var #1			; Contem a posicao atual da Nave
posAntNave: var #1		; Contem a posicao anterior da Nave
posNave2: var #1
posAntNave2: var #1

posAlien: var #1		; Contem a posicao atual do Alien
posAntAlien: var #1		; Contem a posicao anterior do Alien

posTiro: var #1			; Contem a posicao atual do Tiro
posAntTiro: var #1		; Contem a posicao anterior do Tiro
posTiro2: var #1			; Contem a posicao atual do Tiro
posAntTiro2: var #1		; Contem a posicao anterior do Tiro
FlagTiro: var #1		; Flag para ver se Atirou ou nao (Barra de Espaco!!)
FlagTiro2: var #1

IncRand: var #1			; Incremento para circular na Tabela de nr. Randomicos
Rand : var #30			; Tabela de nr. Randomicos entre 0 - 7
	static Rand + #0, #15
	static Rand + #1, #3
	static Rand + #2, #5
	static Rand + #3, #6
	static Rand + #4, #6
	static Rand + #5, #4
	static Rand + #6, #2
	static Rand + #7, #0
	static Rand + #8, #1
	static Rand + #9, #5
	static Rand + #10, #2
	static Rand + #11, #2
	static Rand + #12, #0
	static Rand + #13, #3
	static Rand + #14, #7
	static Rand + #15, #5
	static Rand + #16, #0
	static Rand + #17, #6
	static Rand + #18, #7
	static Rand + #19, #2
	static Rand + #20, #22
	static Rand + #20, #7
	static Rand + #21, #1
	static Rand + #22, #5
	static Rand + #23, #6
	static Rand + #24, #1
	static Rand + #25, #2
	static Rand + #26, #6
	static Rand + #27, #4
	static Rand + #28, #6
	static Rand + #29, #0

telamenu : var #1200
  ;Linha 0
  static telamenu + #0, #3967
  static telamenu + #1, #3967
  static telamenu + #2, #1070
  static telamenu + #3, #3967
  static telamenu + #4, #3967
  static telamenu + #5, #3967
  static telamenu + #6, #3967
  static telamenu + #7, #3967
  static telamenu + #8, #3967
  static telamenu + #9, #3967
  static telamenu + #10, #3967
  static telamenu + #11, #3967
  static telamenu + #12, #3967
  static telamenu + #13, #3967
  static telamenu + #14, #3967
  static telamenu + #15, #3967
  static telamenu + #16, #3967
  static telamenu + #17, #3967
  static telamenu + #18, #3967
  static telamenu + #19, #3967
  static telamenu + #20, #3967
  static telamenu + #21, #3967
  static telamenu + #22, #3967
  static telamenu + #23, #3967
  static telamenu + #24, #3967
  static telamenu + #25, #3967
  static telamenu + #26, #3967
  static telamenu + #27, #1070
  static telamenu + #28, #3967
  static telamenu + #29, #3967
  static telamenu + #30, #3967
  static telamenu + #31, #3967
  static telamenu + #32, #3967
  static telamenu + #33, #3967
  static telamenu + #34, #3967
  static telamenu + #35, #3967
  static telamenu + #36, #3967
  static telamenu + #37, #3967
  static telamenu + #38, #3967
  static telamenu + #39, #3967

  ;Linha 1
  static telamenu + #40, #1070
  static telamenu + #41, #3967
  static telamenu + #42, #3967
  static telamenu + #43, #3967
  static telamenu + #44, #3967
  static telamenu + #45, #1070
  static telamenu + #46, #3967
  static telamenu + #47, #3967
  static telamenu + #48, #3967
  static telamenu + #49, #3967
  static telamenu + #50, #3967
  static telamenu + #51, #3967
  static telamenu + #52, #3967
  static telamenu + #53, #1070
  static telamenu + #54, #3967
  static telamenu + #55, #3967
  static telamenu + #56, #3967
  static telamenu + #57, #3967
  static telamenu + #58, #3967
  static telamenu + #59, #3967
  static telamenu + #60, #3967
  static telamenu + #61, #3967
  static telamenu + #62, #1070
  static telamenu + #63, #3967
  static telamenu + #64, #3967
  static telamenu + #65, #3967
  static telamenu + #66, #3967
  static telamenu + #67, #3967
  static telamenu + #68, #3967
  static telamenu + #69, #3967
  static telamenu + #70, #3967
  static telamenu + #71, #3967
  static telamenu + #72, #3967
  static telamenu + #73, #1070
  static telamenu + #74, #3967
  static telamenu + #75, #3967
  static telamenu + #76, #3967
  static telamenu + #77, #1070
  static telamenu + #78, #3967
  static telamenu + #79, #3967

  ;Linha 2
  static telamenu + #80, #3967
  static telamenu + #81, #3967
  static telamenu + #82, #3967
  static telamenu + #83, #3967
  static telamenu + #84, #3967
  static telamenu + #85, #3967
  static telamenu + #86, #3967
  static telamenu + #87, #3967
  static telamenu + #88, #3967
  static telamenu + #89, #3967
  static telamenu + #90, #3967
  static telamenu + #91, #3967
  static telamenu + #92, #3967
  static telamenu + #93, #3967
  static telamenu + #94, #3967
  static telamenu + #95, #3967
  static telamenu + #96, #3967
  static telamenu + #97, #3967
  static telamenu + #98, #3967
  static telamenu + #99, #3967
  static telamenu + #100, #3967
  static telamenu + #101, #1070
  static telamenu + #102, #3967
  static telamenu + #103, #3967
  static telamenu + #104, #3967
  static telamenu + #105, #3967
  static telamenu + #106, #3967
  static telamenu + #107, #3967
  static telamenu + #108, #3967
  static telamenu + #109, #3967
  static telamenu + #110, #3967
  static telamenu + #111, #3967
  static telamenu + #112, #3967
  static telamenu + #113, #3967
  static telamenu + #114, #3967
  static telamenu + #115, #3967
  static telamenu + #116, #3967
  static telamenu + #117, #3967
  static telamenu + #118, #3967
  static telamenu + #119, #3967

  ;Linha 3
  static telamenu + #120, #3967
  static telamenu + #121, #3967
  static telamenu + #122, #3967
  static telamenu + #123, #3967
  static telamenu + #124, #3967
  static telamenu + #125, #3967
  static telamenu + #126, #3967
  static telamenu + #127, #3967
  static telamenu + #128, #3967
  static telamenu + #129, #1070
  static telamenu + #130, #3967
  static telamenu + #131, #3967
  static telamenu + #132, #3967
  static telamenu + #133, #3967
  static telamenu + #134, #3967
  static telamenu + #135, #3967
  static telamenu + #136, #3967
  static telamenu + #137, #3967
  static telamenu + #138, #3967
  static telamenu + #139, #3967
  static telamenu + #140, #3967
  static telamenu + #141, #3967
  static telamenu + #142, #3967
  static telamenu + #143, #3967
  static telamenu + #144, #1070
  static telamenu + #145, #3967
  static telamenu + #146, #3967
  static telamenu + #147, #3967
  static telamenu + #148, #3967
  static telamenu + #149, #3967
  static telamenu + #150, #3967
  static telamenu + #151, #3967
  static telamenu + #152, #3967
  static telamenu + #153, #3967
  static telamenu + #154, #3967
  static telamenu + #155, #3967
  static telamenu + #156, #3967
  static telamenu + #157, #3967
  static telamenu + #158, #1070
  static telamenu + #159, #3967

  ;Linha 4
  static telamenu + #160, #3967
  static telamenu + #161, #3967
  static telamenu + #162, #3967
  static telamenu + #163, #3967
  static telamenu + #164, #3967
  static telamenu + #165, #3967
  static telamenu + #166, #1070
  static telamenu + #167, #3967
  static telamenu + #168, #3967
  static telamenu + #169, #3967
  static telamenu + #170, #3967
  static telamenu + #171, #3967
  static telamenu + #172, #3967
  static telamenu + #173, #3967
  static telamenu + #174, #3967
  static telamenu + #175, #1070
  static telamenu + #176, #3967
  static telamenu + #177, #3967
  static telamenu + #178, #3967
  static telamenu + #179, #3967
  static telamenu + #180, #3967
  static telamenu + #181, #3967
  static telamenu + #182, #3967
  static telamenu + #183, #3967
  static telamenu + #184, #3967
  static telamenu + #185, #3967
  static telamenu + #186, #3967
  static telamenu + #187, #3967
  static telamenu + #188, #3967
  static telamenu + #189, #3967
  static telamenu + #190, #3967
  static telamenu + #191, #1070
  static telamenu + #192, #3967
  static telamenu + #193, #3967
  static telamenu + #194, #3967
  static telamenu + #195, #3967
  static telamenu + #196, #3967
  static telamenu + #197, #3967
  static telamenu + #198, #3967
  static telamenu + #199, #3967

  ;Linha 5
  static telamenu + #200, #3967
  static telamenu + #201, #1070
  static telamenu + #202, #3967
  static telamenu + #203, #3967
  static telamenu + #204, #3967
  static telamenu + #205, #3967
  static telamenu + #206, #3967
  static telamenu + #207, #3967
  static telamenu + #208, #3967
  static telamenu + #209, #3967
  static telamenu + #210, #3967
  static telamenu + #211, #3967
  static telamenu + #212, #3967
  static telamenu + #213, #3967
  static telamenu + #214, #3967
  static telamenu + #215, #3967
  static telamenu + #216, #3967
  static telamenu + #217, #3967
  static telamenu + #218, #3967
  static telamenu + #219, #3967
  static telamenu + #220, #1070
  static telamenu + #221, #3967
  static telamenu + #222, #3967
  static telamenu + #223, #3967
  static telamenu + #224, #3967
  static telamenu + #225, #3967
  static telamenu + #226, #3967
  static telamenu + #227, #3967
  static telamenu + #228, #3967
  static telamenu + #229, #3967
  static telamenu + #230, #3967
  static telamenu + #231, #3967
  static telamenu + #232, #3967
  static telamenu + #233, #3967
  static telamenu + #234, #3967
  static telamenu + #235, #3967
  static telamenu + #236, #3967
  static telamenu + #237, #3967
  static telamenu + #238, #3967
  static telamenu + #239, #3967

  ;Linha 6
  static telamenu + #240, #3967
  static telamenu + #241, #3967
  static telamenu + #242, #3967
  static telamenu + #243, #3967
  static telamenu + #244, #3967
  static telamenu + #245, #3967
  static telamenu + #246, #3967
  static telamenu + #247, #3967
  static telamenu + #248, #3967
  static telamenu + #249, #3967
  static telamenu + #250, #3967
  static telamenu + #251, #3967
  static telamenu + #252, #3967
  static telamenu + #253, #3967
  static telamenu + #254, #3967
  static telamenu + #255, #3967
  static telamenu + #256, #3967
  static telamenu + #257, #3967
  static telamenu + #258, #3967
  static telamenu + #259, #3967
  static telamenu + #260, #3967
  static telamenu + #261, #3967
  static telamenu + #262, #3967
  static telamenu + #263, #3967
  static telamenu + #264, #3967
  static telamenu + #265, #3967
  static telamenu + #266, #3967
  static telamenu + #267, #3967
  static telamenu + #268, #3967
  static telamenu + #269, #3967
  static telamenu + #270, #3967
  static telamenu + #271, #3967
  static telamenu + #272, #3967
  static telamenu + #273, #3967
  static telamenu + #274, #3967
  static telamenu + #275, #3967
  static telamenu + #276, #3967
  static telamenu + #277, #3967
  static telamenu + #278, #3967
  static telamenu + #279, #3967

  ;Linha 7
  static telamenu + #280, #3967
  static telamenu + #281, #3967
  static telamenu + #282, #3967
  static telamenu + #283, #3967
  static telamenu + #284, #3967
  static telamenu + #285, #3967
  static telamenu + #286, #3967
  static telamenu + #287, #3967
  static telamenu + #288, #1024
  static telamenu + #289, #1024
  static telamenu + #290, #3967
  static telamenu + #291, #3967
  static telamenu + #292, #3967
  static telamenu + #293, #1024
  static telamenu + #294, #1024
  static telamenu + #295, #3967
  static telamenu + #296, #3967
  static telamenu + #297, #3967
  static telamenu + #298, #1024
  static telamenu + #299, #1024
  static telamenu + #300, #3967
  static telamenu + #301, #3967
  static telamenu + #302, #3967
  static telamenu + #303, #1024
  static telamenu + #304, #1024
  static telamenu + #305, #3967
  static telamenu + #306, #3967
  static telamenu + #307, #3967
  static telamenu + #308, #1024
  static telamenu + #309, #1024
  static telamenu + #310, #3967
  static telamenu + #311, #3967
  static telamenu + #312, #3967
  static telamenu + #313, #3967
  static telamenu + #314, #3967
  static telamenu + #315, #3967
  static telamenu + #316, #3967
  static telamenu + #317, #1070
  static telamenu + #318, #3967
  static telamenu + #319, #3967

  ;Linha 8
  static telamenu + #320, #3967
  static telamenu + #321, #3967
  static telamenu + #322, #3967
  static telamenu + #323, #3967
  static telamenu + #324, #3967
  static telamenu + #325, #3967
  static telamenu + #326, #3967
  static telamenu + #327, #1024
  static telamenu + #328, #3967
  static telamenu + #329, #3967
  static telamenu + #330, #1024
  static telamenu + #331, #3967
  static telamenu + #332, #1024
  static telamenu + #333, #3967
  static telamenu + #334, #3967
  static telamenu + #335, #1024
  static telamenu + #336, #3967
  static telamenu + #337, #1024
  static telamenu + #338, #3967
  static telamenu + #339, #3967
  static telamenu + #340, #1024
  static telamenu + #341, #3967
  static telamenu + #342, #1024
  static telamenu + #343, #3967
  static telamenu + #344, #3967
  static telamenu + #345, #1024
  static telamenu + #346, #3967
  static telamenu + #347, #1024
  static telamenu + #348, #3967
  static telamenu + #349, #3967
  static telamenu + #350, #1024
  static telamenu + #351, #3967
  static telamenu + #352, #3967
  static telamenu + #353, #3967
  static telamenu + #354, #3967
  static telamenu + #355, #3967
  static telamenu + #356, #3967
  static telamenu + #357, #3967
  static telamenu + #358, #3967
  static telamenu + #359, #3967

  ;Linha 9
  static telamenu + #360, #3967
  static telamenu + #361, #3967
  static telamenu + #362, #3967
  static telamenu + #363, #3967
  static telamenu + #364, #3967
  static telamenu + #365, #1070
  static telamenu + #366, #3967
  static telamenu + #367, #1024
  static telamenu + #368, #3967
  static telamenu + #369, #3967
  static telamenu + #370, #3967
  static telamenu + #371, #3967
  static telamenu + #372, #1024
  static telamenu + #373, #3967
  static telamenu + #374, #3967
  static telamenu + #375, #1024
  static telamenu + #376, #3967
  static telamenu + #377, #1024
  static telamenu + #378, #3967
  static telamenu + #379, #3967
  static telamenu + #380, #1024
  static telamenu + #381, #3967
  static telamenu + #382, #1024
  static telamenu + #383, #3967
  static telamenu + #384, #3967
  static telamenu + #385, #1024
  static telamenu + #386, #3967
  static telamenu + #387, #1024
  static telamenu + #388, #3967
  static telamenu + #389, #3967
  static telamenu + #390, #3967
  static telamenu + #391, #3967
  static telamenu + #392, #1070
  static telamenu + #393, #3967
  static telamenu + #394, #3967
  static telamenu + #395, #3967
  static telamenu + #396, #3967
  static telamenu + #397, #3967
  static telamenu + #398, #3967
  static telamenu + #399, #3967

  ;Linha 10
  static telamenu + #400, #1070
  static telamenu + #401, #3967
  static telamenu + #402, #3967
  static telamenu + #403, #3967
  static telamenu + #404, #3967
  static telamenu + #405, #3967
  static telamenu + #406, #3967
  static telamenu + #407, #3967
  static telamenu + #408, #1024
  static telamenu + #409, #1024
  static telamenu + #410, #3967
  static telamenu + #411, #3967
  static telamenu + #412, #1024
  static telamenu + #413, #1024
  static telamenu + #414, #1024
  static telamenu + #415, #3967
  static telamenu + #416, #3967
  static telamenu + #417, #1024
  static telamenu + #418, #1024
  static telamenu + #419, #1024
  static telamenu + #420, #1024
  static telamenu + #421, #3967
  static telamenu + #422, #1024
  static telamenu + #423, #3967
  static telamenu + #424, #3967
  static telamenu + #425, #3967
  static telamenu + #426, #3967
  static telamenu + #427, #1024
  static telamenu + #428, #1024
  static telamenu + #429, #1024
  static telamenu + #430, #3967
  static telamenu + #431, #3967
  static telamenu + #432, #3967
  static telamenu + #433, #3967
  static telamenu + #434, #3967
  static telamenu + #435, #3967
  static telamenu + #436, #3967
  static telamenu + #437, #3967
  static telamenu + #438, #3967
  static telamenu + #439, #3967

  ;Linha 11
  static telamenu + #440, #3967
  static telamenu + #441, #3967
  static telamenu + #442, #1070
  static telamenu + #443, #3967
  static telamenu + #444, #3967
  static telamenu + #445, #3967
  static telamenu + #446, #3967
  static telamenu + #447, #3967
  static telamenu + #448, #3967
  static telamenu + #449, #3967
  static telamenu + #450, #1024
  static telamenu + #451, #3967
  static telamenu + #452, #1024
  static telamenu + #453, #3967
  static telamenu + #454, #3967
  static telamenu + #455, #3967
  static telamenu + #456, #3967
  static telamenu + #457, #1024
  static telamenu + #458, #3967
  static telamenu + #459, #3967
  static telamenu + #460, #1024
  static telamenu + #461, #3967
  static telamenu + #462, #1024
  static telamenu + #463, #3967
  static telamenu + #464, #3967
  static telamenu + #465, #1024
  static telamenu + #466, #3967
  static telamenu + #467, #1024
  static telamenu + #468, #3967
  static telamenu + #469, #3967
  static telamenu + #470, #3967
  static telamenu + #471, #3967
  static telamenu + #472, #3967
  static telamenu + #473, #3967
  static telamenu + #474, #3967
  static telamenu + #475, #3967
  static telamenu + #476, #3967
  static telamenu + #477, #3967
  static telamenu + #478, #3967
  static telamenu + #479, #1070

  ;Linha 12
  static telamenu + #480, #3967
  static telamenu + #481, #3967
  static telamenu + #482, #3967
  static telamenu + #483, #3967
  static telamenu + #484, #3967
  static telamenu + #485, #3967
  static telamenu + #486, #3967
  static telamenu + #487, #1024
  static telamenu + #488, #3967
  static telamenu + #489, #3967
  static telamenu + #490, #1024
  static telamenu + #491, #3967
  static telamenu + #492, #1024
  static telamenu + #493, #3967
  static telamenu + #494, #3967
  static telamenu + #495, #3967
  static telamenu + #496, #3967
  static telamenu + #497, #1024
  static telamenu + #498, #3967
  static telamenu + #499, #3967
  static telamenu + #500, #1024
  static telamenu + #501, #3967
  static telamenu + #502, #1024
  static telamenu + #503, #3967
  static telamenu + #504, #3967
  static telamenu + #505, #1024
  static telamenu + #506, #3967
  static telamenu + #507, #1024
  static telamenu + #508, #3967
  static telamenu + #509, #3967
  static telamenu + #510, #1024
  static telamenu + #511, #3967
  static telamenu + #512, #3967
  static telamenu + #513, #3967
  static telamenu + #514, #3967
  static telamenu + #515, #3967
  static telamenu + #516, #3967
  static telamenu + #517, #3967
  static telamenu + #518, #3967
  static telamenu + #519, #3967

  ;Linha 13
  static telamenu + #520, #3967
  static telamenu + #521, #3967
  static telamenu + #522, #3967
  static telamenu + #523, #3967
  static telamenu + #524, #3967
  static telamenu + #525, #3967
  static telamenu + #526, #3967
  static telamenu + #527, #3967
  static telamenu + #528, #1024
  static telamenu + #529, #1024
  static telamenu + #530, #3967
  static telamenu + #531, #3967
  static telamenu + #532, #1024
  static telamenu + #533, #3967
  static telamenu + #534, #3967
  static telamenu + #535, #3967
  static telamenu + #536, #3967
  static telamenu + #537, #1024
  static telamenu + #538, #3967
  static telamenu + #539, #3967
  static telamenu + #540, #1024
  static telamenu + #541, #3967
  static telamenu + #542, #3967
  static telamenu + #543, #1024
  static telamenu + #544, #1024
  static telamenu + #545, #3967
  static telamenu + #546, #3967
  static telamenu + #547, #3967
  static telamenu + #548, #1024
  static telamenu + #549, #1024
  static telamenu + #550, #3967
  static telamenu + #551, #3967
  static telamenu + #552, #3967
  static telamenu + #553, #3967
  static telamenu + #554, #3967
  static telamenu + #555, #3967
  static telamenu + #556, #3967
  static telamenu + #557, #3967
  static telamenu + #558, #3967
  static telamenu + #559, #3967

  ;Linha 14
  static telamenu + #560, #3967
  static telamenu + #561, #3967
  static telamenu + #562, #3967
  static telamenu + #563, #3967
  static telamenu + #564, #3967
  static telamenu + #565, #3967
  static telamenu + #566, #3967
  static telamenu + #567, #3967
  static telamenu + #568, #3967
  static telamenu + #569, #3967
  static telamenu + #570, #3967
  static telamenu + #571, #3967
  static telamenu + #572, #3967
  static telamenu + #573, #3967
  static telamenu + #574, #3967
  static telamenu + #575, #3967
  static telamenu + #576, #3967
  static telamenu + #577, #3967
  static telamenu + #578, #3967
  static telamenu + #579, #3967
  static telamenu + #580, #3967
  static telamenu + #581, #3967
  static telamenu + #582, #3967
  static telamenu + #583, #3967
  static telamenu + #584, #3967
  static telamenu + #585, #3967
  static telamenu + #586, #3967
  static telamenu + #587, #3967
  static telamenu + #588, #3967
  static telamenu + #589, #3967
  static telamenu + #590, #3967
  static telamenu + #591, #1070
  static telamenu + #592, #3967
  static telamenu + #593, #3967
  static telamenu + #594, #3967
  static telamenu + #595, #3967
  static telamenu + #596, #3967
  static telamenu + #597, #3967
  static telamenu + #598, #1070
  static telamenu + #599, #3967

  ;Linha 15
  static telamenu + #600, #3967
  static telamenu + #601, #3967
  static telamenu + #602, #3967
  static telamenu + #603, #1070
  static telamenu + #604, #3967
  static telamenu + #605, #3967
  static telamenu + #606, #3967
  static telamenu + #607, #3967
  static telamenu + #608, #3967
  static telamenu + #609, #3967
  static telamenu + #610, #3967
  static telamenu + #611, #3967
  static telamenu + #612, #3967
  static telamenu + #613, #3967
  static telamenu + #614, #3967
  static telamenu + #615, #3967
  static telamenu + #616, #3967
  static telamenu + #617, #3967
  static telamenu + #618, #3967
  static telamenu + #619, #3967
  static telamenu + #620, #3967
  static telamenu + #621, #3967
  static telamenu + #622, #3967
  static telamenu + #623, #3967
  static telamenu + #624, #3967
  static telamenu + #625, #3967
  static telamenu + #626, #3967
  static telamenu + #627, #3967
  static telamenu + #628, #3967
  static telamenu + #629, #3967
  static telamenu + #630, #3967
  static telamenu + #631, #3967
  static telamenu + #632, #3967
  static telamenu + #633, #3967
  static telamenu + #634, #3967
  static telamenu + #635, #3967
  static telamenu + #636, #3967
  static telamenu + #637, #3967
  static telamenu + #638, #3967
  static telamenu + #639, #3967

  ;Linha 16
  static telamenu + #640, #3967
  static telamenu + #641, #3967
  static telamenu + #642, #3967
  static telamenu + #643, #3967
  static telamenu + #644, #3967
  static telamenu + #645, #3967
  static telamenu + #646, #3967
  static telamenu + #647, #3967
  static telamenu + #648, #3967
  static telamenu + #649, #3967
  static telamenu + #650, #1070
  static telamenu + #651, #3967
  static telamenu + #652, #3967
  static telamenu + #653, #3967
  static telamenu + #654, #3967
  static telamenu + #655, #3967
  static telamenu + #656, #3967
  static telamenu + #657, #3967
  static telamenu + #658, #3967
  static telamenu + #659, #3967
  static telamenu + #660, #3967
  static telamenu + #661, #3967
  static telamenu + #662, #3967
  static telamenu + #663, #1070
  static telamenu + #664, #3967
  static telamenu + #665, #3967
  static telamenu + #666, #3967
  static telamenu + #667, #3967
  static telamenu + #668, #3967
  static telamenu + #669, #3967
  static telamenu + #670, #3967
  static telamenu + #671, #3967
  static telamenu + #672, #3967
  static telamenu + #673, #3967
  static telamenu + #674, #1070
  static telamenu + #675, #3967
  static telamenu + #676, #3967
  static telamenu + #677, #1070
  static telamenu + #678, #3967
  static telamenu + #679, #3967

  ;Linha 17
  static telamenu + #680, #3967
  static telamenu + #681, #3967
  static telamenu + #682, #3967
  static telamenu + #683, #3967
  static telamenu + #684, #3967
  static telamenu + #685, #3967
  static telamenu + #686, #3967
  static telamenu + #687, #3967
  static telamenu + #688, #3967
  static telamenu + #689, #3967
  static telamenu + #690, #3967
  static telamenu + #691, #3967
  static telamenu + #692, #3967
  static telamenu + #693, #3967
  static telamenu + #694, #3967
  static telamenu + #695, #3967
  static telamenu + #696, #3967
  static telamenu + #697, #3967
  static telamenu + #698, #3967
  static telamenu + #699, #3967
  static telamenu + #700, #3967
  static telamenu + #701, #3967
  static telamenu + #702, #3967
  static telamenu + #703, #3967
  static telamenu + #704, #3967
  static telamenu + #705, #3967
  static telamenu + #706, #3967
  static telamenu + #707, #3967
  static telamenu + #708, #3967
  static telamenu + #709, #3967
  static telamenu + #710, #3967
  static telamenu + #711, #3967
  static telamenu + #712, #3967
  static telamenu + #713, #3967
  static telamenu + #714, #3967
  static telamenu + #715, #3967
  static telamenu + #716, #3967
  static telamenu + #717, #3967
  static telamenu + #718, #3967
  static telamenu + #719, #3967

  ;Linha 18
  static telamenu + #720, #3967
  static telamenu + #721, #3967
  static telamenu + #722, #3967
  static telamenu + #723, #3967
  static telamenu + #724, #3967
  static telamenu + #725, #3967
  static telamenu + #726, #1070
  static telamenu + #727, #3967
  static telamenu + #728, #3967
  static telamenu + #729, #3967
  static telamenu + #730, #3967
  static telamenu + #731, #3967
  static telamenu + #732, #3967
  static telamenu + #733, #3967
  static telamenu + #734, #3967
  static telamenu + #735, #3967
  static telamenu + #736, #3967
  static telamenu + #737, #3967
  static telamenu + #738, #3967
  static telamenu + #739, #3967
  static telamenu + #740, #3967
  static telamenu + #741, #3967
  static telamenu + #742, #3967
  static telamenu + #743, #1070
  static telamenu + #744, #3967
  static telamenu + #745, #3967
  static telamenu + #746, #3967
  static telamenu + #747, #3967
  static telamenu + #748, #1070
  static telamenu + #749, #3967
  static telamenu + #750, #3967
  static telamenu + #751, #3967
  static telamenu + #752, #3967
  static telamenu + #753, #3967
  static telamenu + #754, #3967
  static telamenu + #755, #3967
  static telamenu + #756, #3967
  static telamenu + #757, #3967
  static telamenu + #758, #3967
  static telamenu + #759, #3967

  ;Linha 19
  static telamenu + #760, #1070
  static telamenu + #761, #3967
  static telamenu + #762, #3967
  static telamenu + #763, #3967
  static telamenu + #764, #1070
  static telamenu + #765, #3967
  static telamenu + #766, #3967
  static telamenu + #767, #3967
  static telamenu + #768, #3967
  static telamenu + #769, #3967
  static telamenu + #770, #3967
  static telamenu + #771, #3967
  static telamenu + #772, #3967
  static telamenu + #773, #1070
  static telamenu + #774, #3967
  static telamenu + #775, #3967
  static telamenu + #776, #3967
  static telamenu + #777, #3967
  static telamenu + #778, #1070
  static telamenu + #779, #3967
  static telamenu + #780, #3967
  static telamenu + #781, #3967
  static telamenu + #782, #3967
  static telamenu + #783, #3967
  static telamenu + #784, #3967
  static telamenu + #785, #3967
  static telamenu + #786, #3967
  static telamenu + #787, #3967
  static telamenu + #788, #3967
  static telamenu + #789, #3967
  static telamenu + #790, #3967
  static telamenu + #791, #3967
  static telamenu + #792, #3967
  static telamenu + #793, #3967
  static telamenu + #794, #3967
  static telamenu + #795, #3967
  static telamenu + #796, #3967
  static telamenu + #797, #1070
  static telamenu + #798, #3967
  static telamenu + #799, #3967

  ;Linha 20
  static telamenu + #800, #3967
  static telamenu + #801, #3967
  static telamenu + #802, #3967
  static telamenu + #803, #3967
  static telamenu + #804, #3967
  static telamenu + #805, #3967
  static telamenu + #806, #3967
  static telamenu + #807, #3967
  static telamenu + #808, #3967
  static telamenu + #809, #3967
  static telamenu + #810, #3967
  static telamenu + #811, #3967
  static telamenu + #812, #3967
  static telamenu + #813, #3967
  static telamenu + #814, #3967
  static telamenu + #815, #3967
  static telamenu + #816, #3967
  static telamenu + #817, #3967
  static telamenu + #818, #3967
  static telamenu + #819, #3967
  static telamenu + #820, #3967
  static telamenu + #821, #3967
  static telamenu + #822, #3967
  static telamenu + #823, #3967
  static telamenu + #824, #3967
  static telamenu + #825, #3967
  static telamenu + #826, #3967
  static telamenu + #827, #3967
  static telamenu + #828, #3967
  static telamenu + #829, #3967
  static telamenu + #830, #3967
  static telamenu + #831, #3967
  static telamenu + #832, #3967
  static telamenu + #833, #3967
  static telamenu + #834, #3967
  static telamenu + #835, #3967
  static telamenu + #836, #3967
  static telamenu + #837, #3967
  static telamenu + #838, #3967
  static telamenu + #839, #3967

  ;Linha 21
  static telamenu + #840, #3967
  static telamenu + #841, #3967
  static telamenu + #842, #3967
  static telamenu + #843, #3967
  static telamenu + #844, #3967
  static telamenu + #845, #3967
  static telamenu + #846, #3967
  static telamenu + #847, #3967
  static telamenu + #848, #3967
  static telamenu + #849, #3967
  static telamenu + #850, #1070
  static telamenu + #851, #3967
  static telamenu + #852, #3967
  static telamenu + #853, #3967
  static telamenu + #854, #3967
  static telamenu + #855, #3967
  static telamenu + #856, #3967
  static telamenu + #857, #3967
  static telamenu + #858, #3967
  static telamenu + #859, #3967
  static telamenu + #860, #1070
  static telamenu + #861, #3967
  static telamenu + #862, #3967
  static telamenu + #863, #3967
  static telamenu + #864, #3967
  static telamenu + #865, #3967
  static telamenu + #866, #3967
  static telamenu + #867, #3967
  static telamenu + #868, #3967
  static telamenu + #869, #3967
  static telamenu + #870, #3967
  static telamenu + #871, #1070
  static telamenu + #872, #3967
  static telamenu + #873, #3967
  static telamenu + #874, #3967
  static telamenu + #875, #3967
  static telamenu + #876, #3967
  static telamenu + #877, #3967
  static telamenu + #878, #3967
  static telamenu + #879, #3967

  ;Linha 22
  static telamenu + #880, #3967
  static telamenu + #881, #3967
  static telamenu + #882, #3967
  static telamenu + #883, #3967
  static telamenu + #884, #3967
  static telamenu + #885, #3967
  static telamenu + #886, #3967
  static telamenu + #887, #3967
  static telamenu + #888, #3967
  static telamenu + #889, #3967
  static telamenu + #890, #3967
  static telamenu + #891, #3967
  static telamenu + #892, #3967
  static telamenu + #893, #3967
  static telamenu + #894, #3967
  static telamenu + #895, #3967
  static telamenu + #896, #3967
  static telamenu + #897, #3967
  static telamenu + #898, #3967
  static telamenu + #899, #3967
  static telamenu + #900, #3967
  static telamenu + #901, #3967
  static telamenu + #902, #3967
  static telamenu + #903, #3967
  static telamenu + #904, #3967
  static telamenu + #905, #3967
  static telamenu + #906, #1070
  static telamenu + #907, #3967
  static telamenu + #908, #3967
  static telamenu + #909, #3967
  static telamenu + #910, #3967
  static telamenu + #911, #3967
  static telamenu + #912, #3967
  static telamenu + #913, #3967
  static telamenu + #914, #3967
  static telamenu + #915, #3967
  static telamenu + #916, #3967
  static telamenu + #917, #3967
  static telamenu + #918, #3967
  static telamenu + #919, #3967

  ;Linha 23
  static telamenu + #920, #3967
  static telamenu + #921, #3967
  static telamenu + #922, #3967
  static telamenu + #923, #3967
  static telamenu + #924, #3967
  static telamenu + #925, #3967
  static telamenu + #926, #3967
  static telamenu + #927, #1070
  static telamenu + #928, #3967
  static telamenu + #929, #3967
  static telamenu + #930, #3967
  static telamenu + #931, #3967
  static telamenu + #932, #3967
  static telamenu + #933, #3967
  static telamenu + #934, #1070
  static telamenu + #935, #3967
  static telamenu + #936, #3967
  static telamenu + #937, #3967
  static telamenu + #938, #3967
  static telamenu + #939, #3967
  static telamenu + #940, #3967
  static telamenu + #941, #3967
  static telamenu + #942, #3967
  static telamenu + #943, #3967
  static telamenu + #944, #3967
  static telamenu + #945, #3967
  static telamenu + #946, #3967
  static telamenu + #947, #3967
  static telamenu + #948, #3967
  static telamenu + #949, #3967
  static telamenu + #950, #3967
  static telamenu + #951, #3967
  static telamenu + #952, #3967
  static telamenu + #953, #3967
  static telamenu + #954, #1070
  static telamenu + #955, #3967
  static telamenu + #956, #3967
  static telamenu + #957, #3967
  static telamenu + #958, #3967
  static telamenu + #959, #1070

  ;Linha 24
  static telamenu + #960, #3967
  static telamenu + #961, #1070
  static telamenu + #962, #3967
  static telamenu + #963, #3967
  static telamenu + #964, #3967
  static telamenu + #965, #3967
  static telamenu + #966, #3967
  static telamenu + #967, #3967
  static telamenu + #968, #3967
  static telamenu + #969, #3967
  static telamenu + #970, #3967
  static telamenu + #971, #3967
  static telamenu + #972, #3967
  static telamenu + #973, #3967
  static telamenu + #974, #3967
  static telamenu + #975, #3967
  static telamenu + #976, #3967
  static telamenu + #977, #3967
  static telamenu + #978, #3967
  static telamenu + #979, #3967
  static telamenu + #980, #1070
  static telamenu + #981, #3967
  static telamenu + #982, #3967
  static telamenu + #983, #3967
  static telamenu + #984, #3967
  static telamenu + #985, #3967
  static telamenu + #986, #3967
  static telamenu + #987, #3967
  static telamenu + #988, #3967
  static telamenu + #989, #3967
  static telamenu + #990, #3967
  static telamenu + #991, #3967
  static telamenu + #992, #3967
  static telamenu + #993, #3967
  static telamenu + #994, #3967
  static telamenu + #995, #3967
  static telamenu + #996, #3967
  static telamenu + #997, #3967
  static telamenu + #998, #3967
  static telamenu + #999, #3967

  ;Linha 25
  static telamenu + #1000, #3967
  static telamenu + #1001, #3967
  static telamenu + #1002, #3967
  static telamenu + #1003, #3967
  static telamenu + #1004, #3967
  static telamenu + #1005, #3967
  static telamenu + #1006, #3967
  static telamenu + #1007, #3967
  static telamenu + #1008, #3967
  static telamenu + #1009, #3967
  static telamenu + #1010, #3967
  static telamenu + #1011, #3967
  static telamenu + #1012, #3967
  static telamenu + #1013, #3967
  static telamenu + #1014, #3967
  static telamenu + #1015, #3967
  static telamenu + #1016, #3967
  static telamenu + #1017, #3967
  static telamenu + #1018, #3967
  static telamenu + #1019, #3967
  static telamenu + #1020, #3967
  static telamenu + #1021, #3967
  static telamenu + #1022, #3967
  static telamenu + #1023, #3967
  static telamenu + #1024, #1070
  static telamenu + #1025, #3967
  static telamenu + #1026, #3967
  static telamenu + #1027, #3967
  static telamenu + #1028, #3967
  static telamenu + #1029, #3967
  static telamenu + #1030, #3967
  static telamenu + #1031, #3967
  static telamenu + #1032, #3967
  static telamenu + #1033, #3967
  static telamenu + #1034, #3967
  static telamenu + #1035, #3967
  static telamenu + #1036, #3967
  static telamenu + #1037, #3967
  static telamenu + #1038, #3967
  static telamenu + #1039, #3967

  ;Linha 26
  static telamenu + #1040, #3967
  static telamenu + #1041, #3967
  static telamenu + #1042, #3967
  static telamenu + #1043, #3967
  static telamenu + #1044, #3967
  static telamenu + #1045, #1070
  static telamenu + #1046, #3967
  static telamenu + #1047, #3967
  static telamenu + #1048, #3967
  static telamenu + #1049, #3967
  static telamenu + #1050, #3967
  static telamenu + #1051, #3967
  static telamenu + #1052, #3967
  static telamenu + #1053, #3967
  static telamenu + #1054, #3967
  static telamenu + #1055, #3967
  static telamenu + #1056, #3967
  static telamenu + #1057, #3967
  static telamenu + #1058, #3967
  static telamenu + #1059, #3967
  static telamenu + #1060, #3967
  static telamenu + #1061, #3967
  static telamenu + #1062, #3967
  static telamenu + #1063, #3967
  static telamenu + #1064, #3967
  static telamenu + #1065, #3967
  static telamenu + #1066, #3967
  static telamenu + #1067, #3967
  static telamenu + #1068, #3967
  static telamenu + #1069, #3967
  static telamenu + #1070, #3967
  static telamenu + #1071, #3967
  static telamenu + #1072, #1070
  static telamenu + #1073, #3967
  static telamenu + #1074, #3967
  static telamenu + #1075, #3967
  static telamenu + #1076, #3967
  static telamenu + #1077, #3967
  static telamenu + #1078, #3967
  static telamenu + #1079, #3967

  ;Linha 27
  static telamenu + #1080, #3967
  static telamenu + #1081, #3967
  static telamenu + #1082, #3967
  static telamenu + #1083, #3967
  static telamenu + #1084, #3967
  static telamenu + #1085, #3967
  static telamenu + #1086, #3967
  static telamenu + #1087, #3967
  static telamenu + #1088, #3967
  static telamenu + #1089, #3967
  static telamenu + #1090, #1070
  static telamenu + #1091, #3967
  static telamenu + #1092, #3967
  static telamenu + #1093, #3967
  static telamenu + #1094, #3967
  static telamenu + #1095, #3967
  static telamenu + #1096, #3967
  static telamenu + #1097, #3967
  static telamenu + #1098, #3967
  static telamenu + #1099, #1070
  static telamenu + #1100, #3967
  static telamenu + #1101, #3967
  static telamenu + #1102, #1070
  static telamenu + #1103, #3967
  static telamenu + #1104, #3967
  static telamenu + #1105, #3967
  static telamenu + #1106, #3967
  static telamenu + #1107, #3967
  static telamenu + #1108, #3967
  static telamenu + #1109, #3967
  static telamenu + #1110, #3967
  static telamenu + #1111, #3967
  static telamenu + #1112, #3967
  static telamenu + #1113, #3967
  static telamenu + #1114, #3967
  static telamenu + #1115, #3967
  static telamenu + #1116, #3967
  static telamenu + #1117, #3967
  static telamenu + #1118, #3967
  static telamenu + #1119, #3967

  ;Linha 28
  static telamenu + #1120, #1070
  static telamenu + #1121, #3967
  static telamenu + #1122, #3967
  static telamenu + #1123, #3967
  static telamenu + #1124, #3967
  static telamenu + #1125, #3967
  static telamenu + #1126, #3967
  static telamenu + #1127, #3967
  static telamenu + #1128, #3967
  static telamenu + #1129, #3967
  static telamenu + #1130, #3967
  static telamenu + #1131, #3967
  static telamenu + #1132, #3967
  static telamenu + #1133, #3967
  static telamenu + #1134, #3967
  static telamenu + #1135, #3967
  static telamenu + #1136, #3967
  static telamenu + #1137, #3967
  static telamenu + #1138, #3967
  static telamenu + #1139, #3967
  static telamenu + #1140, #3967
  static telamenu + #1141, #3967
  static telamenu + #1142, #3967
  static telamenu + #1143, #3967
  static telamenu + #1144, #3967
  static telamenu + #1145, #3967
  static telamenu + #1146, #3967
  static telamenu + #1147, #3967
  static telamenu + #1148, #1070
  static telamenu + #1149, #3967
  static telamenu + #1150, #3967
  static telamenu + #1151, #3967
  static telamenu + #1152, #3967
  static telamenu + #1153, #1070
  static telamenu + #1154, #3967
  static telamenu + #1155, #3967
  static telamenu + #1156, #3967
  static telamenu + #1157, #3967
  static telamenu + #1158, #3967
  static telamenu + #1159, #3967

  ;Linha 29
  static telamenu + #1160, #3967
  static telamenu + #1161, #3967
  static telamenu + #1162, #3967
  static telamenu + #1163, #3967
  static telamenu + #1164, #3967
  static telamenu + #1165, #3967
  static telamenu + #1166, #3967
  static telamenu + #1167, #1070
  static telamenu + #1168, #3967
  static telamenu + #1169, #3967
  static telamenu + #1170, #3967
  static telamenu + #1171, #3967
  static telamenu + #1172, #3967
  static telamenu + #1173, #3967
  static telamenu + #1174, #3967
  static telamenu + #1175, #1070
  static telamenu + #1176, #3967
  static telamenu + #1177, #3967
  static telamenu + #1178, #3967
  static telamenu + #1179, #3967
  static telamenu + #1180, #3967
  static telamenu + #1181, #3967
  static telamenu + #1182, #3967
  static telamenu + #1183, #3967
  static telamenu + #1184, #3967
  static telamenu + #1185, #3967
  static telamenu + #1186, #3967
  static telamenu + #1187, #3967
  static telamenu + #1188, #3967
  static telamenu + #1189, #3967
  static telamenu + #1190, #3967
  static telamenu + #1191, #3967
  static telamenu + #1192, #3967
  static telamenu + #1193, #3967
  static telamenu + #1194, #3967
  static telamenu + #1195, #3967
  static telamenu + #1196, #3967
  static telamenu + #1197, #3967
  static telamenu + #1198, #3967
  static telamenu + #1199, #3967



;------------------------------
menu:
	call ApagaTela
	call printtelamenuScreen
	loadn r0, #806
	loadn r1, #Msn2
	loadn r2, #1024
	call ImprimeStr
	loadn r0, #886
	loadn r1, #Msn3
	loadn r2, #1024
	call ImprimeStr
	loadn r0, #966
	loadn r1, #Msn4
	loadn r2, #1024
	call ImprimeStr
	
	menu_loop:	
	call DigLetra
	loadn r0, #'1'
	load r1, Letra
	cmp r0, r1				; tecla == 'n' ?
	jeq main	; tecla e' 'n'
	
	loadn r0, #'2'
	cmp r0, r1				; tecla == 's' ?
	jeq main2	; tecla nao e' 's'
	
	loadn r0, #'0'
	cmp r0, r1
	jne menu_loop
	
	call ApagaTela
	halt
	



;------------------------------
;Codigo principal
main:
	call ApagaTela
	loadn R1, #tela1Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #1024  			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira
    
	loadn R1, #tela2Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #1792  			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira
    
	loadn R1, #tela3Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #2816   			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira

	loadn R1, #tela4Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #256   			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira

	Loadn R0, #1020			
	store posNave, R0		; Zera Posicao Atual da Nave
	store posAntNave, R0	; Zera Posicao Anterior da Nave
	
	store FlagTiro, R0		; Zera o Flag para marcar que ainda nao Atirou!
	store posTiro, R0		; Zera Posicao Atual do Tiro
	store posAntTiro, R0	; Zera Posicao Anterior do Tiro
	
	Loadn R0, #100
	store posAlien, R0		; Zera Posicao Atual do Alien
	store posAntAlien, R0	; Zera Posicao Anterior do Alien
	
	Loadn R0, #0			; Contador para os Mods	= 0
	loadn R2, #0			; Para verificar se (mod(c/10)==0
	call MoveAlien_Desenha
	call MoveNave_Desenha
	
	Loop:
	
		loadn R1, #2    ;padrao eh 10
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/10)==0
		ceq MoveNave	; Chama Rotina de movimentacao da Nave
	
		loadn R1, #7   ;padrao eh 30
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/30)==0
		ceq MoveAlien	; Chama Rotina de movimentacao do Alien
	
		loadn R1, #1	;padrao eh 2
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/2)==0
		ceq MoveTiro	; Chama Rotina de movimentacao do Tiro
	
		call Delay
		inc R0 	;c++
		jmp Loop


main2:
	call ApagaTela
	loadn R1, #tela1Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #1024  			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira
    
	loadn R1, #tela2Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #1792  			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira
    
	loadn R1, #tela3Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #2816   			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira

	loadn R1, #tela4Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #256   			; cor branca!
	call ImprimeTela2   		;  Rotina de Impresao de Cenario na Tela Inteira

	loadn R0, #1020			
	store posNave, R0		; Zera Posicao Atual da Nave
	store posAntNave, R0	; Zera Posicao Anterior da Nave
	
	store FlagTiro, R0		; Zera o Flag para marcar que ainda nao Atirou!
	store posTiro, R0		; Zera Posicao Atual do Tiro
	store posAntTiro, R0	; Zera Posicao Anterior do Tiro
	
	;Loadn R0, #100
	;store posAlien, R0		; Zera Posicao Atual do Alien
	;store posAntAlien, R0	; Zera Posicao Anterior do Alien
	
	loadn R0, #100
	store FlagTiro2, R0
	store posNave2, R0
	store posAntNave2, R0
	
	Loadn R0, #0			; Contador para os Mods	= 0
	loadn R2, #0			; Para verificar se (mod(c/10)==0
	
	call MoveNave_Desenha
	call MoveNave2_Desenha
	
	Loop2:
	
		loadn R1, #1    ;padrao eh 10
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/10)==0
		ceq MoveNave_Multi	; Chama Rotina de movimentacao da Nave
		
		
		loadn R1, #1    ;padrao eh 10
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/10)==0
		ceq MoveNave2	; Chama Rotina de movimentacao da Nave
	
		loadn R1, #1	;padrao eh 2
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/2)==0
		ceq MoveTiro_Multi	; Chama Rotina de movimentacao do Tiro
		
		
		loadn R1, #1	;padrao eh 2
		mod R1, R0, R1
		cmp R1, R2		; if (mod(c/2)==0
		ceq MoveTiro2	; Chama Rotina de movimentacao do Tiro
	
		call Delay
		inc R0 	;c++
		jmp Loop2








;Funcoes
;--------------------------

printtelamenuScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #telamenu
  loadn R1, #0
  loadn R2, #1200

  printtelamenuScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printtelamenuScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts


MoveNave:
	push r0
	push r1
	
	call MoveNave_RecalculaPos		; Recalcula Posicao da Nave

; So' Apaga e Redesenha se (pos != posAnt)
;	If (posNave != posAntNave)	{	
	load r0, posNave
	load r1, posAntNave
	cmp r0, r1
	jeq MoveNave_Skip
		call MoveNave_Apaga
		call MoveNave_Desenha		;}
  MoveNave_Skip:
	
	pop r1
	pop r0
	rts
	

MoveNave_Multi:
	push r0
	push r1
	
	call MoveNave_RecalculaPos_Multi		; Recalcula Posicao da Nave

; So' Apaga e Redesenha se (pos != posAnt)
;	If (posNave != posAntNave)	{	
	load r0, posNave
	load r1, posAntNave
	cmp r0, r1
	jeq MoveNave_Skip
		call MoveNave_Apaga
		call MoveNave_Desenha		;}
MoveNave_Skip:
	
	pop r1
	pop r0
	rts
	
	
;------------------------------
MoveNave2:
	push r0
	push r1
	
	call MoveNave_RecalculaPos_Multi		; Recalcula Posicao da Nave

; So' Apaga e Redesenha se (pos != posAnt)
;	If (posNave != posAntNave)	{	
	load r0, posNave2
	load r1, posAntNave2
	cmp r0, r1
	jeq MoveNave2_Skip
		call MoveNave2_Apaga
		call MoveNave2_Desenha		;}
MoveNave2_Skip:
	
	pop r1
	pop r0
	rts

;--------------------------------
	
MoveNave_Apaga:		; Apaga a Nave preservando o Cenario!
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5

	load R0, posAntNave	; R0 = posAnt
	
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!

	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))
	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts


MoveNave2_Apaga:		; Apaga a Nave preservando o Cenario!
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5

	load R0, posAntNave2	; R0 = posAnt
	
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!

	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))
	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
;----------------------------------	
	
MoveNave_RecalculaPos:		; Recalcula posicao da Nave em funcao das Teclas pressionadas
	push R0
	push R1
	push R2
	push R3

	load R0, posNave
	
	inchar R1				; Le Teclado para controlar a Nave
	loadn R2, #'a'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_A
	
	loadn R2, #'d'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_D
		
	loadn R2, #'w'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_W
		
	loadn R2, #'s'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_S
	
	loadn R2, #' '
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Tiro
	
  MoveNave_RecalculaPos_Fim:	; Se nao for nenhuma tecla valida, vai embora
	store posNave, R0
	pop R3
	pop R2
	pop R1
	pop R0
	rts

  MoveNave_RecalculaPos_A:	; Move Nave para Esquerda
	loadn R1, #40
	loadn R2, #0
	mod R1, R0, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim
	dec R0	; pos = pos -1
	jmp MoveNave_RecalculaPos_Fim
		
  MoveNave_RecalculaPos_D:	; Move Nave para Direita	
	loadn R1, #40
	loadn R2, #39
	mod R1, R0, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim
	inc R0	; pos = pos + 1
	jmp MoveNave_RecalculaPos_Fim
	
  MoveNave_RecalculaPos_W:	; Move Nave para Cima
	loadn R1, #40
	cmp R0, R1		; Testa condicoes de Contorno 
	jle MoveNave_RecalculaPos_Fim
	sub R0, R0, R1	; pos = pos - 40
	jmp MoveNave_RecalculaPos_Fim

  MoveNave_RecalculaPos_S:	; Move Nave para Baixo
	loadn R1, #1159
	cmp R0, R1		; Testa condicoes de Contorno 
	jgr MoveNave_RecalculaPos_Fim
	loadn R1, #40
	add R0, R0, R1	; pos = pos + 40
	jmp MoveNave_RecalculaPos_Fim	
	
  MoveNave_RecalculaPos_Tiro:	
	loadn R1, #1			; Se Atirou:
	store FlagTiro, R1		; FlagTiro = 1
	store posTiro, R0		; posTiro = posNave
	jmp MoveNave_RecalculaPos_Fim	


MoveNave_RecalculaPos_Multi:		; Recalcula posicao da Nave em funcao das Teclas pressionadas
	push R0
	push R1
	push R2
	push R3
	push R4

	load R0, posNave
	load R4, posNave2
	
	inchar R1				; Le Teclado para controlar a Nave
	loadn R2, #'a'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_A_Multi
	
	loadn R2, #'j'
	cmp R1, R2
	jeq MoveNave2_RecalculaPos_A_Multi
	
	loadn R2, #'d'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_D_Multi
	
	loadn R2, #'l'
	cmp R1, R2
	jeq MoveNave2_RecalculaPos_D_Multi
		
	loadn R2, #'w'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_W_Multi
	
	loadn R2, #'i'
	cmp R1, R2
	jeq MoveNave2_RecalculaPos_W_Multi
		
	loadn R2, #'s'
	cmp R1, R2
	jeq MoveNave_RecalculaPos_S_Multi
	
	loadn R2, #'k'
	cmp R1, R2
	jeq MoveNave2_RecalculaPos_S_Multi
	
	loadn R2, #' '
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Tiro_Multi
	
	loadn R2, #'/'
	cmp R1, R2
	jeq MoveNave2_RecalculaPos_Tiro_Multi
	
	
  MoveNave_RecalculaPos_Fim_Multi:	; Se nao for nenhuma tecla valida, vai embora
	store posNave, R0
	store posNave2, R4
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts

MoveNave_RecalculaPos_A_Multi:	; Move Nave para Esquerda
	loadn R1, #40
	loadn R2, #0
	mod R1, R0, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim_Multi
	dec R0	; pos = pos -1
	jmp MoveNave_RecalculaPos_Fim_Multi

MoveNave2_RecalculaPos_A_Multi:	; Move Nave para Esquerda
	loadn R1, #40
	loadn R2, #0
	mod R1, R4, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim_Multi
	dec R4	; pos = pos -1
	jmp MoveNave_RecalculaPos_Fim_Multi

;------------------
MoveNave_RecalculaPos_D_Multi:	; Move Nave para Direita	
	loadn R1, #40
	loadn R2, #39
	mod R1, R0, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim_Multi
	inc R0	; pos = pos + 1
	jmp MoveNave_RecalculaPos_Fim_Multi
	
MoveNave2_RecalculaPos_D_Multi:	; Move Nave para Direita	
	loadn R1, #40
	loadn R2, #39
	mod R1, R4, R1		; Testa condicoes de Contorno 
	cmp R1, R2
	jeq MoveNave_RecalculaPos_Fim_Multi
	inc R4	; pos = pos + 1
	jmp MoveNave_RecalculaPos_Fim_Multi

;------------------
MoveNave_RecalculaPos_W_Multi:	; Move Nave para Cima
	loadn R1, #40
	cmp R0, R1		; Testa condicoes de Contorno 
	jle MoveNave_RecalculaPos_Fim_Multi
	sub R0, R0, R1	; pos = pos - 40
	jmp MoveNave_RecalculaPos_Fim_Multi
	
MoveNave2_RecalculaPos_W_Multi:	; Move Nave para Cima
	loadn R1, #40
	cmp R4, R1		; Testa condicoes de Contorno 
	jle MoveNave_RecalculaPos_Fim_Multi
	sub R4, R4, R1	; pos = pos - 40
	jmp MoveNave_RecalculaPos_Fim_Multi

;------------------
MoveNave_RecalculaPos_S_Multi:	; Move Nave para Baixo
	loadn R1, #1159
	cmp R0, R1		; Testa condicoes de Contorno 
	jgr MoveNave_RecalculaPos_Fim_Multi
	loadn R1, #40
	add R0, R0, R1	; pos = pos + 40
	jmp MoveNave_RecalculaPos_Fim_Multi

MoveNave2_RecalculaPos_S_Multi:	; Move Nave para Baixo
	loadn R1, #1159
	cmp R4, R1		; Testa condicoes de Contorno 
	jgr MoveNave_RecalculaPos_Fim_Multi
	loadn R1, #40
	add R4, R4, R1	; pos = pos + 40
	jmp MoveNave_RecalculaPos_Fim_Multi

;------------------
MoveNave_RecalculaPos_Tiro_Multi:	
	loadn R1, #1			; Se Atirou:
	store FlagTiro, R1		; FlagTiro = 1
	store posTiro, R0		; posTiro = posNave
	jmp MoveNave_RecalculaPos_Fim_Multi	

MoveNave2_RecalculaPos_Tiro_Multi:	
	loadn R1, #1			; Se Atirou:
	store FlagTiro2, R1		; FlagTiro = 1
	store posTiro2, R4		; posTiro = posNave
	jmp MoveNave_RecalculaPos_Fim_Multi	
	
	


;----------------------------------
MoveNave_Desenha:	; Desenha caractere da Nave
	push R0
	push R1
	push R2
	
	Loadn R1, #8	; Nave
	loadn R2, #2048
	add R1, R1, R2
	load R0, posNave
	outchar R1, R0
	store posAntNave, R0	; Atualiza Posicao Anterior da Nave = Posicao Atual
	
	pop R2
	pop R1
	pop R0
	rts

;--------------------------
MoveNave2_Desenha:	; Desenha caractere da Nave
	push R0
	push R1
	push R2
	
	Loadn R1, #9	; Nave
	loadn R2, #512
	add R1, R1, R2
	load R0, posNave2
	outchar R1, R0
	store posAntNave2, R0	; Atualiza Posicao Anterior da Nave = Posicao Atual
	
	pop R2
	pop R1
	pop R0
	rts
	
;----------------------------------
;----------------------------------
;----------------------------------

MoveAlien:
	push r0
	push r1
	
	call MoveAlien_RecalculaPos
	
; So' Apaga e Redezenha se (pos != posAnt)
;	If (pos != posAnt)	{	
	load r0, posAlien
	load r1, posAntAlien
	cmp r0, r1
	jeq MoveAlien_Skip
		call MoveAlien_Apaga
		call MoveAlien_Desenha		;}
  MoveAlien_Skip:
	
	pop r1
	pop r0
	rts
		
; ----------------------------
		
MoveAlien_Apaga:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5
	push R6
	
	loadn R6, #2048
	load R0, posAntAlien	; R0 == posAnt
	load R1, posAntNave		; R1 = posAnt
	cmp r0, r1
	jne MoveAlien_Apaga_Skip
		loadn r5, #8		; Se o Tiro passa sobre a Nave, apaga com um X, senao apaga com o cenario 
		add r5, r5, r6
		jmp MoveAlien_Apaga_Fim

  MoveAlien_Apaga_Skip:	
  
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!
	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))
  
  MoveAlien_Apaga_Fim:	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	
	pop R6
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
;----------------------------------	
; sorteia nr. randomico entre 0 - 7
;					switch rand
;						case 0 : posNova = posAnt -41
;						case 1 : posNova = posAnt -40
;						case 2 : posNova = posAnt -39
;						case 3 : posNova = posAnt -1
;						case 4 : posNova = posAnt +1
;						case 5 : posNova = posAnt +39
;						case 6 : posNova = posAnt +40
;						case 7 : posNova = posAnt +41
	
MoveAlien_RecalculaPos:
	push R0
	push R1
	push R2
	push R3

	load R0, posAlien

; sorteia nr. randomico entre 0 - 7
	loadn R2, #Rand 	; declara ponteiro para tabela rand na memoria!
	load R1, IncRand	; Pega Incremento da tabela Rand
	add r2, r2, r1		; Soma Incremento ao inicio da tabela Rand
						; R2 = Rand + IncRand
	loadi R3, R2 		; busca nr. randomico da memoria em R3
						; R3 = Rand(IncRand)				
	inc r1				; Incremento ++
	loadn r2, #30
	cmp r1, r2			; Compara com o Final da Tabela e re-estarta em 0
	jne MoveAlien_RecalculaPos_Skip
		loadn r1, #0		; re-estarta a Tabela Rand em 0
  MoveAlien_RecalculaPos_Skip:
	store IncRand, r1	; Salva incremento ++

; Switch Rand (r3)
 ; Case 0 : posAlien = posAlien -41
	loadn r2, #0
	cmp r3, r2	; Se Rand = 0
	jne MoveAlien_RecalculaPos_Case1
	loadn r1, #41
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 1 : posAlien = posAlien -40
   MoveAlien_RecalculaPos_Case1:
	loadn r2, #1
	cmp r3, r2	; Se Rand = 1
	jne MoveAlien_RecalculaPos_Case2
	loadn r1, #40
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 2 : posAlien = posAlien - 39
   MoveAlien_RecalculaPos_Case2:
	loadn r2, #2	; Se Rand = 2
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case3
	loadn r1, #39
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 3 : posAlien = posAlien - 1
   MoveAlien_RecalculaPos_Case3:
	loadn r2, #3	; Se Rand = 3
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case4
	loadn r1, #1
	sub r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 4 : posAlien = posAlien + 1	
   MoveAlien_RecalculaPos_Case4:
	loadn r2, #4	; Se Rand = 4
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case5
	loadn r1, #1
	add r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 5 : posAlien = posAlien + 39
   MoveAlien_RecalculaPos_Case5:
	loadn r2, #5	; Se Rand = 5
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case6
	loadn r1, #39
	add r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch

 ; Case 6 : posAlien = posAlien + 40
   MoveAlien_RecalculaPos_Case6:
	loadn r2, #6	; Se Rand = 6
	cmp r3, r2
	jne MoveAlien_RecalculaPos_Case7
	loadn r1, #40
	add r0, r0, r1
	jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch	

 ; Case 7 : posAlien = posAlien + 41
   MoveAlien_RecalculaPos_Case7:
	loadn r2, #7	; Se Rand = 7
	cmp r3, r2
	jne MoveAlien_RecalculaPos_FimSwitch
	loadn r1, #41
	add r0, r0, r1
	;jmp MoveAlien_RecalculaPos_FimSwitch	; Break do Switch	

 ; Fim Switch:
  MoveAlien_RecalculaPos_FimSwitch:	
	store posAlien, R0	; Grava a posicao alterada na memoria
	pop R3
	pop R2
	pop R1
	pop R0
	rts


;----------------------------------
MoveAlien_Desenha:
	push R0
	push R1
	push R2
	
	Loadn R1, #9	; Alien
	loadn R2, #512
	add R1, R1, R2
	load R0, posAlien
	outchar R1, R0
	store posAntAlien, R0
	
	pop R2
	pop R1
	pop R0
	rts

;----------------------------------
;----------------------------------
;--------------------------

MoveTiro:
	push r0
	push r1
	
	call MoveTiro_RecalculaPos

; So' Apaga e Redezenha se (pos != posAnt)
;	If (pos != posAnt)	{	
	load r0, posTiro
	load r1, posAntTiro
	cmp r0, r1
	jeq MoveTiro_Skip
		call MoveTiro_Apaga
		call MoveTiro_Desenha		;}
  MoveTiro_Skip:
	
	pop r1
	pop r0
	rts


;---------------------
MoveTiro_Multi:
	push r0
	push r1
	
	call MoveTiro_RecalculaPos_Multi

; So' Apaga e Redezenha se (pos != posAnt)
;	If (pos != posAnt)	{	
	load r0, posTiro
	load r1, posAntTiro
	cmp r0, r1
	jeq MoveTiro_Skip
		call MoveTiro_Apaga
		call MoveTiro_Desenha		;}
  MoveTiro_Skip:
	
	pop r1
	pop r0
	rts

;--------------------------------

MoveTiro2:
	push r0
	push r1
	
	call MoveTiro2_RecalculaPos

; So' Apaga e Redezenha se (pos != posAnt)
;	If (pos != posAnt)	{	
	load r0, posTiro2
	load r1, posAntTiro2
	cmp r0, r1
	jeq MoveTiro2_Skip
		call MoveTiro2_Apaga
		call MoveTiro2_Desenha		;}
  MoveTiro2_Skip:
	
	pop r1
	pop r0
	rts

;-----------------------------
	
MoveTiro_Apaga:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5
	push R6

	; Compara Se (posAntTiro == posAntNave)
	load R0, posAntTiro	; R0 = posAnt
	load R1, posAntNave	; R1 = posAnt
	loadn R6, #2048
	cmp r0, r1
	jne MoveTiro_Apaga_Skip1
		loadn r5, #8		; Se o Tiro passa sobre a Nave, apaga com um X, senao apaga com o cenario 
		add r5, r5, r6
		jmp MoveTiro_Apaga_Fim
		
  MoveTiro_Apaga_Skip1:	
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!
	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))

  MoveTiro_Apaga_Fim:	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	
	pop R6
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
;----------------------------------	

MoveTiro2_Apaga:
	push R0
	push R1
	push R2
	push R3
	push R4
	push R5
	push R6

	; Compara Se (posAntTiro == posAntNave)
	load R0, posAntTiro2	; R0 = posAnt
	load R1, posAntNave2	; R1 = posAnt
	loadn R6, #512
	cmp r0, r1
	jne MoveTiro2_Apaga_Skip1
		loadn r5, #9		; Se o Tiro passa sobre a Nave, apaga com um X, senao apaga com o cenario 
		add r5, r5, r6
		jmp MoveTiro2_Apaga_Fim
		
  MoveTiro2_Apaga_Skip1:	
	; --> R2 = Tela1Linha0 + posAnt + posAnt/40  ; tem que somar posAnt/40 no ponteiro pois as linas da string terminam com /0 !!
	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	add R2, R1, r0	; R2 = Tela1Linha0 + posAnt
	loadn R4, #40
	div R3, R0, R4	; R3 = posAnt/40
	add R2, R2, R3	; R2 = Tela1Linha0 + posAnt + posAnt/40
	
	loadi R5, R2	; R5 = Char (Tela(posAnt))

  MoveTiro2_Apaga_Fim:	
	outchar R5, R0	; Apaga o Obj na tela com o Char correspondente na memoria do cenario
	
	pop R6
	pop R5
	pop R4
	pop R3
	pop R2
	pop R1
	pop R0
	rts
;----------------------------------
	
; if TiroFlag = 1
;	posTiro++
;	
	
MoveTiro_RecalculaPos:
	push R0
	push R1
	push R2
	
	push R3
	
	load R1, FlagTiro	; Se Atirou, movimenta o tiro!
	loadn R2, #1
	cmp R1, R2			; If FlagTiro == 1  Movimenta o Tiro
	jne MoveTiro_RecalculaPos_Fim2	; Se nao vai embora!
	
	load R0, posTiro	; TEsta se o Tiro Pegou no Alien
	load R1, posAlien
	cmp R0, R1			; IF posTiro == posAlien  BOOM!!
	jeq MoveTiro_RecalculaPos_Boom
	
	loadn R1, #40		; Testa condicoes de Contorno 
	load R2, posTiro
	mod R1, R0, R1		
	cmp R1, R2			; Se tiro chegou na ultima linha
	jne MoveTiro_RecalculaPos_Fim
	
	call MoveTiro_Apaga
	loadn R0, #0
	store FlagTiro, R0	; Zera FlagTiro
	store posTiro, R0	; Zera e iguala posTiro e posAntTiro
	store posAntTiro, R0
	jmp MoveTiro_RecalculaPos_Fim2	
	
  MoveTiro_RecalculaPos_Fim:
	;inc R0
	
	loadn R3, #40
	sub R0, R0, R3
	;add R0, R3, R0
	
	store posTiro, R0
	
  MoveTiro_RecalculaPos_Fim2:	
  	pop R3
  	
	pop R2
	pop R1
	pop R0
	rts

  MoveTiro_RecalculaPos_Boom:	
	; Limpa a Tela !!
  	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0  			; cor branca!
	call ImprimeTela   		;  Rotina de Impresao de Cenario na Tela Inteira
  
	;imprime Voce Venceu !!!
	loadn r0, #526
	loadn r1, #Msn0
	loadn r2, #0
	call ImprimeStr
	
	;imprime quer jogar novamente
	loadn r0, #605
	loadn r1, #Msn1
	loadn r2, #0
	call ImprimeStr

	MoveTiro_RecalculaPos_Boom_Loop:	
	call DigLetra
	loadn r0, #'n'
	load r1, Letra
	cmp r0, r1				; tecla == 'n' ?
	jeq MoveTiro_RecalculaPos_Boom_FimJogo	; tecla e' 'n'
	
	loadn r0, #'s'
	cmp r0, r1				; tecla == 's' ?
	jne MoveTiro_RecalculaPos_Boom_Loop	; tecla nao e' 's'
	
	
	
	; Se quiser jogar novamente...
	call ApagaTela
	
	pop r2
	pop r1
	pop r0

	pop r0	; Da um Pop a mais para acertar o ponteiro da pilha, pois nao vai dar o RTS !!
	jmp main

 MoveTiro_RecalculaPos_Boom_FimJogo:
 	jmp menu
	;call ApagaTela
	;halt


;-------------------------------
MoveTiro_RecalculaPos_Multi:
	push R0
	push R1
	push R2
	push R3
	
	
	load R1, FlagTiro	; Se Atirou, movimenta o tiro!
	loadn R2, #1
	cmp R1, R2			; If FlagTiro == 1  Movimenta o Tiro
	jne MoveTiro_RecalculaPos_Fim2_Multi	; Se nao vai embora!
	
	load R0, posTiro	; TEsta se o Tiro Pegou no Alien
	load R1, posAntNave2
	cmp R0, R1			; IF posTiro == posAlien  BOOM!!
	jeq MoveTiro_RecalculaPos_Boom_Multi
	
	loadn R1, #40		; Testa condicoes de Contorno 
	load R2, posTiro
	
	mod R1, R0, R1    ;R1 = R0 % 40
	cmp R1, R2			; Se tiro chegou na ultima linha
	jne MoveTiro_RecalculaPos_Fim_Multi
	call MoveTiro_Apaga
	loadn R0, #0
	store FlagTiro, R0	; Zera FlagTiro
	store posTiro, R0	; Zera e iguala posTiro e posAntTiro
	store posAntTiro, R0
	jmp MoveTiro_RecalculaPos_Fim2_Multi	
	
  MoveTiro_RecalculaPos_Fim_Multi:
	;inc R0
	
	loadn R3, #40
	sub R0, R0, R3
	;add R0, R3, R0
	
	store posTiro, R0
	
  MoveTiro_RecalculaPos_Fim2_Multi:	
  	
  	pop R3
	pop R2
	pop R1
	pop R0
	rts

  MoveTiro_RecalculaPos_Boom_Multi:	
	; Limpa a Tela !!
  	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0  			; cor branca!
	call ImprimeTela   		;  Rotina de Impresao de Cenario na Tela Inteira
  
	;imprime Voce Venceu !!!

	loadn r0, #523
	loadn r1, #Msn5
	loadn r2, #0
	call ImprimeStr
	
	;imprime quer jogar novamente
	loadn r0, #605
	loadn r1, #Msn1
	loadn r2, #0
	call ImprimeStr

	MoveTiro_RecalculaPos_Boom_Loop_Multi:	
	call DigLetra
	loadn r0, #'n'
	load r1, Letra
	cmp r0, r1				; tecla == 'n' ?
	jeq MoveTiro_RecalculaPos_Boom_FimJogo_Multi	; tecla e' 'n'
	
	loadn r0, #'s'
	cmp r0, r1				; tecla == 's' ?
	jne MoveTiro_RecalculaPos_Boom_Loop_Multi	; tecla nao e' 's'
	
	
	
	; Se quiser jogar novamente...
	call ApagaTela
	
	pop r2
	pop r1
	pop r0

	pop r0	; Da um Pop a mais para acertar o ponteiro da pilha, pois nao vai dar o RTS !!
	jmp main2

 MoveTiro_RecalculaPos_Boom_FimJogo_Multi:
	jmp menu


;----------------------------------

MoveTiro2_RecalculaPos:
	push R0
	push R1
	push R2
	push R3
	push R4
	
	load R1, FlagTiro2	; Se Atirou, movimenta o tiro!
	loadn R2, #1
	cmp R1, R2			; If FlagTiro == 1  Movimenta o Tiro
	jne MoveTiro2_RecalculaPos_Fim2	; Se nao vai embora!
	
	load R0, posTiro2	; TEsta se o Tiro Pegou na nave1
	load R1, posAntNave
	cmp R0, R1			; IF posTiro == posAlien  BOOM!!
	jeq MoveTiro2_RecalculaPos_Boom
	
	loadn R1, #1160		; Testa condicoes de Contorno 
	load R2, posTiro2
	mod R1, R0, R1
	loadn R4, #1160
	add R1, R1, R4		
	cmp R1, R2			; Se tiro chegou na ultima linha
	jne MoveTiro2_RecalculaPos_Fim
	
	
	call MoveTiro2_Apaga
	loadn R0, #0
	store FlagTiro2, R0	; Zera FlagTiro
	store posTiro2, R0	; Zera e iguala posTiro e posAntTiro
	store posAntTiro2, R0
	jmp MoveTiro2_RecalculaPos_Fim2	
	
  MoveTiro2_RecalculaPos_Fim:
	;inc R0
	
	loadn R3, #40
	add R0, R0, R3
	;add R0, R3, R0
	
	store posTiro2, R0
	
  MoveTiro2_RecalculaPos_Fim2:	
  	pop R4
  	pop R3
	pop R2
	pop R1
	pop R0
	rts

  MoveTiro2_RecalculaPos_Boom:	
	; Limpa a Tela !!
  	loadn R1, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	loadn R2, #0  			; cor branca!
	call ImprimeTela   		;  Rotina de Impresao de Cenario na Tela Inteira
  
	;imprime Voce Venceu !!!
	loadn r0, #523
	loadn r1, #Msn6
	loadn r2, #0
	call ImprimeStr
	
	;imprime quer jogar novamente
	loadn r0, #605
	loadn r1, #Msn1
	loadn r2, #0
	call ImprimeStr

	MoveTiro2_RecalculaPos_Boom_Loop:	
	call DigLetra
	loadn r0, #'n'
	load r1, Letra
	cmp r0, r1				; tecla == 'n' ?
	jeq MoveTiro2_RecalculaPos_Boom_FimJogo	; tecla e' 'n'
	
	loadn r0, #'s'
	cmp r0, r1				; tecla == 's' ?
	jne MoveTiro2_RecalculaPos_Boom_Loop	; tecla nao e' 's'
	
	
	
	; Se quiser jogar novamente...
	call ApagaTela
	
	pop r2
	pop r1
	pop r0

	pop r0	; Da um Pop a mais para acertar o ponteiro da pilha, pois nao vai dar o RTS !!
	jmp main2

 MoveTiro2_RecalculaPos_Boom_FimJogo:
	jmp menu

;----------------------------------

;----------------------------------
MoveTiro_Desenha:
	push R0
	push R1
	push R2
	
	loadn R2, #1536
	loadn R1, #'|'	; Tiro
	add R1, R1, R2
	load R0, posTiro
	outchar R1, R0
	store posAntTiro, R0
	
	pop R2
	pop R1
	pop R0
	rts

;-------------------

MoveTiro2_Desenha:
	push R0
	push R1
	push R2
	
	loadn R2, #2304
	loadn R1, #'|'	; Tiro
	add R1, R1, R2
	load R0, posTiro2
	outchar R1, R0
	store posAntTiro2, R0
	
	pop R2
	pop R1
	pop R0
	rts

;----------------------------------

;********************************************************
;                       DELAY
;********************************************************		


Delay:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	Push R0
	Push R1
	
	Loadn R1, #50  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #3000	; b
   Delay_volta: 
	Dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	JNZ Delay_volta	
	Dec R1
	JNZ Delay_volta2
	
	Pop R1
	Pop R0
	
	RTS							;return

;-------------------------------


;********************************************************
;                       IMPRIME TELA
;********************************************************	

ImprimeTela: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r4 na pilha para ser usado na subrotina

	loadn R0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn R3, #40  	; Incremento da posicao da tela!
	loadn R4, #41  	; incremento do ponteiro das linhas da tela
	loadn R5, #1200 ; Limite da tela!
	
   ImprimeTela_Loop:
		call ImprimeStr
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela_Loop	; Enquanto r0 < 1200

	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

;---------------------------	
;********************************************************
;                   IMPRIME STRING
;********************************************************
	
ImprimeStr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr_Sai
		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		jmp ImprimeStr_Loop
	
   ImprimeStr_Sai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
;------------------------	
	

;-------------------------------


;********************************************************
;                       IMPRIME TELA2
;********************************************************	

ImprimeTela2: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6	; protege o r6 na pilha para ser usado na subrotina

	loadn R0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn R3, #40  	; Incremento da posicao da tela!
	loadn R4, #41  	; incremento do ponteiro das linhas da tela
	loadn R5, #1200 ; Limite da tela!
	loadn R6, #tela0Linha0	; Endereco onde comeca a primeira linha do cenario!!
	
   ImprimeTela2_Loop:
		call ImprimeStr2
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		add r6, r6, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela2_Loop	; Enquanto r0 < 1200

	pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

;---------------------------	
;********************************************************
;                   IMPRIME STRING2
;********************************************************
	
ImprimeStr2:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6	; protege o r6 na pilha para ser usado na subrotina
	
	
	loadn r3, #'\0'	; Criterio de parada
	loadn r5, #' '	; Espaco em Branco

   ImprimeStr2_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr2_Sai
		cmp r4, r5		; If (Char == ' ')  vai Pula outchar do espaco para na apagar outros caracteres
		jeq ImprimeStr2_Skip
		add r4, r2, r4	; Soma a Cor
		outchar r4, r0	; Imprime o caractere na tela
   		storei r6, r4
   ImprimeStr2_Skip:
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		inc r6
		jmp ImprimeStr2_Loop
	
   ImprimeStr2_Sai:	
	pop r6	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	

;------------------------		
;********************************************************
;                   DIGITE UMA LETRA
;********************************************************

DigLetra:	; Espera que uma tecla seja digitada e salva na variavel global "Letra"
	push r0
	push r1
	loadn r1, #255	; Se nao digitar nada vem 255

   DigLetra_Loop:
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq DigLetra_Loop	; Fica lendo ate' que digite uma tecla valida

	store Letra, r0			; Salva a tecla na variavel global "Letra"

	pop r1
	pop r0
	rts



;----------------
	
;********************************************************
;                       APAGA TELA
;********************************************************
ApagaTela:
	push r0
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	;;label for(r0=1200;r3>0;r3--)
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts	
	
;------------------------	
; Declara uma tela vazia para ser preenchida em tempo de execussao:

tela0Linha0  : string "                                        "
tela0Linha1  : string "                                        "
tela0Linha2  : string "                                        "
tela0Linha3  : string "                                        "
tela0Linha4  : string "                                        "
tela0Linha5  : string "                                        "
tela0Linha6  : string "                                        "
tela0Linha7  : string "                                        "
tela0Linha8  : string "                                        "
tela0Linha9  : string "                                        "
tela0Linha10 : string "                                        "
tela0Linha11 : string "                                        "
tela0Linha12 : string "                                        "
tela0Linha13 : string "                                        "
tela0Linha14 : string "                                        "
tela0Linha15 : string "                                        "
tela0Linha16 : string "                                        "
tela0Linha17 : string "                                        "
tela0Linha18 : string "                                        "
tela0Linha19 : string "                                        "
tela0Linha20 : string "                                        "
tela0Linha21 : string "                                        "
tela0Linha22 : string "                                        "
tela0Linha23 : string "                                        "
tela0Linha24 : string "                                        "
tela0Linha25 : string "                                        "
tela0Linha26 : string "                                        "
tela0Linha27 : string "                                        "
tela0Linha28 : string "                                        "
tela0Linha29 : string "                                        "	

; Declara e preenche tela linha por linha (40 caracteres):
tela1Linha0  : string "           .                       .    "
tela1Linha1  : string "     .                         .       ."
tela1Linha2  : string "         .         .                .   "
tela1Linha3  : string "    .                                   "
tela1Linha4  : string "   .                  .              .  "
tela1Linha5  : string "             .               .          "
tela1Linha6  : string "     .                                  "
tela1Linha7  : string "                     .                  "
tela1Linha8  : string "              .                    .    "
tela1Linha9  : string "     .                   .              "
tela1Linha10 : string "                                        "
tela1Linha11 : string "       .                                "
tela1Linha12 : string "                 .                   .  "
tela1Linha13 : string "                             .          "
tela1Linha14 : string "   .   .                   .            "
tela1Linha15 : string "                               .     .  "
tela1Linha16 : string "             .                          "
tela1Linha17 : string "    .                 .     .           "
tela1Linha18 : string "                  .                     "
tela1Linha19 : string "              .                 .       "
tela1Linha20 : string "    .    .                 .            "
tela1Linha21 : string "   .                    .             . "
tela1Linha22 : string "              .                 .       "
tela1Linha23 : string "                                        "
tela1Linha24 : string "  .                               .     "
tela1Linha25 : string "          .      .            .         "
tela1Linha26 : string "                                        "
tela1Linha27 : string "        .                    .      .   "
tela1Linha28 : string "                                  .     "
tela1Linha29 : string "    .               .                   "


tela2Linha0  : string "                                        "
tela2Linha1  : string "                                        "
tela2Linha2  : string "                                        "
tela2Linha3  : string "                                        "
tela2Linha4  : string "                                        "
tela2Linha5  : string "                                        "
tela2Linha6  : string "                                        "
tela2Linha7  : string "                                        "
tela2Linha8  : string "                                        "
tela2Linha9  : string "                                        "
tela2Linha10 : string "                                        "
tela2Linha11 : string "                                        "
tela2Linha12 : string "                                        "
tela2Linha13 : string "                                        "
tela2Linha14 : string "                                        "
tela2Linha15 : string "                                        "
tela2Linha16 : string "                                        "
tela2Linha17 : string "                                        "
tela2Linha18 : string "                                        "
tela2Linha19 : string "                                        "
tela2Linha20 : string "                                        "
tela2Linha21 : string "                                        "
tela2Linha22 : string "                                        "
tela2Linha23 : string "                                        "
tela2Linha24 : string "                                        "
tela2Linha25 : string "                                        "
tela2Linha26 : string "                                        "
tela2Linha27 : string "                                        "
tela2Linha28 : string "                                        "
tela2Linha29 : string "                                        "	


tela3Linha0  : string "                                        "
tela3Linha1  : string "                                        "
tela3Linha2  : string "                                        "
tela3Linha3  : string "                                        "
tela3Linha4  : string "                                        "
tela3Linha5  : string "                                        "
tela3Linha6  : string "                                        "
tela3Linha7  : string "                                        "
tela3Linha8  : string "                                        "
tela3Linha9  : string "                                        "
tela3Linha10 : string "                                        "
tela3Linha11 : string "                                        "
tela3Linha12 : string "                                        "
tela3Linha13 : string "                                        "
tela3Linha14 : string "                                        "
tela3Linha15 : string "                                        "
tela3Linha16 : string "                                        "
tela3Linha17 : string "                                        "
tela3Linha18 : string "                                        "
tela3Linha19 : string "                                        "
tela3Linha20 : string "                                        "
tela3Linha21 : string "                                        "
tela3Linha22 : string "                                        "
tela3Linha23 : string "                                        "
tela3Linha24 : string "                                        "
tela3Linha25 : string "                                        "
tela3Linha26 : string "                                        "
tela3Linha27 : string "                                        "
tela3Linha28 : string "                                        "
tela3Linha29 : string "                                        "	





tela4Linha0  : string "                                        "
tela4Linha1  : string "                                        "
tela4Linha2  : string "                                        "
tela4Linha3  : string "                                        "
tela4Linha4  : string "                                        "
tela4Linha5  : string "                                        "
tela4Linha6  : string "                                        "
tela4Linha7  : string "                                        "
tela4Linha8  : string "                                        "
tela4Linha9  : string "                                        "
tela4Linha10 : string "                                        "
tela4Linha11 : string "                                        "
tela4Linha12 : string "                                        "
tela4Linha13 : string "                                        "
tela4Linha14 : string "                                        "
tela4Linha15 : string "                                        "
tela4Linha16 : string "                                        "
tela4Linha17 : string "                                        "
tela4Linha18 : string "                                        "
tela4Linha19 : string "                                        "
tela4Linha20 : string "                                        "
tela4Linha21 : string "                                        "
tela4Linha22 : string "                                        "
tela4Linha23 : string "                                        "
tela4Linha24 : string "                                        "
tela4Linha25 : string "                                        "
tela4Linha26 : string "                                        "
tela4Linha27 : string "                                        "
tela4Linha28 : string "                                        "
tela4Linha29 : string "                                        "	
