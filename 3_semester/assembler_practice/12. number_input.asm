.model small   

.stack 100h

data segment
   number dw ?
   for_minus dw ?
data ends
    
code segment

    assume cs: code, ds: data

    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main_code:
            call input_number
            mov number, ax
            xor ax, ax
            mov ax, number
            cmp ax, 0
            jnge finish_program
            call print_number

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp


    input_number proc
        print_start_input_symbol:
            mov ah, 02h
            mov dl, '>' ; just a symbol to show active input
            int 21h
        
        input_preparation:
            mov ax, 1
            mov for_minus, ax
            xor di, di ; di = 0
            xor ax, ax
            xor dx, dx
            xor cx, cx
            xor bx, bx
            mov bx, 10
        
        input_symbol:
            mov ah, 08h ; get key pressed
            int 21h

            cmp al, 13 ; al === Enter ?
            je done
            
            cmp al, '-' ; !== '-' ?
            jne skip_minus
            mov ah, 02h
            mov dl, al
            int 21h
            xor bx, bx
            mov bx, -1
            mov for_minus, bx
            xor bx, bx
            mov bx, 10

            skip_minus:
                cmp al, '9'
                ja input_symbol
                cmp al, 30h ; <=> '0'
                jb input_symbol

                mov ah, 02h
                mov dl, al
                int 21h

                sub al, 30h ; <=> '0'
                xor ah, ah
                mov cx, ax ; save digit to cx
                mov ax, di ; move previous result to ax

                mul bx ; ax = ax * bx
                add ax, cx
                xor cx, cx
                mov di, ax
                xor ax, ax
                jmp input_symbol

        done:
            push dx
            mov dl, ' '
            mov ah, 02h
            int 21h
            xor ax, ax
            pop dx
            mov ax, di

            mov bx, for_minus
            cmp bx, 1
            jz return
            neg ax

        return: 
            ret 
    input_number endp


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
        
        output_preparation:
            xor cx, cx ; <=> mov cx, 0
            xor dx, dx ; <=> mov dx, 0
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

code ends

end main_function_name