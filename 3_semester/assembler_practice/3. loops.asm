.model small   

.stack 100h

data segment
   symbols db 230 dup('*') ; we can fill array by default value
data ends

code segment

    assume CS: code, DS: data

    main_function_name proc
        init_ds:
            mov ax, data
            mov ds, ax

        preparations:
            mov cx, 230 ; required length of loop
            mov si, 0 ; pointer register for index counter = 0
            mov al, 32 ; just first element for cycle (char(32))
            ; current symbol code; also could choose ah, bl, bh, dl, no matter 
            ; (!cx already occupied by loop length)
        
        fill_symbols_array:
            mov symbols[si], al
            inc al ; inc <=> ++al
            inc si
            loop fill_symbols_array ; returns management to fill_symbols_array for 230 times (in CX)

        print_received_array:
            mov ah, 40h
            mov bx, 1 ; screen descriptor. Just because required by 40h command
            mov cx, 230
            mov dx, offset symbols
            int 21h

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp
 
code ends

end main_function_name