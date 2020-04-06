.MODEL SMALL
.STACK 100H
.CODE
.DATA
MSG0 DB 'ENTER A NUMBER : $'
MSG1 DB 'IT IS GRATER THAN 5.$'
MSG2 DB 'IT IS SMALLER THAN 5.$'
MSG3 DB 'IT IS EQUAL TO 5.$'
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG0
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    CMP BL, '5'
    JG BIG
    JL SMALL
    JE EQUAL
    JMP EXIT
    
    BIG:
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    SMALL:
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    EQUAL:
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    