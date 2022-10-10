.MODEL SMALL
.STACK 100H
.DATA
NL EQU 0DH,0AH 
MSG1 DB NL,"ENTER YOUR FIRST CT MARKS:  $" 
MSG2 DB NL,"ENTER YOUR SECOND CT MARKS: $"
MSG3 DB NL,"THE GREATER MARK IS: $"
.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX 
     
     MOV AH,9
     LEA DX,MSG1
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV BL,AL 
     
     MOV AH,9
     LEA DX,MSG2
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV CL,AL 
                                
     MOV AH,9
     LEA DX,MSG3
     INT 21H 
     
     ;COMPARE VALUES
     CMP BL,CL
     JG L1 
     
     L2:
     MOV AH,2
     MOV DL,CL
     INT 21H 
     JMP EXIT
     
     L1:
     MOV AH,2
     MOV DL,BL
     INT 21H 
     JMP EXIT 
    EXIT: 
     MOV AH,4CH

INT 21H 
MAIN ENDP
 END MAIN