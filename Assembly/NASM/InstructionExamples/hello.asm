    extern printf

    global main
section .text
main:
    push rsp
    mov rbp, rsp
    sub rsp, 8

    mov rdi, msg
    xor al, al
    call printf

    add rsp, 8
    xor eax, eax
    leave
    ret

section .data
    msg db `Hello World\n\0`
    msg_len equ $ - msg
