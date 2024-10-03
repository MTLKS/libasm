section .text
    global ft_strlen            ; Export ft_strlen function

ft_strlen:
    mov rsi, rdi                ; Move the address of the string to rsi
    xor rcx, rcx                ; Clear rcx to use it as a counter

loop_start:
    mov al, [rsi]               ; Move the byte at the address in rsi to al
    cmp al, 0                   ; Compare the byte in al to 0
    je loop_end                 ; If the byte in al is 0, jump to loop_end
    inc rcx                     ; Increment rcx
    inc rsi                     ; Increment rsi
    jmp loop_start              ; Jump to loop_start

loop_end:
    mov rax, rcx                ; Move the length of the string to rax
    ret                         ; Return the length of the string in rax

