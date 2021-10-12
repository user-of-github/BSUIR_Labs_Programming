.model small   

.stack 100h

data segment
    
data ends

code segment

    assume cs: code, ds: data

    main_function_name proc
        initialize_ds_register:
            mov ax, data
            mov ds, ax

        main_program:



        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp

code ends

end main_function_name