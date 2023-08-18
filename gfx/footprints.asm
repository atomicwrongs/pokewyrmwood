; Footprints are 2x2 tiles each, but are stored as a 16x64-tile image
; (32 rows of 8 footprints per row).
; That means there's a row of the top two tiles for eight footprints,
; then a row of the bottom two tiles for those eight footprints.

; These macros help extract the first and the last two tiles, respectively.
DEF footprint_top    EQUS "0,                 2 * LEN_1BPP_TILE"
DEF footprint_bottom EQUS "2 * LEN_1BPP_TILE, 2 * LEN_1BPP_TILE"

Footprints:
; Entries correspond to Pokémon species, two apiece, 8 tops then 8 bottoms
	table_width LEN_1BPP_TILE * 4, Footprints

; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
; 001-008 top halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_top
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_top
; 001-008 bottom halves
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",    footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp", footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",   footprint_bottom
INCBIN "gfx/footprints/bulbasaur.1bpp",  footprint_bottom

	assert_table_length $100
