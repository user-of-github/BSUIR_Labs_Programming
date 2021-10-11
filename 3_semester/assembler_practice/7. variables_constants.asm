.model small   

.stack 100h

data segment
    string db 'Some string: 123'
    string_length = $-string ; we can use constants and operators to define them
    ; this one gives us length of string above
    max dd 0FFFFFFFFh ; max number (double word)
    size_in_10 dw 257 ; 257 in decimal
    size_in_16 dw 101h ; 257 in hexadecimal
    equal_numbers db 'They are equal!$'
    not_equal_numbers db 'They are not equal!$'
data ends

code segment
    assume cs: code, ds: data

    main_function_name proc

        initialize_ds_register:
            mov ax, data
            mov ds, ax

        mov dx, string_length

        mov bx, size_in_10
        mov cx, size_in_16

        cmp cx, bx
        je print_equal

        print_not_equal:
            mov dx, offset not_equal_numbers
            mov ah, 09h
            int 21h 
            jmp finish_program

        finish_program:
            mov ah, 04ch
            int 21h

        print_equal:
            mov dx, offset equal_numbers
            mov ah, 09h
            int 21h 
            jmp finish_program

    main_function_name endp
code ends

end main_function_name