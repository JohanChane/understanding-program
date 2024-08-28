# NASM 语法

## Content

[toc]

## References

-   [The NASM Language](https://www.nasm.us/doc/nasmdoc3.html)

## 常量

## 数据定义

    # 定义初始化的数据
    Dx      := DB, DW, DD, DQ, DT, DO, DY and DZ;
    # 定义未初始化的数据
    RESx    := RESB, RESW, RESD, RESQ, REST, RESO, RESY and RESZ;

    # Pseudo-Instructions
    equ
    times
    %rep
    %endrep
    global
    extern

times 和 %rep 的区别：

> times 不能在宏处使用而 %rep 可以。因为编译先解析宏再解析 times。<br>
> times 只能一行重复，而 %rep 可多行重复。

当命令无法知道操作数的大小时，用 DWORD, QWORD or TWORD 指示命令的操作大小。比如：

    <instruction> [short | far] [byte | word | dword | quad | ten] <address>

## Memory Addressing

    # Effective Address = BaseReg + IndexReg * ScaleFactor + Disp
    section:[base + index*scale + disp]

## Macro

```nasm
; A macro with two parameters
; Implements the write system call
%macro write_string 2
    mov eax, 4
    mov ebx, 1
    mov ecx, %1
    mov edx, %2
    int 0x80
%endmacro

section .text
    global main ;must be declared for using gcc
main: ;tell linker entry point
    write_string msg1, len1
    write_string msg2, len2
    write_string msg3, len3
    mov eax,1 ;system call number (sys_exit)
    int 0x80 ;call kernel

section .data
    msg1 db 'Hello, programmers!',0xA,0xD
    len1 equ $ - msg1
    msg2 db 'Welcome to the world of,', 0xA,0xD
    len2 equ $- msg2
    msg3 db 'Linux assembly programming! ', 0xA, 0xD
    len3 equ $- msg3
```
