; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
	const ROOF_JACARANDA
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1, MapGroupRoofs
	db -1             ;  0
	db -1             ;  1
	db ROOF_OLIVINE   ;  2 (Battle Tower)
	db ROOF_NEW_BARK  ;  3 (New Bark)
	db -1             ;  4 (Indigo?)
	db ROOF_NEW_BARK  ;  5 (Tarragon)
	db -1             ;  6 (Dungeons)
	db ROOF_GOLDENROD ;  7 (Chamomile)
	db ROOF_OLIVINE   ; 8 (Tauric) 
	db ROOF_JACARANDA ; 9 (Jacaranda)
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * LEN_2BPP_TILE, Roofs
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
