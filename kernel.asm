;;It serves as the starting point for our kernel. All our assembly
;file will do is invoke an external function which we write in C, and
;halt the program flow
;We will use a linker script that links the object files to produce
;ther final kernel executable. In this linker script we will explecitly
;specify that we want our binary to be loaded at the address 0x100000.
;This is where the kernel is expected to be. Thus the bootloader will take
;care of firing the kernel's entry point.


;;kernel.asm
bits 32       ;nasm directive - 32 bit
section .text

global start
extern kmain  ;kmain is defined in the c file

start:
    cli       ;block interrupts
    mov esp, stack_space  ;set stack pointer
    call kmain
    hlt       ;halt the CPU


section .bss
resb 8192     ;8KB for stack
stack_space:
