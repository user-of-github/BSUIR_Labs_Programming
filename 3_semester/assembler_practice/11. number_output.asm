.model small   

.stack 100h

data segment
   number dw -153
data ends
    
code segment

    assume cs: code, ds: data

    print_number proc
        action_for_negative_numbers:
            cmp ax, 0
            jge count_digits ; if (ax > 0) goto count_digits
            neg ax ; ax = (-1) * ax
            mov bx, ax ; save ax, because we need ah (part of ax) for output '-'
            mov ah, 02h
            mov dl, '-'
            int 21h
            mov ax, bx ; restore it. We can do it with stack, but MOV for registers is much faster
        
        preparation:
            xor cx, cx ; <=> mov cx, 0 | cx for future loop. It will contain number of digits
            xor dx, dx ; <=> mov dx, 0 | dx is required for div
            mov bx, 10 ; for dividing on bxs
        
        count_digits:
            div bx ; div <=> (dx+ax) / 10 => num / 10 -> ax, num % 10 -> dx
            push dx ; remember received digit
            xor dx, dx ; made dx = 0
            inc cx ; increased counter of digits
            test ax, ax ; ax === 0 ?
            jnz count_digits ; if yes, will repeat and get another digit

        before_print:
            mov ah, 02h
            
        print_digits:
            pop dx
            add dx, 30h
            int 21h
            loop print_digits
            
        ret
    print_number endp


    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main_code:
            mov ax, number
            call print_number

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp

code ends

end main_function_name