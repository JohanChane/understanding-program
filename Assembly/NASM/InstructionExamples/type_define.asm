    extern printf

    global main
section .text
main:
    push rsp
    mov rbp, rsp
    sub rsp, 8

    mov rdi, format_hhd
    mov sil, [lbyte + 1]
    xor al, al
    call printf

    add rsp, 8
    xor eax, eax
    leave
    ret

section .rodata
    format_hhd db `%hhd\n\0`

section .data
data_start:
    ; 个人做法：避免 lable 与关键字同名，加前缀 l。
    lbyte       db 10, 20
    lword       dw 10, 20
    ldword      dd 10, 20
    lquad       dq 10, 20
    ldpt        dq 1.234567e20      ; double-precision float
    lepf        dt 1.234567e20      ; extended-precision float
    lten        dt 1.234e2
    loctword    do 1.234e2
    lymm        dy '\u00'           ; UTF-8 smiley face
    lzmm1       dy 'Foo'
    lzmm        dz '\u00'

    lstr1       db 'Bar'            ; 相当于 'B', 'a', 'r'。没有在末尾添加 0。
    lstr2       db "Bar"            ; 单引号与双引号并无差别
    lstr3       db `Bar\n\0`        ; 支持转义字符

    ldup        db 8 dup 10, 20
    ltimes      times 8 db 10, 20
lrep:
    %rep 8
        db 10, 20
    %endrep

    data_len equ $ - data_start

section .bss
    lresb       resb 10
    lresw       resb 10
    lresd       resb 10
    lresq       resb 10
    lrest       resb 10
    lreso       resb 10
    lresy       resb 10
    lresz       resb 10
