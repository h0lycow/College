CODESEG SEGMENT
ASSUME CS:CODESEG
START:
MOV AL,02H
MOV BH,02H
ADD AL,BH
HLT
CODESEG ENDS
END