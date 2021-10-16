.386

.model small   

.stack 100h

data segment use16
   number_a dw ?
   number_b dw ?
   number_c dw ?
   number_d dw ?
   number_test dw 312
   for_minus dw 0

   aGreaterThanB db 'a > b ', 13, 10, '$'
   action_1_label db '1st action: print((a - b) * c + d) ', 13, 10, '$'
   action_2_label db '2nd action: print((d + a) - (b - c)) ', 13, 10, '$'
   action_3_label db '3rd action: print(a * b - c * d + 4) ', 13, 10, '$'


data ends
    
code segment use16

    assume cs: code, ds: data

    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main_code:

            input:
                call input_number
                mov number_a, ax

                call input_number
                mov number_b, ax

                call input_number
                mov number_c, ax


                call input_number
                mov number_d, ax

            solve:
                call update_variables_in_registers

                condition_1: ; (a > b) && (c < d)
                    cmp ax, bx ; ax <= bx
                    jle condition_2

                    cmp cx, dx ; cx >= dx
                    jge condition_2 

                    action_1: ; print((a - b) * c + d)
                        mov dx, offset action_1_label 
                        call print_action_label
                        call update_variables_in_registers
                        sub ax, bx
                        imul ax, cx
                        add ax, dx
                        call print_number
                        jmp finish_program

                condition_2: ; ((d + a) > (b - c))
                    add ax, dx
                    sub bx, cx
                    cmp ax, bx ; (ax = (ax+dx)) > (bx = (bx - cx)) ?
                    jge action_2
                    mov ax, number_a
                    mov bx, number_b
                    cmp ax, bx ; ax === bx ?
                    jne action_3

                    action_2: ;  print((d + a) - (b - c))
                        mov dx, offset action_2_label 
                        call print_action_label
                        call update_variables_in_registers
                        add ax, dx
                        sub bx, cx
                        sub ax, bx
                        call print_number
                        jmp finish_program

                    action_3: ; print(a * b - c * d + 4)
                        mov dx, offset action_3_label 
                        call print_action_label
                        call update_variables_in_registers
                        imul ax, bx
                        imul cx, dx
                        sub ax, cx
                        add ax, 4
                        call print_number
                        jmp finish_program

        finish_program:
            xor ax, ax
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

    print_action_label proc
        mov ah, 09h ; for outputing a string
        int 21h
        ret
    print_action_label endp

    update_variables_in_registers proc 
        mov ax, number_a
        mov bx, number_b
        mov cx, number_c
        mov dx, number_d
        ret
    update_variables_in_registers endp

code ends

end main_function_name


; SOURCE PROBLEM STATEMENT

; if (a > b) and (c < d)  
;       print((a - b) * c + d)  // FIRST ACTION
; else    
;       if ((d + a) > (b - c)) or (a == b)  
;               print((d + a) - (b - c))  // SECOND ACTION
;       else  
;               print(b * a - c * d + 4) // THIRD ACTION


; REMASTERED:

; if (a <= b) goto condition3 // INVERTED CONDITIONS !      
; if (c >= d) goto condition3 
; print((a - b) * c + d)
; goto finish_program

; condition3:  // CONDITION 3
;       if ((d + a) > (b - c)) goto second_action              
;       if (a != b)  goto third_action // INVERTED THIS CONDITION
;       second_action:
;           print((d + a) - (b - c))
;           goto finish         // SECOND ACTION

;       third_action: 
;                print(b * a - c * d + 4) // THIRD ACTION


; DEVELOPER'S TESTS PACK:

;   FOR ACTION 1:
;           -50 -70 -60 10 => -1190     |   ✓
;           0 -10 -10 0 => -100         |   ✓
;           1 0 0 1 => 1                |   ✓
;           0 -10 30 1001 => 1301       |   ✓

;   FOR ACTION 2:
;           10 100 90 30 => 30          |   ✓
;           0 0 -2 -3 => -5             |   ✓
;           -100 -100 0 1000 => 1000    |   ✓

;   FOR ACTION 3:
;           1 100 3 3 => 95             |   ✓

;   OTHER:
;           10 10 10 10 => 20           |   ✓
;           -10 -10 -10 -10 => -20      |   ✓