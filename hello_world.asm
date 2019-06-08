section .data
    hello db "Hello, World",10

section .text
    global _start

_start:
    mov rax, 1 ; sys_write
    mov rdi, 1 ; standard output
    mov rsi, hello ; buffer
    mov rdx, 14 ; buffer size
    syscall

    mov rax, 60 ; sys_exit
    mov rdi, 0 ; return 0
    syscall
