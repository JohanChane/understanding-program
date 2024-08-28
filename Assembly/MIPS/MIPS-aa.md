# mips

## References

-   《计算机组成原理与设计: 硬件/软件接口》
-   《See MIPS Run》
-   QTSpim help
-   [Assemblers,Linkers,and the SPIMSimulator](http://pages.cs.wisc.edu/~larus/HP_AppA.pdf)
-   [SPIM A MIPS32 Simulator](http://pages.cs.wisc.edu/~larus/spim.html)
-   [MIPS Instruction Set](https://github.com/MIPT-ILab/mipt-mips/wiki/MIPS-Instruction-Set)

## emulator

    spim
    spim 的较新版 QTSpim

## `__start and main`

> `MIPS 的入口默认 __start，会调用 main 全局标签。spim 模拟器会定义 __start，所以用户不用自己定义 __start, 只需定义 main 即可，否则会出现定义。`

## call function and system call

`$v0`

    call function:
        用来放置函数返回値。

    system call:
        用来放置 system call number 。

`$a<n>`

    call function and system call:
        用来放置参数。

`$ra`

    call function:
        用来指向返回地址。
