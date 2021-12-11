.586

.model small

.stack 100h

data segment use16
    old_03h dd 0 ; cell for storing default vector
data ends

code segment use16
    assume cs: code, ds: data

    main proc 
        inititalize_ds:
            mov ax, data
            mov ds, ax

        body:
            set_custom_handler:
                mov ax, 3503h
                int 21h

                mov word ptr old_03h, bx
                mov word ptr old_03h + 2, es 
                mov ax, 2503h
                mov dx, offset new_03h
                push ds
                mov bx, seg new_03h
                mov ds, bx
                int 21h
                pop ds

                int 3h 

                mov ax, 2503h
                lds dx, old_03h
                int 21h  


        return_main:
            mov ah, 04ch
            int 21h
    main endp

    new_03h proc
        pusha ; saving all registers
        push ds
        push cs
        pop ds

        mov bp, sp ; sp = current top of stack
        mov ax, [bp + 22]
        mov si, offset flags + 6
        call convert_symbol_to_ascii

        mov ah, 09h
        mov dx, offset flags
        int 21h
        pop ds
        popa

        iret

        flags db 'FLAGS=****h'
    new_03h endp

    convert_symbol_to_ascii proc 
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
        pusha ; Stores contents of eight 16-bit general-purpose registers on the stack
        mov bx, 0F000h ; bx will contain mask of bits (for example, 1111000000..., then after shift 000011110000...)
        mov dl, 12 ; number of shifts
        mov cx, 4 ; loop counter

        cycle:
            push cx ; save our counter (because inside we maybe need free cx)
            push ax ; save source number in stack also
            and ax, bx ; select 4 bits from ax (ax & bx, which equals 0F000h in the start, - so will get first 4 bits and then zeros) 
            mov cl, dl ; for shift-value
            shr ax, cl ; in xyzq0000... put xyzq to right (beginning)
            call convert_symbol_to_ascii
            mov byte ptr [si], al ; byte ptr just shows, that operand's type is byte. And [si] is adressing by adress
            inc si ; move ++string[i] (change position in output string to next) 
            pop ax ; back to ax source number (because used ax for bit mask operations)
            shr bx, 4; shift BITS MASK to right; for the first step: 1111000000000000 -> 0000111100000000
            sub dl, 4 ; change next shift-value (-=4), so next time it will be: 0000xyzq00000000 -> 000000000000xyzq (we will need only 8 shifts)
            pop cx ; recreate loop's counter
            loop cycle

        popa
        ret
    endp convert_to_string
code ends

end main