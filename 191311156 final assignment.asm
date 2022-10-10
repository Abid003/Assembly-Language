.MODEL SMALL
.STACK 100H
.DATA 

 NL EQU 0AH,0DH
 MSG1 DB NL, "Enter the first 2 digit number: $"
 MSG2 DB NL, "Enter the second 2 digit number:$" 
 MSG3 DB NL, "Enter an operator(+,-,*,/) : $"
 MSG4 DB NL, "Reuslt is: $"   
 MSG5 DB NL, "you have entired an invalid operator!$"
  
 DIGIT1 DB ?
 DIGIT2 DB ?
 NUM1 DB ?
 NUM2 DB ?
 OP DB ?
 RESULT DB ?

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
        
INPUT:      
    ;FIRST 2 DIGIT NUMBERS FIRST DIGIT 
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV DIGIT1,AL
    SUB DIGIT1,30H 
    
    ;2 DIGIT NUMBER SECOND DIGIT
    INT 21H
    MOV DIGIT2,AL 
    SUB DIGIT2,30H 
    
    ;CONVERTING TO 2 DIGIT NUMBER
    MOV AL,10
    MUL DIGIT1
    ADD AL,DIGIT2
    MOV NUM1,AL  
    

    ;TAKING 2ND TWO DIGIT NUMBER 
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV DIGIT1,AL
    SUB DIGIT1,30H   
    
    ;TAKING 2 DIGIT NUMBER SECOND DIGIT
    INT 21H
    MOV DIGIT2,AL 
    SUB DIGIT2,30H 
 
    ;CONVERTING TO 2 DIGIT NUMBER
    MOV AL,10
    MUL DIGIT1
    ADD AL,DIGIT2
    MOV NUM2,AL 
    
    
    ;TAKING OPERATOR
    MOV AH,9
    LEA DX,MSG3
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV OP,AL
   
    ;COMPARE THE OPERATOR
    CMP OP,'+'
    JE ADDITION
    CMP OP,'-'
    JE SUBTRACT
    CMP OP,'*'
    JE MULTIPLY  
    CMP OP,'/'
    JE DIVIDE
    
    JMP EXIT
    
    
ANSWER:
    MOV AL,RESULT
    CBW
    MOV BL,10
    DIV BL
    
    MOV DIGIT1,AL
    MOV DIGIT2,AH 
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H 
    
    MOV AH,2
    MOV DL,DIGIT1
    ADD DL,30H
    INT 21H 
    
    MOV DL,DIGIT2 
    ADD DL,30H
    INT 21H
        
    JMP INPUT
       
EXIT:
    MOV AH,9
    LEA DX,MSG5
    INT 21H
    MOV AH,4CH
    INT 21H
    
MAIN ENDP


 ; ADDITION PROCEDURE
ADDITION PROC
    MOV BL,NUM1
    ADD BL,NUM2
    MOV RESULT,BL
    JMP ANSWER
    RET
ADDITION ENDP  

; SUBTRACTION PROCEDURE
SUBTRACT PROC
    MOV BL,NUM1
    SUB BL,NUM2
    MOV RESULT,BL
    JMP ANSWER 
    RET
SUBTRACT ENDP 

; MULTIPLICATION PROCEDURE
MULTIPLY PROC
    MOV AL,NUM1
    MUL NUM2
    MOV RESULT,AL
    JMP ANSWER
    RET
MULTIPLY ENDP

;DIVISION PROCEDURE
DIVIDE PROC
    MOV AL,NUM1
    CBW
    DIV NUM2
    MOV RESULT,AL
    JMP ANSWER
    RET
DIVIDE ENDP    
    END MAIN
