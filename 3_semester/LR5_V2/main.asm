.386

.model tiny

.stack 100h

data segment use16
    text_first db 'Input letter', 10, '$'
    text_second db 10, 'Interruption handler changed. Input one more letter', 10, '$'
    buffer_seg dw 0
    buffer_set_off dw 0
    flag_active dw 0
    global_param db 13
    
data ends

    
code segment use16
    assume cs: code, ds: data

    resident:
        org 100h
        jmp install

        custom_input proc
            mov cx, 37h
            mov si, word ptr cs:[old_interupt]
            mov di, word ptr cs:[old_interupt + 2]
            push si di ds cx bx ax
            pushf ; push flag register values
            cmp ah, 02h; check if we have necessary function and if no then skip all my additions and go to default one
            jne skip_my_interrupt

            mov cl, global_param
            mov cs:[param], cl

            cmp dl, 97; check that it is small latin letter
            jl skip_my_interrupt
            cmp dl, 122
            jg skip_my_interrupt
            add dl, cs:[param] ; cycle move
            cmp dl, 123
            jle skip_my_interrupt; if result > 123 then -= 32, because it is cycle move
            sub dl, 26
            skip_my_interrupt:
                popf
                pop ax bx cx ds di si
                jmp cs:[old_interupt]; jump to old handler of interruption
            ret
            old_interupt dd ?
            param db 0
    custom_input endp

    install:
    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        ; <taking digit from console arguments>
        check_args_count:
            mov si, 80h
            mov al, es:[si]
            cmp al, 0
            je set_default_param

        set_shift:    
            mov si, 82h
            mov al, es:[si]
            cmp al, 47
            jle set_default_param
            cmp al, 58
            jge set_default_param
            sub al, 48
            mov global_param, al
            jmp after_checking_console_ars
        ; </taking digit from console arguments>
        set_default_param:
            mov global_param, 13

        after_checking_console_ars:

        mov dx, offset text_first
        call cout_string

        mov ah, 01h
        int 21h

        mov dl, al
        call cout_char

        cmp cx, 37h
        je return_handler; if does not equal then ibstall our own program
        push ds
        mov ax, code
        mov ds, ax

        mov ah, 35h ; AH=35h - GET INTERRUPT VECTOR
        mov al, 21h ; Entry: AL = interrupt number
        int 21h ; Return: ES:BX -> current interrupt handler

        mov word ptr old_interupt, bx
        mov word ptr old_interupt + 2, es

        mov ah, 25h; AH = 25h - SET INTERRUPT VECTOR
        mov al, 21h ; AL = interrupt number
        mov dx, offset custom_input ; DS:DX -> new interrupt handler
        int 21h

        pop ds
        jmp proces_program

        return_handler:
            xor cx, cx
            push ds
            mov ax, di
            mov ds, ax

            mov ah, 25h; AH = 25h - SET INTERRUPT VECTOR
            mov al, 21h ; AL = interrupt number
            mov dx, si  ; DS:DX -> new interrupt handler
            int 21h

            pop ds

            
            mov dx, offset text_second
            call cout_string


            mov ah, 01h
            int 21h

            mov dl, al
            call cout_char

            return_from_main:
                mov ah, 04ch
                int 21h

        proces_program:  
            mov dx, offset text_second
            call cout_string

            xor dl, dl
            xor dx, dx

            mov ah, 01h
            int 21h
            
            mov dl, al
            call cout_char

            mov ax, byte [flag_active]
            mov ax, word ptr[buffer_seg]
            mov ax, word ptr[buffer_set_off]

        Close:
            mov ax, 3100h
            mov dx, (Resident - install + 10Fh) / 16
            int 27h
    main endp

    cout_char proc
        mov ah, 02h
        int 21h
        ret
    cout_char endp
    
    cout_string proc 
        mov ah, 09h
        int 21h
        ret
    cout_string endp 
code ends
    end main