.model small

DATA SEGMENT ; <=> .data, vars, constants
enterName db ' ', '$'
whatName db 'Whats your name ?$'
sayHello db 'Hello,$'
otst db '', 0dh, 0ah, '$'

namebar label byte
maxLength db 10
actlength db ?
namefld db 10 dup('$')
DATA ENDS

STK SEGMENT STACK
db 256 dup('')
STK ENDS

CODE SEGMENT

ASSUME CS:CODE, DS:DATA, SS:STK
START:
mov ax, DATA
mov ds, ax

lea dx, whatName; move whatName adress to dx
mov ah, 09 ; 09 - comand of int21h, which prints message which lies on dx
int 21h

lea dx, otst
mov ah, 09 ; 09 - comand of int21h, which prints message which lies on dx
int 21h

lea dx, namebar
mov ah, 0ah
int 21h

lea dx, sayHello
mov ah, 09
int 21h

lea dx, namefld
int 21h

mov bx, 4
mov cx, 4
cmp bx, cx
jz after_if ; testing if condition

some_code:
    lea dx, otst
    mov ah, 09 ; 09 - comand of int21h, which prints message which lies on dx
    int 21h
    lea dx, namefld
    int 21h

after_if:
mov ah, 4ch ; finishing program
int 21h

code ends
end Start
end