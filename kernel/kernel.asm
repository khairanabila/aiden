%include "config.asm"
%include "kernel/config.asm"
%include "kernel/macro/apic.asm"

	[BITS 32]

	[ORG KERNEL_BASE_address]

init:
	%include "kernel/init.asm"

	align KERNEL_PAGE_SIZE_byte, db STATIC_NOTHING

clean:

kernel:
	call kernel_task_active

	mov word [rdi + KERNEL_TASK_STRUCTURE.flags], STATIC_EMPTY

	jmp $
%include "kernel/macro/lock.asm"
%include "kernel/macro/debug.asm"
%include "kernel/macro/copy.asm"
%include "kernel/ipc.asm"
%include "kernel/panic.asm"
%include "kernel/page.asm"
%include "kernel/memory.asm"
%include "kernel/video.asm"
%include "kernel/apic.asm"
%include "kernel/io_apic.asm"
%include "kernel/data.asm"
%include "kernel/idt.asm"
%include "kernel/task.asm"
%include "kernel/vfs.asm"
%include "kernel/exec.asm"
%include "kernel/service.asm"
%include "kernel/debug.asm"
%include "kernel/font/canele.asm"
%include "kernel/driver/rtc.asm"
%include "kernel/driver/ps2.asm"
%include "kernel/driver/pci.asm"
%include "kernel/driver/network/i82540em.asm"
%include "kernel/driver/storage/ide.asm"
%include "kernel/driver/serial.asm"
%include "kernel/service/tresher.asm"
%include "kernel/service/http.asm"
%include "kernel/service/tx.asm"
%include "kernel/service/network.asm"
%include "kernel/service/render.asm"
%include "kernel/service/date.asm"
%include "include/color.asm"
%include "include/input.asm"
%include "include/integer_to_string.asm"
%include "include/page_align_up.asm"
%include "include/page_from_size.asm"
%include "include/string_compare.asm"
%include "include/string_cut.asm"
%include "include/string_digits.asm"
%include "include/string_to_integer.asm"
%include "include/string_trim.asm"
%include "include/string_word_next.asm"

kernel_end:
