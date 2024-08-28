    extern printf

    global main
section .text
main:
    push rsp
    mov rbp, rsp
    sub rsp, 8

    mov rdi, format_hhd

    ; base 寄存器不能与其他数相乘。ldword 属于 disp。
    lea rbx, [ldword]
    mov rax, 2
    mov esi, [rbx + rax * 4 + 4]        ; [base + index * 4 + disp]
    mov esi, [rbx + rax * 4]            ; [base + index * 4]
    mov esi, [rbx + rax + 4]            ; [base + index + disp]
    mov esi, [rbx + rax]                ; [base + index]
    mov esi, [rbx]                      ; [base]

    mov rax, 4
    mov esi, [ldword + 4]               ; [disp]
    mov esi, [ldword]                   ; [disp]

    xor al, al
    call printf

    add rsp, 8
    xor eax, eax
    leave
    ret

section .rodata
    format_hhd db `%d\n\0`

section .data
    ldword dd 10, 20, 30, 40
