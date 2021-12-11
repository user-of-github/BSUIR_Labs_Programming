.model small

.stack 100h

data segment
     buffer db 100, ? , 100 dup (' ') 
data ends

code segment

    assume cs: code, ds: data

    main_function_proc proc
        initialize_ds:
            mov ax, data
            mov ds, ax
        
        main_part:
            mov dx, offset buffer 
            mov ah, 0ah 
            int 21h 
    
                jmp print 

            print: 
                xor bx, bx
                mov bl, buffer[1]
                mov buffer[bx+2], '$'
                mov dx, offset buffer + 2 
                mov ah, 09h 
                int 21h   

        finish_programme:
            mov ah, 04ch
            int 21h
    endp

    

code ends

end main_function_proc



; input_first_string:
               ; input_first_string_symbol:
                ;    xor ax, ax 
                ;    mov ah, 01h ; 01h - for inputing one key pressed | result will be in AL
               ;;     int 21h
;
               ;     cmp al, 13 ; AL === Enter ?
                  ;  je done
;
              ;      cmp al, 32 ; AL === ' ' ?
              ;      je done

             ;       xor ah, ah ; AH (which was used for int 21h) = 0
;
            ;        mov si, counter 
               ;     mov string1[si], al
                  ;  inc string1_length
            ;        add counter, 1
            ;      
           ;         jmp input_first_string_symbol

     ;   done: 
     ;       nop