.model small ; MODEL позволяет задать для программы несколько стандартных моделей сегментации.    

.stack 100h ; Память для стека. Обязательно

.data ; раздел с константами/переменными
    SomeMessage  db 'Hello!',13,10,'$'
    SomeNumber db 51

.code ; сегмент с кодом. Обязательный 

    print_message proc near
        mov    ax, @data ; установить регистр DS таким образом, чтобы он указывал на сегмент данных
        mov    ds,ax  
        mov    ah,9 ; функция DOS вывода строки
        mov    dx,OFFSET SomeMessage    ; ссылка на сообщение "Привет!"
        int    21h ; вывести "Привет!" на экран    
        ret
    print_message endp  

    main_function_name proc ; аналог void main() в C/C++
        call print_message

        finish_program:
            mov    ah,4ch ; функция DOS завершения программы
            int    21h    ; завершить программу
    main_function_name endp


    end main_function_name

code ends
