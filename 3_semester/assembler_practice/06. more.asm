.model small   

.stack 100h

data segment
    array db 1, 2, 5, 30, 127, 9, 8, 7, 3, 4
data ends

code segment
    assume cs: code, ds: data

    main_function_name proc

        initialize_ds_register:
            mov ax, data
            mov ds, ax

        mov cx, 9 ; => 10 - 1
        mov dl, array ; dl = mas[0]
        mov bx, 1 ; index of 2nd element

        find_max:
            cmp dl, array[bx]
            jg next ; if mas[bx] < dl => jump
            mov dl, array[bx]

        next:
            inc bx
            loop find_max

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp
code ends

end main_function_name