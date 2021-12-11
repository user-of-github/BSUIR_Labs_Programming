text segment

        assume cs:text,ds:text
        
        org 256

        main proc
                jmp entry
                
                message db 'Hello, com$'
                
                entry:
                        nop
                
                mov ah, 09h
                mov dx, offset message
                int 21h

                mov ax, 4c00h
                int 21h 
        endp 

        
        
text ends

end main