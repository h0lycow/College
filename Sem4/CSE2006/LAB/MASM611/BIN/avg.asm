MOV CX,05H
MOV DH,05H
MOV AL,00H
MOV BX,1000H
L1: ADD AL,[BX]
INC BX
LOOP L1
MOV [1500],AL
DIV DH
MOV [1600],AL
MOV [1601],AH
HLT

