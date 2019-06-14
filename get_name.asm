section .data
    query db "What is your name? "
    greeting db "Hello, "

section .bss
    name resb 16

section .text
    global _start

_start:
    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    mov rsi, query ; buffer
    mov rdx, 19 ; buffer size
    syscall

    mov rax, 0 ; sys_read
    mov rdi, 0 ; stdin
    mov rsi, name ; buffer
    mov rdx, 16 ; buffer size
    syscall

    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    mov rsi, greeting ; buffer
    mov rdx, 7 ; buffer size
    syscall

    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    mov rsi, name ; buffer
    mov rdx, 16 ; buffer size
    syscall

    mov rax, 60 ; sys_exit
    mov rdi, 0 ; exit 0
    syscall
