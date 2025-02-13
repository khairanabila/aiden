align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING

console_window   dq STATIC_EMPTY
dq STATIC_EMPTY
dq CONSOLE_WINDOW_WIDTH_pixel
dq CONSOLE_WINDOW_HEIGHT_pixel
dq STATIC_EMPTY

.extra:
	dq STATIC_EMPTY
	dq INCLUDE_UNIT_WINDOW_FLAG_header | INCLUDE_UNIT_WINDOW_FLAG_border
	dq STATIC_EMPTY
	dq STATIC_EMPTY

.elements:
	.element_header:  dd INCLUDE_UNIT_ELEMENT_TYPE_header
	dq .element_header_end - .element_header
	dq 0
	dq 0
	dq STATIC_EMPTY
	dq INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel
	dq STATIC_EMPTY
	db .element_header_end - .element_header_string
	.element_header_string:  db "Console"

.element_header_end:

	.element_terminal:  dd INCLUDE_UNIT_ELEMENT_TYPE_draw
	dq .element_terminal_end - .element_terminal
	dq 0
	dq INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel
	dq CONSOLE_WINDOW_WIDTH_pixel
	dq CONSOLE_WINDOW_HEIGHT_pixel - INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel
	dq STATIC_EMPTY

.element_terminal_end:
	dd STATIC_EMPTY

console_window_end:

console_terminal_table dq CONSOLE_WINDOW_WIDTH_pixel
                       dq CONSOLE_WINDOW_HEIGHT_pixel - INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel
                       dq (CONSOLE_WINDOW_WIDTH_pixel * (CONSOLE_WINDOW_HEIGHT_pixel - INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel)) << KERNEL_VIDEO_DEPTH_shift
                       dq CONSOLE_WINDOW_WIDTH_pixel << KERNEL_VIDEO_DEPTH_shift
                       dq STATIC_EMPTY
                       dq STATIC_EMPTY
                       dq STATIC_EMPTY
                       dq STATIC_EMPTY
                       dq STATIC_EMPTY
                       dq STATIC_EMPTY
                       dq 0x00F5F5F5
                       dq 0x00000000
