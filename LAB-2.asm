.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AH,1   ; INPUT NEYAR JONNO AH,1
    INT 21H     ;INPUT CHARECTER STORE HOY AL REGISTER E
  
    MOV DL,'U'
    INT 21H 
    
   
    MOV AH, 2
    MOV DL, AL
    INT 21H 
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL, AL 
    INT 21H
    
    INT 21H
    
    MOV AH, 4CH  ; TO RETURN THE CONTROL TO OS
    INT 21H    
    
MAIN ENDP
    END MAIN