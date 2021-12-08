.386

.model small

.stack 100h

data segment use16
    bad_input_message db 'Bad input$'

    rows_count dw ? ; n
    cols_count dw ? ; m

    general_size dw ?

    array dw 10000 dup (?)

    for_minus dw 0

    counter dw 0
    counter2 dw 0

    minimum dw 0

    minimum_row_index dw 0 ; from 0
    minimum_col_index dw 0 ; from 0

    row_text db 'Row Number: $'
    col_text db 'Col Number: $'
    sum_text db 'Sum of row and col: $'
    sum_text_numeration_from_1 db 'Sum of row and col (counting from 1): $'
data ends

code segment use16
    assume cs: code, ds: data
    

    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax
        
        main_body:
            call input_number
            mov rows_count, ax

            call input_number
            mov cols_count, ax

            xor ax, ax
            mov ax, rows_count
            mov bx, cols_count

            imul ax, bx

            mov general_size, ax

            call fill_array

            check_input:
                mov ax, rows_count
                cmp ax, 2 ; ax - 100
                jg bad_input
                cmp ax, 1
                jl bad_input

                mov ax, cols_count
                cmp ax, 2
                jg bad_input
                cmp ax, 1
                jl bad_input

                mov si, 0
                mov counter, 0

                check_values:
                    mov si, counter
                    imul si, 2
                    mov ax, array[si]
                    cmp ax, -100 ; ax - (-100)
                    jl bad_input
                    cmp ax, 100 ; ax - 100
                    jg bad_input

                    inc counter 
                    mov ax, counter 
                    cmp ax, general_size ; ax - general_size
                    jl check_values
                    jmp solution


            solution:
                call find_minimum

                call get_answer_for_task

                mov dx, offset row_text
                call cout_string
    
                mov dl, 32
                call cout_char
        
                mov ax, minimum_row_index
                call print_number

                call endline

                mov dx, offset col_text
                call cout_string

                mov dl, 32
                call cout_char

                mov ax, minimum_col_index
                call print_number
            
            
                call endline

                mov dx, offset sum_text
                call cout_string

                mov dl, 32
                call cout_char 

                mov ax, minimum_row_index
                mov bx, minimum_col_index
                add ax, bx

                call print_number

                mov dl, 10
                call cout_char
            
                mov dx, offset sum_text_numeration_from_1
                call cout_string

                mov ax, minimum_row_index
                mov bx, minimum_col_index
                add ax, bx
                add ax, 2

                call print_number
                jmp return_main

        bad_input:
            mov dx, offset bad_input_message
            call cout_string
            jmp return_main

        return_main:
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

            cmp al, 32 ; AL === ' ' ?
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

    fill_array proc
        xor cx, cx
        mov counter, 0

        input_cell:
            call input_number
            mov si, counter
            imul si, 2
            mov array[si], ax
            inc counter 
            mov cx, counter
            mov bx, general_size
            cmp cx, bx ; cx - bx
            jl input_cell

        ret
    endp

    print_array_in_row proc
        mov counter, 0
        mov counter2, 0

        print_array_cell:
            mov si, counter
            imul si, 2
            mov ax, array[si]
            call print_number
            mov ah, 02h
            mov dl, 32
            int 21h 
            inc counter 
            mov ax, counter 
            mov bx, general_size
            cmp ax, bx
            jl print_array_cell
            jmp return_print_array_as_row

        return_print_array_as_row:
            mov ah, 02h
            mov dl, 13
            int 21h 

            ret
    endp


    ; doesn't work
    print_array_in_matrix proc 
        mov counter, 0
        mov counter2, 0
        xor ax, ax
        xor si, si 
        print_row:
            mov counter2, 0

            print_col: ; position = i * cols_count * 2 + j * 2 // where numeration from 1
                mov si, counter 
                mov bx, cols_count
                imul si, bx
                mov ax, counter2
                add si, ax

                mov ax, si 
                ;call print_number

                imul si, 2

                mov ax, array[si]
                call print_number

                mov ah, 02h
                mov dl, 32 
                int 21h

                inc counter2
                mov ax, counter2
                mov bx, cols_count
                cmp ax, bx ; <=> counter2 - colsCount
                jl print_col
            
            mov ah, 02h
            mov dl, 13
            int 21h

            inc counter 
            mov ax, counter 
            mov bx, rows_count
            cmp ax, bx ; counter - rows_count
            jl print_row

        return_print_array_as_matrix:
            ret
    endp 

    find_minimum proc ; result will be in AX
        mov counter, 0
        mov si, 0
        mov ax, array[si]
        mov minimum, ax
        xor ax, ax

        check_value:
            mov si, counter
            imul si, 2
            mov ax, array[si]
            mov bx, minimum 
            cmp ax, bx ; current - minimum
            jge continue_finding_minimum
            mov minimum, ax
            continue_finding_minimum:
                inc counter 
                mov ax, counter 
                mov bx, general_size
                cmp ax, bx
                jl check_value
                jmp return_find_minimum

        return_find_minimum:
            mov ah, 02h
            mov dl, 13
            int 21h 

            ret
    endp

    get_answer_for_task proc 
        xor ax, ax
        mov counter, 0
        mov cx, minimum

        find_index_of_minimum:
            mov si, counter 
            imul si, 2
            mov bx, array[si]
            cmp cx, bx
            je found_index
            inc counter 
            mov ax, counter
            mov bx, general_size
            cmp ax, bx ; ax - bx
            jl find_index_of_minimum
            jmp found_index

        found_index:
            xor ax, ax 
            xor dx, dx
            mov ax, counter    
            mov bx, cols_count
            div bx ; now row is in AX, col is in DX
            mov minimum_row_index, ax
            mov minimum_col_index, dx
        ret
    endp

    endline proc
        mov ah, 02h
        mov dl, 10
        int 21h  
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