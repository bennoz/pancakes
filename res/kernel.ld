ENTRY(_start)

SECTIONS
{
	. = 0x8000;
	.init : { *(.init) }
	.rodata : { *(.rodata .rodata.*) }
	.data : { *(.data) }
	.text : { *(.text.* .text) }
	__bss_start = .;
	.bss : { *(.bss) }
	. = ALIGN(4096);
	__bss_end = .;

	/DISCARD/ : { *(*) }
}
