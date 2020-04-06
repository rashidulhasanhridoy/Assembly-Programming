.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    INT 21H
    MOV CL, AL
    
    INT 21H
    MOV BH, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    CMP BL, CL
    JG CHECK1
    JL CHECK2
    JE CHECK3
    JMP EXIT
    
    CHECK1:
    CMP BL, BH
    JG YES1
    JL NO1
    JE EQUAL1
    JMP EXIT
    
    YES1:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
    
    NO1:
    MOV AH, 2
    MOV DL, BH
    INT 21H
    JMP EXIT
    
    EQUAL1:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
    
    
    CHECK2:
    CMP CL, BH
    JG YES2
    JL NO2
    JE EQUAL2
    JMP EXIT
    
    YES2:
    MOV AH, 2
    MOV DL, CL
    INT 21H
    JMP EXIT
    
    NO2:
    MOV AH, 2
    MOV DL, BH
    INT 21H
    JMP EXIT
    
    EQUAL2:
    MOV AH, 2
    MOV DL, BH
    INT 21
    JMP EXIT
    
    CHECK3:
    CMP BL, BH
    JG YES3
    JL NO3
    JE EQUAL3
    JMP EXIT
    
    YES3:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
    
    NO3:
    MOV AH, 2
    MOV DL, BH
    INT 21H
    JMP EXIT
    
    EQUAL3:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    