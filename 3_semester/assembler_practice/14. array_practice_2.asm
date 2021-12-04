.model small

.stack 100h

data segment
    for_minus db 0  
    array_length dw 0
    max_array_length dw 100
    array dw 100 dup (0) ; 100 - max length
    input_text db 'Input array length:', 10, '$'
    error_more_than_max_length_text db 'Value is greater than 100$. Exiting'
    counter dw 0
    sum_equals_text db 'Sum of array equals: $'
    minimum_number_text db 'Minimum in this array: $'
    minimum_number dw 0
    for_debug db 'Current item: $'
data ends

code segment
    assume cs: code, ds: data

    main_function proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        main_part:
            
            print_input_array_size_message:
                mov ah, 09h
                mov dx, offset input_text
                int 21h

            input_array_length:
                call input_number
                mov array_length, ax

            check_if_more_than_max_length:
                mov ax, array_length
                mov bx, max_array_length
                cmp ax, bx

                jle input_values
                mov dx, offset error_more_than_max_length_text
                mov ah, 09h
                int 21h
                jmp finish_program

            input_values:
                mov cx, array_length
                mov counter, 0

                input_value:
                    push cx
                    call input_number
                    mov si, counter
                    mov array[si], ax
                    add counter, 2
                    pop cx
                    loop input_value


            print_array:
                mov cx, array_length
                mov counter, 0

                print_array_value:
                    push cx ; remembered because it is used in print_number procedure
                    mov si, counter
                    mov ax, array[si]
                    call print_number
                    
                    print_space_symbol:
                        mov dl, 32
                        mov ah, 02h
                        int 21h
            
                    add counter, 2
                    pop cx
                    loop print_array_value

            print_enter:
                mov ah, 02h
                mov dl, 10
                int 21h

            count_sum:
                mov dx, offset sum_equals_text
                mov ah, 09h
                int 21h

                mov ax, 0 ; future sum
                mov cx, array_length
                mov counter, 0

                add_summand:
                    mov si, counter
                    add ax, array[si]
                    add counter, 2
                    loop add_summand

                call print_number

            find_first_minimum:
                mov counter, 0
                mov si, counter
                mov ax, array[si]
                mov minimum_number, ax
                mov cx, array_length

                find_minimum_iteration:
                    mov si, counter
                    mov bx, array[si]
                    cmp ax, bx ; currentMinimum (?) current
                    jle continue_iteration
                    mov ax, bx
                    mov minimum_number, ax
                    continue_iteration: 
                        add counter, 2
                    
                    loop find_minimum_iteration

                mov minimum_number, ax

            print_minimum_number:
                mov ah, 02h
                mov dl, 10
                int 21h

                mov ah, 09h
                mov dx, offset minimum_number_text
                int 21h

                mov ah, 02h
                mov dl, 32
                int 21h

                mov ax, minimum_number
                call print_number

                mov ah, 02h
                mov dl, 10
                int 21h


        
        finish_program:
            mov ah, 04ch
            int 21h    
    endp


    input_number proc
        preparations: ; make all necessary registers equal 0
            mov for_minus, 0
            xor di, di
            xor dx, dx
            xor cx, cx
            xor ax, ax
            xor bx, bx
            mov bx, 10

        input_symbol:
            xor ax, ax 
            mov ah, 01h ; 01h - for inputing one key pressed | result will be in AL
            int 21h

            cmp al, 13 ; AL === Enter ?
            je done

            cmp al, '-' ; AL !== '-' ?
            jne not_minus ; then skip this step

            minus: ; if we are here, it is a minus. Let's compute it
                mov for_minus, 1
                jmp input_symbol

            not_minus:
                cmp al, '9' ; AL > '9' ?
                ja input_symbol

                cmp al, '0' ; AL < '0' ?
                jb input_symbol

                sub al, '0' ; AL -= '0'
                xor ah, ah ; AH (which was used for int 21h) = 0
                mov cx, ax ; save recieved digit to CX
                mov ax, di ; DI stores current total result. So get it to AX
                mul bx ; MUL uses AX: AX = AX * arg (here - BX) — so we got (curr. result * 10)
                add ax, cx ; add CX (received digit) to AX | so totally we got: result = result * 10 + current_digit
                xor cx, cx ; cx = 0 => we will use it upper again, so better to "clean" it
                mov di, ax ; move current result to DI, where it is stored
                jmp input_symbol

        done:
            mov ax, di ; move total result to AX
            cmp for_minus, 1 
            jne return
            neg ax

        return:
            ret
    input_number endp

    print_number proc
        action_for_negative_numbers:
            cmp ax, 0
            jge output_preparation ; if (ax > 0) goto count_digits
            neg ax ; ax = (-1) * ax
            mov bx, ax ; save ax, because we need ah (part of ax) for output '-'
            mov ah, 02h
            mov dl, '-'
            int 21h
            mov ax, bx ; restore it. We can do it with stack, but MOV for registers is much faster
        
        output_preparation:
            xor cx, cx ; <=> mov cx, 0
            xor dx, dx ; <=> mov dx, 0
            xor bx, bx
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

end main_function