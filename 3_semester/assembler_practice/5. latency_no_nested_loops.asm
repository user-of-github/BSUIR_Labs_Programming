; demo cycle of 4 steps with latency
.386
.model small   

.stack 100h

data segment use16
   string db '<>$'
data ends

code segment use16

    assume CS: code, DS: data

    main_function_name proc
        init_ds:
            mov ax, data
            mov ds, ax

        mov cx, 4 ; main cycle for printing length
        ; we have empty stack; 

        my_cycle: 
            push cx ; ; to remember current cx (cx = 4), we push it. Now stack: {4}
            mov ah, 09h
            mov dx, offset string ; printing it
            int 21h
            mov ecx, 6000000

        delay:
            db 67h ; makes loop use ecx fully (normally it uses just cx)
            loop delay

        pop cx ; get away 4. Now cx = 4; Now stack: {}
        loop my_cycle

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp
 
code ends

end main_function_name