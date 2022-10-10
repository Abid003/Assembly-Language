.MODEL SMALL
.STACK 100H
.DATA
NL EQU 0DH,0AH
MSG DB NL,"Enter three numbers respectively: $"
MSGA DB NL,"First number is the maximum $"
MSGB DB NL,"Second number is the maximum $"
MSGC DB NL,"Third number is the maximum $"
NUM1 DB ?
NUM2 DB ?
NUM3 DB ?
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
INPUT:    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV NUM1,AL 
    CALL SOMETHING
    
    INT 21H
    MOV NUM2,AL 
    CALL SOMETHING
    
    INT 21H
    MOV NUM3,AL
    CALL SOMETHING
    
    MOV BL,NUM1
    CMP BL,NUM2
    JGE TEN_A
    
    ;TEN_B:
    MOV BL,NUM2
    CMP BL,NUM3
    JGE FIN_B
    JMP FIN_C
TEN_A:
    CMP BL,NUM3
    JGE FIN_A
    JMP FIN_C
FIN_A:
    MOV AH,9
    LEA DX,MSGA
    INT 21H 
    JMP INPUT
FIN_B:
    MOV AH,9
    LEA DX,MSGB
    INT 21H
    JMP INPUT       
FIN_C:
    MOV AH,9
    LEA DX,MSGC
    INT 21H 
    JMP INPUT
    
EXIT:             
    MOV AH,4CH
    INT 21H    
MAIN ENDP

SOMETHING PROC
    CMP AL,0DH
    JE EXIT
    RET    
SOMETHING ENDP
    END MAIN