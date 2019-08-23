section .text
extern printf
global _start
_start:
    push ebp
    mov ebp, esp
    push msg
    call printf
    mov esp, ebp
    pop ebp
    ret
section .data
msg db 'Hello, World!', 10, 0
len equ $ - msg