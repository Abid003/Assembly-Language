.MODEL SMALL
.STACK 100H
.DATA 
  
  VAR1 DB 41H
  VAR2 DB 42H 
  
 .CODE
 MAIN PROC
        
     MOV AX, @DATA
     MOV DS,AX
       
     MOV AH,2
     MOV DL,VAR1
     INT 21H 
     
         MOV AH,2
     MOV DL,VAR2
     INT 21H          
              
     MOV AH,4CH
     INT 21H  
     
 MAIN ENDP
 END MAIN