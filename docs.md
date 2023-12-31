# Short notes

### 32-bit address space
Refers to the range of memory addresses that a computer system with a 32-bit architecture can access. In a 32-bit system, memory addresses are represented by 32-bits, allowing the system to access a total of 2 <sup>32</sup> unique memory location. The memory addresses range from 0x00000000 to 0xFFFFFFFF in hex. Each unique memory location within this address space can store data, instructions, variables, or other information.
The maximum amount of memory that a 32-bit system can directly address is limited to 4 gigabytes (GB) of RAM. But due to hardware and system requirements (such as memory-mapped I/O, reserved address, etc), the actual usable memory for applications might be less than the full 4 GB.

**For 64-bits address space address range from 0x0000000000000000 to 0xFFFFFFFFFFFFFFFF in hex i.e., 2 <sup>64</sup> unique memory location. And 64-bit system can theoritically address up to 18.4 exabytes (EB) of memory.**

### How does an  x86 machine boot
Most register of the x86 CPU have well defined values after power-on. The instructions pointer (EIP) register holds the memory address for the instruction being executed by the processor. EIP is hard-coded to the value 0xFFFFFFF0. Thus the x86 CPU is hardwired to begin execution at the physical address 0xFFFFFFF0. In fact, the last 16 bytes (would span from 0xFFFFFFF0 to 0xFFFFFFFF where each hexadecimal digit represents 4-bits, so the last 16-bytes are from the 15th position to 32nd position) of 32-bit address space. This memory address is called reset vector.

Now, the chipset's memory map makes sure that 0xFFFFFFF0 is mapped to a certain part of the BIOS, not to the RAM. Meanwhile, the BIOS copies itself to the RAM for faster access. This is called shadowing. The address 0xFFFFFFF0 will contain just a jump instruction to the address in memory where BIOS has copied itself.

Thus, the BIOS code starts its execution.  BIOS first searches for a bootable device in the configured boot device order. It checks for a certain magic number to determine if the device is bootable or not. (whether bytes 511 and 512 of first sector are 0xAA55)

Once the BIOS has found a bootable device, it copies the contents of the device’s first sector into RAM starting from physical address 0x7c00; and then jumps into the address and executes the code just loaded. This code is called the bootloader.

The bootloader then loads the kernel at the physical address 0x100000. The address 0x100000 is used as the start-address for all big kernels on x86 machines.

All x86 processors begin in a simplistic 16-bit mode called real mode. The GRUB bootloader makes the switch to 32-bit protected mode by setting the lowest bit of CR0 register to 1. Thus the kernel loads in 32-bit protected mode.

**In case of linux kernel, GRUB detects linux boot protocol and loads linux kernel in real mode. Linux kernel itself makes the switch to protected mode.**


