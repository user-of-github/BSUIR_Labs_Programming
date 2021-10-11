.model small

.stack 256
; https://pro-prof.com/forums/topic/asm_i8086_21

.data
msg1 db 'Input a:$'
msg2 db 'Input b:$'
msg3 db 'Input c:$'
msg4 db 'Input d:$'
a dw ?
b dw ?
c dw ?
d dw ?

.code
.startup
jmp main

main:
lea dx, msg1
mov ah, 09h ; 09h - Write string (terminated by a $ character)to standard output. 
int 21h

mov ah,01h ; 01h, 06h - Read a single character from standard input
int 21h ;
sub al,30h
mov ah,0
mov bx,10
mov cx,ax

m1: mov ah,01h
int 21h
cmp al,0dh
je m2

sub al,30h
cbw
xchg ax,cx
mul bx
add cx,ax
jmp m1

m2: mov a,cx
lea dx, msg2
mov ah, 09h
int 21h
mov ah,01h
int 21h ;
sub al,30h
mov ah,0
mov bx,10
mov cx,ax

m3: mov ah,01h
int 21h
cmp al,0dh
je m4

sub al,30h
cbw
xchg ax,cx
mul bx
add cx,ax
jmp m3
m4: mov b,cx

lea dx, msg3
mov ah, 09h
int 21h
mov ah,01h
int 21h ;
sub al,30h
mov ah,0
mov bx,10
mov cx,ax

m5: mov ah,01h
int 21h
cmp al,0dh
je m6

sub al,30h
cbw
xchg ax,cx
mul bx
add cx,ax
jmp m5
m6: mov c,cx
mov ax,2
add ax,a
sub ax,b
add ax,c


mov dh,1
mov dl,5
.exit
end