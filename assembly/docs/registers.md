# Registers
Processors operations mostly involve processing data. This data can be stored in memory and accessed from thereon. However, reading data from and storing data into memory slows down the processors, as it involves complicated process of sending the data request across the control bus and into the memory storage unit and getting the data through the same channel.

To speed up the processor operations, the processor includes some internal memory storage locations, called registers.

The register store data elements for processing without having to access the memory. A limited number of registers are built into the processor chip.

<hr>

## Processor Registers

There are 10 32-bit and 6 16-bit registers in IA-32 architecture.

* General registers
    * Data registers
    * Pointer registers
    * Index registers
* Control registers
* Segment registers

<hr>

### Data Registers
Four 32-bits registers are used for arithmetic, logical and other operations. These 32-bit registers can be used in three ways

* As complete 32-bit data registers EAX, EBX, ECX, EDX
* Lower halves of the 32-bits registers can be used as four 16-bit data registers: AX, BX, CX, DX
* Lower and higher halves of the above mentioned four 16-bit registers can be used as 8-bit data registers: AH, BH, CH, DH and AL, BL, CL, DL


![data register] (https://www.tutorialspoint.com/assembly_programming/images/register1.jpg "Registers")


* **AX is the primary accumulator**
  * It is used in input/output and most arithmetic instructions. For example, in multiplication operation, one operand is stored in EAX or AX or AL register according to the size of the operand.

* **BX is known as the base register**
  * It could be used in indexed addressing.

* **CX is known as the count register**
  * As the ECX, CX registers store the loop count in iterative operations.

* **DX is known as the data register**
  * It is also used in I/O operations. It is also used with AX register along with DX for multiply and divide operations involving large values.

<hr>

### Pointer Registers
The pointer registers are 32-bit EIP, ESP and EBP registers and corresponding 16-bit right portions IP, SP and BP.

* **Instruction Pointer (IP)**
  * The 16-bit IP register stores the offset address of the next instruction to be executed. IP in association with CS register (as CS:IP) gives the complete address of the current instruction in the code segment.

* **Stack Pointer (SP)**
  * The 16-bit SP register provides the offset value within the program stack. SP in association with SS register (SS:SP) refers to be current position of data or address within program stack.

* **Base Pointer (BP)**
  * The 16-bits BP register mainly helps in referencing the parameter variable passed to a subroutine. The address is SS register is combined with the offset in BP to get the location of the parameter. BP can also be combined with DI and SI as base register for special addressing.
