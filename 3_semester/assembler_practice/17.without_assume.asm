.model small

.stack 100h

data segment
    message db 'Hello world !$'
data ends

code segment 
    assume cs: code
    main proc  
        initialize_ds:
            mov ax, data
            mov ds, ax
        
        body:
            mov dx, offset message
            mov ah, 09h
            int 21h 


        return_main:
            mov ah, 04ch
            int 21h
    main endp 
code ends

end main