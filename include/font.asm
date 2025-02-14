	; Define font dimension in pixel
	INCLUDE_FONT_WIDTH_pixel equ 6
	INCLUDE_FONT_HEIGHT_pixel equ 12
	INCLUDE_FONT_MATRIX_offset equ 0x20

	;     Align data to static qword size
	align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING

	; Store font width and height as qword values
	include_font_width_pixel dq INCLUDE_FONT_WIDTH_pixel
	include_font_height_pixel dq INCLUDE_FONT_HEIGHT_pixel
	include_font_width_byte dq INCLUDE_FONT_WIDTH_pixel << KERNEL_VIDEO_DEPTH_shift

	include_font_matrix: db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x14, 0x3E, 0x14, 0x3E, 0x14, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x1E, 0x20, 0x1C, 0x02, 0x3C, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x30, 0x32, 0x04, 0x08, 0x10, 0x26, 0x06, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x18, 0x24, 0x24, 0x18, 0x26, 0x24, 0x1A, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x04, 0x08, 0x08, 0x10, 0x10, 0x10, 0x08, 0x08, 0x04, 0x00
	db 0x00, 0x00, 0x10, 0x08, 0x08, 0x04, 0x04, 0x04, 0x08, 0x08, 0x10, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x08, 0x2A, 0x1C, 0x2A, 0x08, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x04, 0x04, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x26, 0x2A, 0x32, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x04, 0x0C, 0x14, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x02, 0x0C, 0x10, 0x20, 0x3E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x04, 0x08, 0x1C, 0x02, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x04, 0x0C, 0x14, 0x24, 0x3E, 0x04, 0x04, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3C, 0x20, 0x3C, 0x02, 0x02, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x20, 0x3C, 0x22, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x02, 0x04, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x22, 0x1C, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x22, 0x22, 0x1E, 0x02, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x08, 0x10, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x02, 0x04, 0x08, 0x10, 0x08, 0x04, 0x02, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x10, 0x08, 0x04, 0x02, 0x04, 0x08, 0x10, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x02, 0x04, 0x08, 0x00, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x2E, 0x2A, 0x2E, 0x20, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x14, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x3C, 0x22, 0x22, 0x3C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x20, 0x20, 0x20, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x3C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x20, 0x20, 0x3C, 0x20, 0x20, 0x3E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x20, 0x20, 0x3C, 0x20, 0x20, 0x20, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x20, 0x2E, 0x22, 0x22, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x3E, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x08, 0x08, 0x08, 0x08, 0x08, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x24, 0x28, 0x30, 0x28, 0x24, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x36, 0x2A, 0x22, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x32, 0x2A, 0x26, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x22, 0x3C, 0x20, 0x20, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x06, 0x00
	db 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x3C, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x1C, 0x22, 0x20, 0x1C, 0x02, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x22, 0x14, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x2A, 0x2A, 0x14, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x14, 0x08, 0x14, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x14, 0x08, 0x08, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x3E, 0x02, 0x04, 0x08, 0x10, 0x20, 0x3E, 0x00, 0x00
	db 0x00, 0x00, 0x1C, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x1C, 0x00
	db 0x00, 0x00, 0x00, 0x20, 0x20, 0x10, 0x10, 0x08, 0x08, 0x04, 0x04, 0x00
	db 0x00, 0x00, 0x1C, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x1C, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00
	db 0x00, 0x00, 0x00, 0x10, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x02, 0x1E, 0x22, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x20, 0x20, 0x3C, 0x22, 0x22, 0x22, 0x3C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x22, 0x20, 0x20, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x02, 0x02, 0x1E, 0x22, 0x22, 0x22, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x22, 0x3E, 0x20, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x06, 0x08, 0x3E, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x22, 0x22, 0x22, 0x1E, 0x02, 0x1C
	db 0x00, 0x00, 0x00, 0x20, 0x20, 0x3C, 0x22, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x08, 0x00, 0x18, 0x08, 0x08, 0x08, 0x0C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x04, 0x00, 0x0C, 0x04, 0x04, 0x04, 0x04, 0x04, 0x18
	db 0x00, 0x00, 0x00, 0x30, 0x10, 0x12, 0x14, 0x18, 0x14, 0x12, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x18, 0x08, 0x08, 0x08, 0x08, 0x08, 0x06, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x2A, 0x2A, 0x2A, 0x2A, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x22, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x22, 0x22, 0x22, 0x1C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x22, 0x22, 0x22, 0x3C, 0x20, 0x20
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x22, 0x22, 0x22, 0x1E, 0x02, 0x02
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x22, 0x20, 0x20, 0x20, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x20, 0x1C, 0x02, 0x3C, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x10, 0x10, 0x3C, 0x10, 0x10, 0x10, 0x0E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x1E, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x14, 0x08, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x2A, 0x2A, 0x14, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x14, 0x08, 0x14, 0x22, 0x00, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x22, 0x22, 0x22, 0x1E, 0x02, 0x1C
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x04, 0x08, 0x10, 0x3E, 0x00, 0x00
	db 0x00, 0x00, 0x04, 0x08, 0x08, 0x08, 0x10, 0x08, 0x08, 0x08, 0x04, 0x00
	db 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00
	db 0x00, 0x00, 0x10, 0x08, 0x08, 0x08, 0x04, 0x08, 0x08, 0x08, 0x10, 0x00
	db 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00
