.MODEL SMALL
.STACK 100H
.DATA
NL EQU 0DH,0AH
MSG DB NL,"Enter three numbers respectively: $"
MSG0 DB NL,"given numbers are equal $"
MSG1 DB NL,"given numbers are not equal$"

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
  
    MOV BL, NUM1
    CMP BL,NUM2   
    JE TEN_E
    JMP FIN
    
TEN_E:
     CMP BL,NUM3
     JE FIN_E
     JMP FIN


FIN_E: 
    MOV AH,9
    LEA DX,MSG0
    INT 21H 
    JMP INPUT
    
FIN:
    MOV AH,9
    LEA DX,MSG1
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