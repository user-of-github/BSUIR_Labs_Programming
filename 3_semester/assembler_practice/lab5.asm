.model tiny

.stack 256

.data
    textStart db "Input your offset:$"
    text db "Fixited$"
    bufferSeg dw 0
    bufferSetOff dw 0
    flagActive dw 0
    
.code
    Resident:
    org 100h
    jmp Install
    mygapINPUT proc
        mov cx, 37h
        mov si, word ptr cs:[old_interupt]
        mov di, word ptr cs:[old_interupt+2]
        push si di ds cx bx ax
        pushf
        cmp ah, 02h; проверяем на наличие нужной нам функции, если нет то пропускаем все дополнение к обработчику и просто переходим на исполнение старого обработчика 21h
        jne miss_myINTERUPT
        cmp dl, 30h; проверка на введенный символ, нужно чтобы это было цифрой
        jb miss_myINTERUPT
        cmp dl, 39h
        ja miss_myINTERUPT
        add dl, 5; делаем смещение цифры по заданию
        cmp dl, 39h
        jbe miss_myINTERUPT; если результат больше 9 то отнимем 10,т.к. необходимо вывести на экран один символ(цифру)
        sub dl, 10
        miss_myINTERUPT:
            popf
            pop ax bx cx ds di si
            jmp cs:[old_interupt]; переходим в старый обработчик прерывани
        old_interupt dd ?
    mygapINPUT endp
    Install:
    main proc
        mov ah, 01h
        int 21h
        mov ah, 02h
        mov dl, al
        int 21h
        mov ax, @data
        mov ds, ax

        mov ah, 02h
        mov dl, 10
        int 21h


        mov ah, 09h
        mov dx, offset textStart
        int 21h

        mov ah, 02h
        mov dl, 10
        int 21h

        cmp cx, 37h
        je return_handler; если не совпадает, то инсталируем нашу програму, чтобы сбросить обработчик прерывания
        push ds
        mov ax, @code
        mov ds, ax
        mov ah, 35h
        mov al, 21h
        int 21h; ищем адрес в таблице векторов 21h прерывания
        mov word ptr old_interupt, bx
        mov word ptr old_interupt+2, es
        mov ah, 25h; если совпадает, то необходимо заменить текущее прерывание на наше резеднтное
        mov al, 21h
        mov dx, offset mygapINPUT
        int 21h
        pop ds
        jmp proces_program
        return_handler:
            xor cx, cx
            push ds
            mov ax, di
            mov ds, ax
            mov ah, 25h
            mov al, 21h
            mov dx, si
            int 21h
            pop ds
            mov ah, 01h
            int 21h
            mov ah, 02h
            mov dl, al
            int 21h
            mov ax, 4c00h
            int 21h
        proces_program:
            mov ah, 01h
            int 21h
            mov ah, 02h
            mov dl, al
            int 21h
            mov ax, byte [flagActive]
            mov ax, word ptr[bufferSeg]
            mov ax, word ptr[bufferSetOff]
        Close:
        mov ax, 3100h
        mov dx, (Resident - Install +10Fh)/16
        int 27h
    main endp
    end main