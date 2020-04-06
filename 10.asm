.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX, 8
    MOV AH, 2
    MOV DL, '*'
    
    TOP:
    INT 21H
    LOOP TOP
    
    MAIN ENDP
END MAIN