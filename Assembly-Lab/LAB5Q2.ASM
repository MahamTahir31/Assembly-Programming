; PROGRAM IN WHICH JUMP CONDITIONS IS USED:
;___________________________________________

;"GETTING CHOCOLATES"
;____________________

DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
ITEMS DB "WHAT DO YOU WANT TO PURCHASE:$"
I1 DB " THERE YOU GO CHOCOLATES :) $"
I11 DB "OOPS SOMETHING WENT WRONG :( $"
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
LEA DX,ITEMS
MOV AH,9
INT 21H
MOV DX,10
MOV AH,2
INT 21H
MOV DL,'0'
MOV AH,1
INT 21H
CMP DL,AL
JE C1
MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H
LEA DX,I11
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H
C1:
MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H
LEA DX,I1
MOV AH,9
INT 21H

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

; PRESS 0 IF YOU WANNA CHOCOLATES :)
