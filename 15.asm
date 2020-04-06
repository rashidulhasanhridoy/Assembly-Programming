.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    XOR AX, AX
    MOV CX, 0
    MOV BX, 0000000011111111B
    
    TOP:
    CMP CX, 16
    JE END
    INC CX
    ROL BX, 1
    JNC NEXT
    INC AX
    
    NEXT:
    JMP TOP
    
    END:
    ADD AX, 30H
    MOV AH, 2
    MOV DX, AX
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN