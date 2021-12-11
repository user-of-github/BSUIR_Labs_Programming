.model small

.stack 100h

data segment
    input_number dw 16385
    output_string db 4 dup ('?'), 'h$'
data ends

code segment

    assume cs: code, ds: data

    convert_to_ascii proc 
        cmp al, 9 ; in al we have 0000xyzq - some number. 
        ; We can compare it with decimal 9, to know if it must be written with letter (A, B...) or digit
        ja letter
        add al, 30h ; 30h - code of '0' => it will transform to char-digit
        jmp ok
        letter:
            add al, 37h
        ok: 
            ret
    endp

    ; FUNCTION FOR CONVERTING 16BIT (WORD) NUMBER TO STRING
    convert_to_string proc 
        push ax ; save source number in stack
        and ax, 0F000h ; and <=> &. 0F000h = 1111000000000000 => so we get only first 4 bits: xyzq000000000000
        mov cl, 12 ; for lower command shr                                         
        shr ax, cl ; moves bits in ax to the right on 12 (what is stored in cl) => xyzq000000000000 -> 000000000000xyzq
        call convert_to_ascii ; so now ax = 000000000000xyzq => al = 0000xyzq | let's analyze it and get ASCII symbol
        mov byte ptr[si], al
        pop ax

        push ax ; save source number in stack
        and ax, 0F00h ; and <=> &. 0F00h = 111100000000
        mov cl, 8
        shr ax, cl
        inc si
        call convert_to_ascii
        mov byte ptr[si], al
        pop ax

        push ax ; save source number in stack
        and ax, 0F0h ; and <=> &. 0F0h = 11110000
        mov cl, 4
        shr ax, cl
        inc si
        call convert_to_ascii
        mov byte ptr[si], al
        pop ax

        push ax ; save source number in stack
        and ax, 0Fh ; and <=> &. 0F000h = 1111 
        shr ax, cl
        inc si
        call convert_to_ascii
        mov byte ptr[si], al
        pop ax
        ret
    endp convert_to_string

    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        program_part:
            mov ax, 16385
            mov si, offset output_string
            call convert_to_string

        print_output_string:
            mov ah, 09h
            mov dx, offset output_string
            int 21h

        finish_program:
            mov ah, 04ch
            int 21h
    main endp

code ends
    end main