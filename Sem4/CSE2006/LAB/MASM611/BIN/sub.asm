CODESEG SEGMENT
ASSUME CS:CODESEG
START:
MOV AL,05H
MOV BH,06H
SUB AL,BH
HLT
CODESEG ENDS
END