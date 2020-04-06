.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    INT 21H
    MOV CL, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    SUB BL, CL
    
    MOV AH, 2
    MOV DL, BL
    ADD DL, 48
    INT 21H
    MAIN ENDP
END MAIN