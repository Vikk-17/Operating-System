# Memory Segments
A segmented memory model divides the system memory into groups of independent segments referenced by pointers located in the segment registers. Each segment is used to contain a specific type of data. One segment is used to contain instruction codes, another segment stores the data
elements, and a third segment keeps the program stack.

* **Data Segment**
    * It is represented by .data section and the .bss. The .data section is used to declare the memory region, where data elements are stored for the program. This section can't be expanded after the data elements are declared, and it remains static throughout the program.
    The .bss section is also a static memory section that contains buffer for data to be declared later in the program. This buffer memory is zero-filled.

* **Code segment**
    * Represented by .text section. This defines an area in memory that stores the instruction codes. This is also a fixed area.

* **Stack**
    * This segment contains data values passed to functions and procedures within the program.