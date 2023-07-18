; PROGRAM TO INPUT CHARACTER AND PRINT ON SCREEN:
;________________________________________________

.MODEL SMALL
.STACK 100H
.DATA 
INPUT DB "GIVE ANY CHARACTER : $"
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
LEA DX, INPUT
MOV AH,9
INT 21H
MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H
        
        MOV AH,1
        INT 21H
      
        MOV DL,AL
        MOV AH,2
        INT 21H
        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
