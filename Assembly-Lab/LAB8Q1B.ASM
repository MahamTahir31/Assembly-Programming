;PROGRAM TO MULTIPLY TWO NUMBER & PRINT THE PRODUCT:
;____________________________________________________
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
RES DB 'MULTIPLICATION OF TWO NUMBERS = $'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
LEA DX, RES
MOV AH,9
INT 21H
MOV AL,4
MOV BL,5
MUL BL
AAM
MOV CH,AH
MOV CL,AL
MOV DL,CH
ADD DL,48
MOV AH,2
INT 21H
MOV DL,CL
ADD DL,48
MOV AH,2
INT 21H
MOV DX,10
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
