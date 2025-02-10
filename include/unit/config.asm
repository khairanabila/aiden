INCLUDE_UNIT_WINDOW_BACKGROUND_color equ 0x00151515

INCLUDE_UNIT_WINDOW_FLAG_visible equ 1 << 0
INCLUDE_UNIT_WINDOW_FLAG_flush equ 1 << 1
INCLUDE_UNIT_WINDOW_FLAG_fixed_xy equ 1 << 2
INCLUDE_UNIT_WINDOW_FLAG_fixed_z equ 1 << 3
INCLUDE_UNIT_WINDOW_FLAG_fragile equ 1 << 4
INCLUDE_UNIT_WINDOW_FLAG_arbiter equ 1 << 6
INCLUDE_UNIT_WINDOW_FLAG_unregistered equ 1 << 8
INCLUDE_UNIT_WINDOW_FLAG_header equ 1 << 9
INCLUDE_UNIT_WINDOW_FLAG_border equ 1 << 10
INCLUDE_UNIT_ELEMENT_TYPE_none equ 0x00
INCLUDE_UNIT_ELEMENT_TYPE_header equ 0x01
INCLUDE_UNIT_ELEMENT_TYPE_label equ 0x02
INCLUDE_UNIT_ELEMENT_TYPE_draw equ 0x03
INCLUDE_UNIT_ELEMENT_TYPE_chain equ 0x04
INCLUDE_UNIT_ELEMENT_TYPE_button equ 0x05

INCLUDE_UNIT_ELEMENT_HEADER_HEIGHT_pixel equ INCLUDE_UNIT_FONT_HEIGHT_pixel
INCLUDE_UNIT_ELEMENT_HEADER_PADDING_LEFT_pixel equ 0x02
INCLUDE_UNIT_ELEMENT_HEADER_FOREGROUND_color equ 0x00717171
INCLUDE_UNIT_ELEMENT_HEADER_BACKGROUND_color equ 0x00202020

INCLUDE_UNIT_ELEMENT_BUTTON_FOREGROUND_color equ 0x00FFFFFF
INCLUDE_UNIT_ELEMENT_BUTTON_BACKGROUND_color equ 0x00303030

INCLUDE_UNIT_ELEMENT_LABEL_FOREGROUND_color equ 0x00BBBBBB
INCLUDE_UNIT_ELEMENT_LABEL_BACKGROUND_color equ INCLUDE_UNIT_WINDOW_BACKGROUND_color

struc   INCLUDE_UNIT_STRUCTURE_FIELD
.x      resb 8
.y      resb 8
.width  resb 8
.height resb 8

.SIZE:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_WINDOW
	.field   resb INCLUDE_UNIT_STRUCTURE_FIELD.SIZE
	.address resb 8

.SIZE:
	endstruc

	struc     INCLUDE_UNIT_STRUCTURE_WINDOW_EXTRA
	.size     resb 8
	.flags    resb 8
	.id       resb 8
	.scanline resb 8

.SIZE:
	endstruc

	struc  INCLUDE_UNIT_STRUCTURE_ELEMENT
	.type  resb 4
	.size  resb 8
	.field resb INCLUDE_UNIT_STRUCTURE_FIELD.SIZE
	.event resb 8

.SIZE:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_ELEMENT_HEADER
	.element resb INCLUDE_UNIT_STRUCTURE_ELEMENT.SIZE
	.length  resb 1

.string:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_ELEMENT_LABEL
	.element resb INCLUDE_UNIT_STRUCTURE_ELEMENT.SIZE
	.length  resb 1

.string:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_ELEMENT_BUTTON
	.element resb INCLUDE_UNIT_STRUCTURE_ELEMENT.SIZE
	.length  resb 1

.string:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_ELEMENT_DRAW
	.element resb INCLUDE_UNIT_STRUCTURE_ELEMENT.SIZE

.SIZE:
	endstruc

	struc    INCLUDE_UNIT_STRUCTURE_ELEMENT_CHAIN
	.type    resb 4
	.size    resb 8
	.address resb 8

.SIZE:
	endstruc
