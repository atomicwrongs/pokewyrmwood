TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_Early
	dw TreeMonSet_Middle
	dw TreeMonSet_Late
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_Early:
; common
	db 50, CHERUBI,    10
	db 15, CHERUBI,    10
	db 15, CATERPIE,    15
	db 10, LEDYBA,      10
	db  5, MURKROW,      10
	db  5, SKIPLOOM,      15
	db -1
; rare
	db 50, METAPOD,    10
	db 15, HERACROSS,  10
	db 15, HERACROSS,  10
	db 10, LEDIAN,      15
	db  5, WATTREL,      10
	db  5, KITEKAT,      10
	db -1

TreeMonSet_Middle:
; common
	db 50, WATTREL,    24
	db 15, KITEKAT,    24
	db 15, MANKEY,    23
	db 10, LEDIAN,      25
	db  5, MURKROW,      20
	db  5, SKIPLOOM,      20
	db -1
; rare
	db 50, MOMENTAIRY,    22
	db 15, CHERRIM,  25
	db 15, HERACROSS,  25
	db 10, LEDIAN,      28
	db  5, KITEKAT,      25
	db  5, KITEKAT,      28
	db -1

TreeMonSet_Late:
; common
	db 50, ARIADOS,    34
	db 15, HERACROSS,    35
	db 15, NOCTOWL,    39
	db 10, MURKROW,      37
	db  5, JUMPLUFF,      38
	db  5, JUMPLUFF,      40
	db -1
; rare
	db 50, PRIMEAPE,    35
	db 15, ETERNITAIR, 38
	db 15, KILOWATREL,  34
	db 10, RUMBLEBEE,    35
	db  5, RUMBLEBEE,    37
	db  5, RUMBLEBEE,      42
	db -1

TreeMonSet_Rock:
	db 40, KRABBY,     15
	db 20, CORPHISH,   15
	db 20, BEARROW,    16
	db 10, SPLASHFUL,    18
	db 10, PEBBOWL,     20
	db -1
