.model small   
.stack 100h

data segment
    number dw ?
    is_simple_flag dw 1 ; "boolean" for defining. 1 - simple, 0 - not
data ends
    
code segment

    assume cs: code, ds: data

    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main_code:
            input:
                call input_number
                mov number, ax
                cmp ax, 1
                jne solve
                mov ax, 0
                call print_number
                jmp finish_program

            solve:
                mov ax, number
                
                find_maximum_simple_divider:
                    cmp ax, 1
                    je print_result
                    call is_number_simple
                    cmp is_simple_flag, 1 ; simple === true ?
                    jne loop_finish
                    xor dx, dx
                    mov bx, ax ; remember AX (because DX+AX are used for DIV)
                    mov ax, number
                    div bx ; AX (number) / BX
                    mov ax, bx
                    cmp dx, 0 ; number % BX === 0 ?
                    jne loop_finish
                    jmp print_result    

                    loop_finish:
                        dec ax ; --ax
                        jmp find_maximum_simple_divider

                print_result:
                    call print_number

        finish_program:
            xor ax, ax
            mov ah, 04ch
            int 21h
    main_function_name endp

    is_number_simple proc ; number is in AX; result will be in variable
        function_preparations:
            mov is_simple_flag, 0
            mov bx, 2
            xor dx, dx

        cycle: 
            xor dx, dx
            push ax ; remembering AX
            div bx ; AX = num / 10; DX = num % 10
            pop ax
            cmp dx, 0 ; DX === 0 ?
            je analyze_last_divider ; division without remainder => found some divider
            inc bx

            cmp bx, ax
            jge analyze_last_divider
            jmp cycle

        analyze_last_divider:
            cmp bx, ax ; BX === AX ? If yes - number is simple
            jne finish_function
            mov is_simple_flag, 1

        finish_function:
            ret
    is_number_simple endp

    input_number proc
        preparations: ; make all necessary registers equal 0
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

        return:
            ret
    input_number endp


    print_number proc 
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

end main_function_name