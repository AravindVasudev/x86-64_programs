section .data
    query db "Enter two numbers: "

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
    

    mov rax, 60 ; sys_exit
    mov rdi, 0 ; exit 0
    syscall
