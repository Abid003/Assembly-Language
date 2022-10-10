.MODEL SMALL
.STACK 100H
.DATA 
VALUE DB ?  
MSG DB "Enter the hexadecimal value: $"

.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
  
     ;INPUT 
      
    MOV AH,1
    INT 21H
    MOV VALUE,AL 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
         
    ;OUTPUT

    MOV AH,2
    MOV DL,"1"
    INT 21H
     
    MOV DL,VALUE 
    SUB DL,11H 
    INT 21H 
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

