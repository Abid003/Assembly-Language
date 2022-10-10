.MODEL SMALL
.STACK 100H
.DATA 
NL EQU 0DH, 0AH
COUNTER DB ? 
LINE DB ?


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DX, AX 
    
    MOV COUNTER, 4
    MOV LINE, 4
     
    
    MOV AH, 2  
    MOV DL,31H
    
START:    
    
    INT 21H
    ADD DL, 1
    DEC COUNTER
    
    JNZ START
    
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H 
    
    MOV COUNTER, 4 
    
    MOV AH, 2  
    MOV DL,31H
    
    DEC LINE
    JNZ START
    
    JMP EXIT
    
    
    
    
EXIT:    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP

END MAIN