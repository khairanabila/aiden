KERNEL_INIT_LONG_MODE_PML4_TABLE_address equ 0x0000A000

KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte equ 0x1000
KERNEL_INIT_LONG_MODE_PAGE_SIZE_2MiB_byte equ 0x00200000

KERNEL_INIT_LONG_MODE_PAGE_FLAG_available equ 00000001b
KERNEL_INIT_LONG_MODE_PAGE_FLAG_writeable equ 00000010b
KERNEL_INIT_LONG_MODE_PAGE_FLAG_2MiB_size equ 10000000b
KERNEL_INIT_LONG_MODE_PAGE_FLAG_default equ KERNEL_INIT_LONG_MODE_PAGE_FLAG_available | KERNEL_INIT_LONG_MODE_PAGE_FLAG_writeable

	[BITS 32]
	xor   eax, eax
	mov   ecx, (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x06) / 0x04
	mov   edi, KERNEL_INIT_LONG_MODE_PML4_TABLE_address
	rep   stosd

	mov dword [KERNEL_INIT_LONG_MODE_PML4_TABLE_address], KERNEL_INIT_LONG_MODE_PML4_TABLE_address + KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte + KERNEL_INIT_LONG_MODE_PAGE_FLAG_default

	mov dword [KERNEL_INIT_LONG_MODE_PML4_TABLE_address + KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte], KERNEL_INIT_LONG_MODE_PML4_TABLE_address + (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x02) + KERNEL_INIT_LONG_MODE_PAGE_FLAG_default
	mov dword [KERNEL_INIT_LONG_MODE_PML4_TABLE_address + KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte + 0x08], KERNEL_INIT_LONG_MODE_PML4_TABLE_address + (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x03) + KERNEL_INIT_LONG_MODE_PAGE_FLAG_default
	mov dword [KERNEL_INIT_LONG_MODE_PML4_TABLE_address + KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte + 0x10], KERNEL_INIT_LONG_MODE_PML4_TABLE_address + (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x04) + KERNEL_INIT_LONG_MODE_PAGE_FLAG_default
	mov dword [KERNEL_INIT_LONG_MODE_PML4_TABLE_address + KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte + 0x18], KERNEL_INIT_LONG_MODE_PML4_TABLE_address + (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x05) + KERNEL_INIT_LONG_MODE_PAGE_FLAG_default

	mov eax, KERNEL_INIT_LONG_MODE_PAGE_FLAG_default + KERNEL_INIT_LONG_MODE_PAGE_FLAG_2MiB_size
	mov ecx, 512 * 0x04
	mov edi, KERNEL_INIT_LONG_MODE_PML4_TABLE_address + (KERNEL_INIT_LONG_MODE_PAGE_SIZE_4KiB_byte * 0x02)

.next:
	stosd

	add edi, 0x04

	add eax, KERNEL_INIT_LONG_MODE_PAGE_SIZE_2MiB_byte

	dec ecx
	jnz .next

	lgdt [kernel_init_header_gdt_64bit]

	mov eax, 1010100000b
	mov cr4, eax

	mov eax, KERNEL_INIT_LONG_MODE_PML4_TABLE_address
	mov cr3, eax

	mov ecx, 0xC0000080
	rdmsr
	or  eax, 100000000b
	wrmsr

	mov eax, cr0
	or  eax, 0x80000001
	mov cr0, eax

	jmp 0x0008:kernel_init

align 0x08

kernel_init_table_gdt_64bit:
	dq STATIC_EMPTY
	dq 0000000000100000100110000000000000000000000000000000000000000000b
	dq 0000000000100000100100100000000000000000000000000000000000000000b

kernel_init_table_gdt_64bit_end:

kernel_init_header_gdt_64bit:
	dw kernel_init_table_gdt_64bit_end - kernel_init_table_gdt_64bit - 0x01
	dd kernel_init_table_gdt_64bit
