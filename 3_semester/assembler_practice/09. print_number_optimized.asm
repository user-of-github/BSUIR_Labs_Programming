.386

.model small

.stack 100h

data segment use16 ; DOS doesn't support 32bit app, but wee need functions from .386. So need to leave 16bit app
    input_number dw 16385
    output_string db 4 dup ('?'), 'h$'
data ends

code segment use16

    assume cs: code, ds: data

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

    main proc
        initialize_ds:
            mov ax, data
            mov ds, ax

        program_part:
            mov ax, input_number
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