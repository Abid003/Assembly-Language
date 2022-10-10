.MODEL SMALL
.STACK 100H
.DATA 
  
  NUM1 DB ?
  NUM2 DB ?   
   RESULT DB ?
  
 .CODE
 MAIN PROC
        
     MOV AX, @DATA
     MOV DS,AX  
       
     MOV AH,1
     INT 21H
     MOV NUM1, AL 
     SUB NUM1,30H 
      
     MOV AH,2
     MOV DL, '-'
     INT 21H
     
     MOV AH,1
     INT 21H 
     MOV NUM2, AL 
     SUB NUM2,30H 
     
    MOV BL,NUM1
    SUB BL,NUM2
    MOV RESULT ,BL 
    ADD RESULT,30H
    
    MOV AH,2
    MOV DL,'='
    INT 21H
    
    MOV DL, RESULT
    INT 21H
               
     MOV AH,4CH
     INT 21H  
     
 MAIN ENDP
 END MAIN