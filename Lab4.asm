.MODEL SMALL
.STACK 21H
.DATA

MSG DB "HELLO"
RESULT DB ?
  
.CODE     
 
MAIN PROC
  
     MOV AX, @DATA
     MOV DS, AX
     
     
       
 
    MOV AH,4CH
    INT 21H
 
MAIN ENDP
 END MAIN