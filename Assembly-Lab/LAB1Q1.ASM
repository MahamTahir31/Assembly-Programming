; PROGRAM TO PRINT NAME:
;_______________________

.model small
.stack 100h
.data
.code
Main proc
mov dl,'M'
mov ah,2
int 21h
mov dl,'A'
mov ah,2
int 21h
mov dl,'H'
mov ah,2
int 21h
mov dl,'A'
mov ah,2
int 21h
mov dl,'M'
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
