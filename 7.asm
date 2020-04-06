.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH, 1
    INT 21H
    
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 49
    INT 21H
    
    SUB BL, 17
    
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    MAIN ENDP
END MAIN