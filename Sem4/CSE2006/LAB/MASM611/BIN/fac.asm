CODE SEGMENT
ASSUME CS:CODE
START:
MOV CX,05H
MOV AX,0001
MOV BX,AX
LABEL1:
INC BX
MUL BX
CMP BX,CX
JNZ LABEL1
HLT
CODE ENDS
END

