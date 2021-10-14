.model small   

.stack 100h

data segment
    source db 10, 20, 30, 40, 50
    destination db 5 dup ('?')

    string_to_compare_1 db 'MYFILE01.~AT'
    string to_compare_2 db 'MYFILE01.DAT'
data ends

code segment

    assume cs: code, ds: data

    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        copy_string_of_bytes:
            mov si, offset source
            push ds
            pop es ; now es = ds
            mov di, offset destination
            cld
            mov cx, 5 ; number of moved bytes
            rep movsb

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp

code ends

end main_function_name