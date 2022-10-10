.MODEL SMALL
.STACK 100H
.DATA   
 NL EQU 0DH , 0AH
 MSG1 DB "ENER THE NUMBER OF STARS YOU WANT TO  PRINT $"
 MSG2 DB NL, "THE STARS ARE : $" 
 CHOISE DB ?



.CODE   


MAIN PROC   
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX, MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CHOISE,AL  
    SUB CHOISE,30H
    
    
    MOV CL,CHOISE
    MOV AH,2
    MOV DL,'*' 
    
    MOV AH,9
    LEA DX, MSG2
    INT 21H
     
  STAR:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    DEC CL
    JNZ STAR
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN