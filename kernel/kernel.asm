%include "config.asm"
%include "kernel/config.asm"

	[BITS 32]

	[ORG KERNEL_BASE_address]

init:

	%include "kernel/init.asm"

clean:

kernel:

	jmp $

%include "kernel/macro/close.asm"
%include "kernel/macro/apic.asm"
%include "kernel/panic.asm"
%include "kernel/page.asm"
%include "kernel/memory.asm"
%include "kernel/video.asm"
%include "kernel/apic.asm"
%include "kernel/io_apic.asm"
%include "kernel/data.asm"
%include "kernel/idt.asm"
%include "kernel/task.asm"
%include "kernel/driver/rtc.asm"
%include "library/page_align_up.asm"
%include "library/page_from_size.asm"


kernel_end:
