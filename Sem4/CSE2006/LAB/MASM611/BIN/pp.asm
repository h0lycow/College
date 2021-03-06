DATA SEGMENT
    STRING DB 'abba', '$'
    STRING1 DB 'String is palindrome', '$'
    STRING2 DB 'String is not palindrome', '$'
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
        MOV AX, DATA
        MOV DS, AX
        MOV SI,OFFSET STRING

    LOOP1 :
        MOV AX, [SI]
        CMP AL, '$'
        JE LABEL1
        INC SI
        JMP LOOP1
    LABEL1 :
        MOV DI,OFFSET STRING
        DEC SI
	LOOP2 :
        CMP SI, DI
        JL OUTPUT1
        MOV AX,[SI]
        MOV BX, [DI]
        CMP AL, BL
        JNE OUTPUT2
        DEC SI
        INC DI
        JMP LOOP2

    OUTPUT1:
        LEA DX,STRING1
        MOV AH, 09H
        INT 21H
        RET
        HLT
    OUTPUT2:
        LEA DX,STRING2
        MOV AH,09H
        INT 21H
        RET
        MOV AH, 4CH
        INT 21H
        HLT
    CODE ENDS
END START