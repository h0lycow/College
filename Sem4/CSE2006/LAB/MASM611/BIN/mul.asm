CODESEG SEGMENT
ASSUME CS:CODESEG
START:
MOV SI, 05H
MOV DI, 06H
MOV AL, [SI]
INC SI;
MOV BL, [SI]
MUL BL
MOV [DI], AX
HLT
CODESEG ENDS
END