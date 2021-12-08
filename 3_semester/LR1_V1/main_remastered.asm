.386

.model small

.stack 100h

data segment use16
    a dw ?
    b dw ?
    c dw ?
    d dw ?
    for_minus dw 0

    action_1_text db 'action 1$'
    action_2_text db 'action 2$'
    action_3_text db 'action 3$'
data ends

code segment use16
    assume cs: code, ds: data

    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax
        
        main_body:
            call input_data

            mov dl, 10
            call cout_char

            call compute_answer
            call cout_number

        finish_program:
            mov ah, 04ch
            int 21h
    endp


    cout_number proc
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
    endp

    cin_number proc
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

            cmp al, 10 ; AL === Enter ?
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
    endp

    input_data proc
        call cin_number
        mov a, ax

        call cin_number
        mov b, ax

        call cin_number
        mov c, ax

        call cin_number
        mov d, ax

        ret
    endp

    compute_answer proc  ; answer will be in AX
        condition_1:
            call move_variables_to_registers
            cmp ax, bx ; ax - bx
            jle condition_2
            cmp cx, dx ; cx - dx
            jge condition_2
            jmp action_1
        
        condition_2:
            call move_variables_to_registers
            add ax, dx
            sub bx, cx
            cmp ax, bx ; ax - bx
            jg action_2
            call move_variables_to_registers
            cmp ax, bx
            je action_2
            jmp action_3

        action_1:
            ;mov dx, offset action_1_text
            ;call cout_string

            call move_variables_to_registers

            sub ax, bx
            imul ax, cx
            add ax, dx 
            jmp return_from_get_answer

        action_2:
            ;mov dx, offset action_2_text
            ;call cout_string
            call move_variables_to_registers
            add ax, dx
            sub bx, cx
            sub ax, bx
            jmp return_from_get_answer

        action_3:
            ;mov dx, offset action_3_text
            ;call cout_string
            call move_variables_to_registers
            imul ax, bx
            imul cx, dx
            sub ax, cx
            add ax, 4
            jmp return_from_get_answer


        return_from_get_answer:    
            ret
    endp

    move_variables_to_registers proc
        mov ax, a
        mov bx, b
        mov cx, c
        mov dx, d
        ret
    endp

    cout_char proc  
        mov ah, 02h
        int 21h
        ret
    endp 

    cout_string proc 
        mov ah, 09h
        int 21h
        ret
    endp 


code ends


end main