.model small

.stack 100h

data segment
    array_of_word db 'a', 'b', 'c' ; array with default values
    fixed_length_array_of_word dw 5 dup (0) ; array of length 5 filled by 0
    counter dw 0
data ends

code segment
    assume cs: code, ds: data

    main_function proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        main_part:
            xor cx, cx
            xor ax, ax
            xor si, si
            mov cx, 3

            print_array:
                push cx
                xor ax, ax
                mov si, counter
                mov dl, array_of_word[si]
                mov ah, 02h
                int 21h
                pop cx
                inc counter
                loop print_array
        
        finish_program:
            mov ah, 04ch
            int 21h    
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

end main_function