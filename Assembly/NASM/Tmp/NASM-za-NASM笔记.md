# NASM 笔记

### References

-   [NASM - The Netwide Assembler](https://www.nasm.us/doc/)
-   [NASM Tutorial](https://cs.lmu.edu/~ray/notes/nasmtutorial/)
-   [Assembly Programming Tutorial](http://www.pravaraengg.org.in/Download/MA/assembly_tutorial.pdf)

### object file formats

    nasm -hf

### To produce a listing file

    nasm -f coff myfile.asm -l myfile.lst

### obj format and its file suffix

> Microsoft object file formats (obj, win32 and win64): .obj
> Unix object file formats (aout, as86, coff, elf32, elf64, elfx32, ieee, macho32 and macho64) it will substitute .o
> For dbg, rdf, ith and srec, it will use .dbg, .rdf, .ith and .srec, respectively, and for the bin format it will simply remove the extension, so that myfile.asm produces the output file myfile.

### Generate Makefile Dependencies

    nasm -M myfile.asm > myfile.dep

### Include File Search Directories

    nasm -ic:\macrolib\ -f obj myfile.asm

### Quick Start for MASM Users

    dup (?), resb, resw, resq

### Layout of a NASM Source Line

    label:    instruction operands        ; comment

### label and identifier 的命名规则

> Valid characters in labels are letters, numbers, _, $, #, @, ~, ., and ?. The only characters which may be used as the first character of an identifier are letters, . (with special meaning: see section 3.9), _ and ?.

### Pseudo-Instructions

    resb, TIMES

### Declaring Initialized Data
### Declaring Uninitialized Data
### Defining Constants

    equ

### Repeating Instructions or Data

    TIMES

### Effective Addresses

> Effective addresses, in NASM, have a very simple syntax: they consist of an expression evaluating to the desired address, enclosed in square brackets.

### Constants

> NASM understands four different types of constant: numeric, character, string and floating-point.

### Unary Operators

    seg

### Local Labels

## The NASM Preprocessor

*Preprocessor directives all begin with a `%` sign.*

    %define
    %defstr
    %strlen

    %macro
    Macro-Local Labels

    %include

    Standard Macros

### GLOBAL: Exporting Symbols to Other Modules

### `_start: Defining the Program Entry Point`

### obj Extensions to the EXTERN Directive

### Function Definitions and Function Calls

### Instruction List

    Special instructions (pseudo-ops)
    Conventional instructions
