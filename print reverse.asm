.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV Cl,5
    
INPUT:    
    MOV AH,1
    INT 21H
    PUSH AX     ;Stack push
    DEC Cl
    JNZ INPUT    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
OUTPUT:
    POP DX
    INT 21H
    CMP SP,0100H
    JNE OUTPUT
    
    MOV AH,4CH
    INT 21H    
MAIN ENDP
    END MAIN