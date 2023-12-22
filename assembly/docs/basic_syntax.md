# Basic Syntax

An assembly program can be devided into three sections - 

* The **data** section
* The **bss** section
* The **text** section

<hr>

## The data section

The data section is used to declare intialized data or constants. This data does not change at runtime. You can declare various constants values, file names, or buffer size, etc., in this section.

```
section .data
```

<hr>

## The bss section

The bss section is used for declaring variables.

```
section .bss
```

<hr>

## The text section

This section is used for keeping actual code, and must be begin with the declaration `.global _start`, tells the kernel where the program execution begins.

```
section .text
    .global _start
    _start:
```

## Comments
```
; Comments begins with semicolon(;)
```

## Language Statements
Consist of three types of statements - 

* Executable instructions
    * Tell the processor what to do. Each instruction consists of an operation code (opcode). Each executable instruction generates one machine language instruction.
* Assembler directives or pseudo-ops
    * Tell the assembler about the various aspects of the assembly process. These are non-executable and do not generate machine language instructions.
* Macros
    * They are basically a text substitution mechanism.

<hr>

## Syntax of Language Statements

```
[label] mnemonic [operands] [;comment]
```
The fields in the square brackets are optional. A basic instruction has two parts, the first one is the name of the instructions (or the mnemonic), which is to be exectued, and the second are the operands or the parameters of the command.

**Example:**
```
INC COUNT   ; Increment the memory variable COUNT

MOV TOTAL, 48   ; Transfer the value 48 in the memory
                ; variable TOTAL

ADD AH,BH       ; Add the content of the BH
                ; register to the AH register

AND MASK1, 128  ; Perform AND operation on the variable
                ; MASK1 and 128

ADD MARKS, 10   ; Add 10 to the variable MARKS
MOV AL, 10      ; Transfer the value 10 to the AL register
```