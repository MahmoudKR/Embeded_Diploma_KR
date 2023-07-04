ENTRY(reset)
MEMORY
{
	mem (rwx) : ORIGIN = 0x00000000, LENGTH = 64M
}

SECTIONS
{
	. = 0x10000; /* assigning the entry point */
	.startup . :
	{
		startup.o(.text) 
	}> mem
	.text :
	{
		*(.text) *(.rodata) /* all .text and .rodata are added to .text */
	}> mem
	.data :
	{
		*(.data)
	}>mem
	.bss :
	{
		*(.bss) *(COMMON) /* COMMON is any info that is not assigned to a section */
	}> mem
	. = . + 0x1000; /* the 4kb of stack memory */
	stack_top = . ;
}