.model small   

.stack 100h

data segment
    number_to_print dw 16385
    output_string db 4 dup ('?'), 'h$' ; 4 empty bytes with h$ in the end
data ends

code segment
    assume cs: code, ds: data

    main_function_name proc

        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main:
            mov ax, offset number_to_print
            mov si, offset output_string

            call convert_number_to_string
            
            mov dx, offset output_string
            mov ah, 09h
            int 21h    

        finish_program:
            mov ah, 04ch
            int 21h

    main_function_name endp

    convert_number_to_string proc 
        push ax
        and ax, 0f00h
        mov cl, 12
        shr ax, cl
        call convert_to_ascii
        mov byte ptr[si],al
        pop ax
        
        push ax
        and ax, 0f00h
        mov cl, 8
        shr ax, cl
        inc si
        call convert_to_ascii
        mov byte ptr[si],al
        pop ax

        push ax
        and ax, 0f00h
        mov cl, 4
        shr ax, cl
        inc si
        call convert_to_ascii
        mov byte ptr[si],al
        pop ax

        push ax
        and ax, 0f00h
        inc si
        call convert_to_ascii
        mov byte ptr[si],al
        pop ax

        ret
    convert_number_to_string endp

    convert_to_ascii proc
        cmp al, 9
        ja letter
        add al, 30h
        jmp ok
        letter:
            add al, 37h
        ok: 
            ret
    endp convert_to_ascii
code ends

end main_function_name