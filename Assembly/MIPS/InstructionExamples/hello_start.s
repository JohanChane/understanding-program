# 这个函数无法在 spim 中运行，因为用 __start 的用作为入口。

    .globl __start

.text
__start:
    la  $a0, msg
    li  $v0, 4
    syscall

    li $v0, 10
    syscall

.data
    msg:
        .asciiz "Welcome to MIPS world!" 
