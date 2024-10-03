section .text
    global ft_strcpy            ; Export ft_strcpy function

ft_strcpy:
    mov rcx, rdi                ; Move the address of the string to rcx

loop_start:
    mov al, [rsi]               ; Move the byte at the address in rsi to al
    mov [rdi], al               ; Move the byte in al to the address in rdi
    cmp al, 0                   ; Compare the byte in al to 0
    je loop_end                 ; If the byte in al is 0, jump to loop_end
    inc rsi                     ; Increment rsi
    inc rdi                     ; Increment rdi
    jmp loop_start              ; Jump to loop_start

loop_end:
    mov rax, rcx                ; Move the address of the string to rax
    ret                         ; Return