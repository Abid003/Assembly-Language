.MODEL SMALL 
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL      
    
    ADD BL,20h
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL   
    
    ADD BH,32
    
    MOV AH,2
    MOV DL, BH
    INT 21H  
    
    MOV AH,1
    INT 21H
    MOV CL,AL   
    
    ADD CL,32
    
    MOV AH,2
    MOV DL, CL
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV CH,AL   
    
    ADD CH,32
    
    MOV AH,2
    MOV DL, CH
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN