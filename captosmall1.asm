.MODEL SMALL
.STACK 21H
.DATA
 
.CODE
 
MAIN PROC
    MOV AH,1
    INT 21H

    MOV BL,AL
    ADD BL,20H

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H 

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 

    MOV AH,1
    INT 21H

    MOV BL,AL
    ADD BL,20H

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H  

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  

    MOV AH,1
    INT 21H

    MOV BL,AL
    ADD BL,20H

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H 

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H   

    MOV AH,1
    INT 21H

    MOV BL,AL
    ADD BL,20H

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV AH,2
    MOV DL,BL
    INT 21H  

    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H   

    MOV AH,4CH
    INT 21H

MAIN ENDP
 END MAIN