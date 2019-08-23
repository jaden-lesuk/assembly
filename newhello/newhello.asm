section .text
global _start

_start:
	mov     edx, len     ; number of bytes to write - one for each letter plus 0Ah (line feed character)
    mov     ecx, msg    ; move the memory address of our message string into ecx
    mov     ebx, 1      ; write to the STDOUT file
    mov     eax, 4      ; invoke SYS_WRITE (kernel opcode 4)
    int     0x80

section .data
msg db 'Hello', 0xa
len equ $ - msg     ;length of the string
