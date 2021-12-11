; demo cycle of 4 steps with latency

.model small   

.stack 100h

data segment
   string db '<>$'
data ends

code segment

    assume CS: code, DS: data

    main_function_name proc
        init_ds:
            mov ax, data
            mov ds, ax

        mov cx, 4 ; main cycle for printing length
        ; we have empty stack; 

        my_cycle: 
            push cx ; ; to remember current cx (cx = 4), we push it. Now stack: {4}
            mov ah, 09h
            mov dx, offset string ; printing it
            int 21h
            mov cx, 100
        
        ; well, we printed my_cicle's output for one time
        ; now gonna lower
        outer:
            push cx ; remembering 100. Now stack: {4, 100}
            mov cx, 65535
        
        inner: ; repeating inner (empty-non-loop) for 65535 times
            loop inner

        pop cx ; get away 100. Now cx = 100. Now stack: {4}
        loop outer ; loop outer for 100 more times. It means that inner-loop will also repeat 100 times (=> inner will repeat ~ 65535 * 100 times)
        pop cx ; get away 4. Now cx = 4; Now stack: {}
        loop my_cycle

        finish_program:
            mov ah, 04ch
            int 21h
    main_function_name endp
 
code ends

end main_function_name