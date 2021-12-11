.model small   

.stack 100h

data segment
   number dw ?
   for_minus dw 0
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
            call print_number

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp


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