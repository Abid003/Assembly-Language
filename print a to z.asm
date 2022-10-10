.MODEL SMALL
.STACK 100H
.DATA   

.CODE
MAIN PROC
    MOV BH,41H
    MOV BL,61H
PRINT:
    MOV DL,BH
   MOV AH,2
   INT 21H  
   INC BH  
   
   MOV DL,BL
   MOV AH,2
   INT 21H  
   INC BL 
   
   CMP BL,7AH
   JLE PRINT 
   JMP EXIT

 EXIT:
   MOV AH,4CH
   INT 21H
        
   MAIN ENDP
END MAIN