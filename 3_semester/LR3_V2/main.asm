.model small

.stack 100h

data segment
    not_appropriate_format db 'Bad input$'
    string_yes db 'Yes$'
    string_no db 'No$'

    string1 db 200 dup (?) ; s 
    string2 db 200 dup (?) ; t

    max_strings_sum_length dw 200

    string1_length dw 0
    string2_length dw 0

    counter dw 0
    counter2 dw 0
    compare_times dw 0

    found_substring_flag dw 0 ; "boolean". 0 ---> not found, 1 ---> found

    ; <debug and not necessary text variables>
    found_string_longer_text db 'Searched string is longer$'
    will_need_to_compare db 'Okay. Will need to compare for N times = $'
    counter_equals_text db 'Counter = $'
    ; </debug variables>
data ends

code segment
    assume cs: code, ds: data

    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        main_part:
            call input_string_1_proc
            call input_string_2_proc 


            ;;;;;;;; CHECK CONDITIONS (letters only and s.length  + t.length <= 200) ;;;;;;;;;;;
            check_conditions:
                check_length_sum:
                    xor ax, ax
                    xor bx, bx
                    mov ax, string1_length
                    mov bx, string2_length
                    add ax, bx
                    mov bx, max_strings_sum_length
                    cmp ax, bx

                    jng lengths_are_ok 
                    mov ah, 09h
                    mov dx, offset not_appropriate_format
                    int 21h
                    jmp finish_program

                lengths_are_ok: 
                    nop

                check_first_string_symbols: ; only [a-z,A-Z]: 65 <= code <= 90 || 97 <= code <= 122
                    mov cx, string1_length
                    mov si, 0
                    check_first_string_symbol:
                        mov al, string1[si]
                        call check_input_symbol_on_letters
                        cmp bx, 0
                        jne continue_check_first_string_symbol

                        mov ah, 09h
                        mov dx, offset not_appropriate_format
                        int 21h
                        jmp finish_program

                        continue_check_first_string_symbol:
                            inc si
                            loop check_first_string_symbol

                check_second_string_symbols: ; only [a-z,A-Z]: 65 <= code <= 90 || 97 <= code <= 122
                    mov cx, string2_length
                    mov si, 0
                    check_second_string_symbol:
                        mov al, string2[si]
                        call check_input_symbol_on_letters
                        cmp bx, 0
                        jne continue_check_second_string_symbol

                        mov ah, 09h
                        mov dx, offset not_appropriate_format
                        int 21h
                        jmp finish_program

                        continue_check_second_string_symbol:
                            inc si
                            loop check_second_string_symbol


            ;;;;;;;;;;;;; CHECKING FOR SUBSTR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            call find_substring

            xor ax, ax
            xor dx, dx 
            mov ax, found_substring_flag

            cmp ax, 1

            jne not_found

            found:
                mov dx, offset string_yes
                jmp print_result
            
            not_found:
                mov dx, offset string_no
                jmp print_result
            
            print_result:
                mov ah, 09h
                int 21h 
                jmp finish_program
                

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

    input_string_1_proc proc
        mov counter, 0
        mov string1_length, 0
        xor ax, ax
        input_symbol_for_string_1:
            mov ah, 01h ; 01h - for inputing one key pressed | result will be in AL
            int 21h

            cmp al, 32 ; AL === ' ' ?
            je done1

            xor ah, ah ; AH (which was used for int 21h) = 0
            mov si, counter 
            mov string1[si], al
            inc string1_length
            add counter, 1

            jmp input_symbol_for_string_1

        done1: 
            ret 
    endp

    input_string_2_proc proc
        mov counter, 0
        mov string2_length, 0
        xor ax, ax
        input_symbol_for_string_2:
            mov ah, 01h ; 01h - for inputing one key pressed | result will be in AL
            int 21h

            cmp al, 13 ; AL === Enter ?
            je done2

            xor ah, ah ; AH (which was used for int 21h) = 0
            mov si, counter 
            mov string2[si], al
            inc string2_length
            add counter, 1

            jmp input_symbol_for_string_2

        done2: 
            ret 
    endp

    find_substring proc
        xor ax, ax
        xor bx, bx
        xor cx, cx
        xor dx, dx

        mov ax, string1_length ; s
        mov bx, string2_length ; t

        cmp ax, bx ; if s.length is bigger than t.length => than no sense to check anything anymore
        jle length_is_okay
        
        print_that_first_string_is_longer:
            mov dx, offset found_string_longer_text
            mov ah, 09h
            int 21h
            mov ah, 02h
            mov dl, 10
            int 21h
            jmp finish_function

        length_is_okay:
            nop
        
        mov cx, string2_length
        mov bx, string1_length
        sub cx, bx
        inc cx
        mov compare_times, cx

        ; <debug info - times to compare substrings>
        mov ah, 09h
        mov dx, offset will_need_to_compare
        int 21h 

        mov ax, cx
        call print_number

        mov ah, 02h
        mov dl, 10
        int 21h
        ; </debug info - times to compare substrings>

        mov counter2, 0
        mov counter, 0

        check_symbols:
            ; <debug info counter>
            mov ah, 09h
            mov dx, offset counter_equals_text
            int 21h 
            mov ax, counter
            call print_number
            mov ah, 02h
            mov dl, 10
            int 21h
            ; </ debug info counter>

            call check_if_current_substring_equals ; if dx === 1 now then found !
            cmp dx, 1
            jne continue ; not found => continue and go to next iteration

            mov found_substring_flag, 1 ; else mark that substr is found and go to finish
            jmp finish_function

            continue:
                inc counter
                mov ax, counter
                mov cx, compare_times
                cmp ax, cx ; while counter < compare_times
                jl check_symbols

        finish_function:
            ret 
    endp

    check_if_current_substring_equals proc ; result will be in DX; 1 = TRUE => equal
        mov counter2, 0
        mov dx, 1 ; at the beginning mark as they are equal. Then if c1 !== c2, will mark as 0. [c1, c2 - sy,bols from strings ]

        compare_symbol:
            mov si, counter
            add si, counter2
            mov al, string2[si] ; remembered t[index] // from base string

            mov si, counter2
            mov bl, string1[si] ; remembered s[index] // from searched small string

            cmp al, bl

            je continue_comparing ; if they equal => continue comparing.
            mov dx, 0 ; else it means, that substr !== string, so nonsense to continue checking this variant
            jmp happy_end

            continue_comparing:
                inc counter2
                mov cx, string1_length
                mov bx, counter2
                cmp cx, bx
                jg compare_symbol

       happy_end:         
        ret 
    endp 


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


    check_input_symbol_on_letters proc ; only [a-z,A-Z]: 65 <= code <= 90 || 97 <= code <= 122 ; symbol in AL, result in BX
        mov bx, 0
        
        first_try: ; if 65 <= code <= 90
            cmp al, 65 ; AL - 65
            jl doesnt_satisfy ; if Al < 65 (65 > Al <=> 65 - Al > 0)
            cmp al, 90
            jle satisfies
            jmp second_try

        second_try: ; if 97 <= code <= 122
            cmp al, 97
            jl doesnt_satisfy
            cmp al, 122
            jg doesnt_satisfy
            jmp satisfies

        doesnt_satisfy:
            mov bx, 0
            jmp finish_checking

        satisfies:
            mov bx, 1
            jmp finish_checking

        finish_checking:
            ret
    endp 


code ends

end main
