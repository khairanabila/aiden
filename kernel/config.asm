%define KERNEL_name "aiden"
%define KERNEL_version "1.0.0"
%define KERNEL_REVISION "1"
%define KERNEL_architecture "x86_64"

KERNEL_BASE_address equ 0x0000000000100000
KERNEL_STACK_address equ KERNEL_MEMORY_HIGH_VIRTUAL_address - KERNEL_STACK_SIZE_byte
KERNEL_STACK_pointer equ KERNEL_MEMORY_HIGH_VIRTUAL_address - KERNEL_PAGE_SIZE_byte
KERNEL_STACK_SIZE_byte equ KERNEL_PAGE_SIZE_byte * 0x02
