.model small ; MODEL allows to set several standard segmentation models for the program    

.stack 100h ; Memory for stack (for push/pop operations)

data segment; constants/variables
    file_name db 'Z:\bggbrf\testfile.001', 0
    error_message db 'Error ! $'
    error_file_not_found_message db 'File not found ! $'
    error_directory_not_found_message db 'Directory not found ! $'
    error_file_access_denied_message db 'Access to file denied ! $'
    success_message db 'File deleted$'
data ends

code segment ; segment with code. Necessary. Can be named as TEXT also 

    assume CS: code, DS: data

    main_function_name proc ; analog of void main() в C/C++.
        necessary_initialization_of_ds:
            mov ax, data
            mov ds, ax

        remove_file:
            mov ah, 41h ; DOS-function for removing file
            mov dx, offset file_name
            int 21h
            jc error ; jump to error if CF (Carry Flag) === 1 (means error)
        
        success:
            mov ah, 09h
            mov dx, offset success_message
            int 21h

        finish_program:
            mov ah, 4ch ; DOS-function for finishing program
            int 21h 

        error:
            mov dx, offset error_message
            mov ah, 09h
            int 21h

            cmp ax, 03h ; 03h - directory not found
            je not_existing_directory

            cmp ax, 02h ; ax now containes error code from received error. 02h - file not found
            je file_not_found ; <=> "jump if equal"

            cmp ax, 05h
            je access_denied

        file_not_found:
            mov dx, offset error_file_not_found_message
            jmp write_final_error_text

        not_existing_directory:
            mov dx, offset error_directory_not_found_message
            jmp write_final_error_text

        access_denied:
            mov dx, offset error_file_access_denied_message
            jmp write_final_error_text

         
        write_final_error_text:
            mov ah, 09h
            int 21h
            jmp finish_program

    main_function_name endp
 
code ends

end main_function_name ; end - announces about main entry point