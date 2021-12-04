.model small
.stack 100h

data segment
    const_string_variable  db  'Hello from 03 Dec 2021 !$'
    const_strings_length equ $ - const_string_variable
data ends

code segment

    assume CS: code, DS: data

    main_function_programme proc

    necessary_initialization_of_ds:
            mov ax, data
            mov ds, ax

    print_string:
        call print_const_var_string_proc
        call print_const_string_length

    finish_program:
            mov ah, 4ch ; DOS-function for finishing program
            int 21h 
    endp

    print_const_var_string_proc proc
        mov ah, 09
        mov dx, offset const_string_variable
        int 21h
        
        mov dl, 10
        mov ah, 02h
        int 21h
        ret
    endp

    print_const_string_length proc
        mov ax, const_strings_length
    endp


    print_number_proc proc ; number must be in AX
        for_negative_numbers:
            cmp ax, 0
            jge preparation
            neg ax
            mov bx, ax
            mov ah, 02h
            mov dl, '-'
            int 21h
            mov ax, bx

        preparation:
            xor bx, bx
            xor cx, cx
            mov bx, 10 ; base10 
            xor dx, dx

        count_digits_in_number:
            div bx ; (dx + ax) / bx => num / 10 ---> AX, num % 10 ---> DX
            inc cx
            push dx
            xor dx, dx
            test ax, ax
            jnz count_digits_in_number

        print:
            pop dx
            add dx, '0'
            mov ah, 02h
            int 21h
            loop print

        ret
    endp
code ends

end main_function_programme

