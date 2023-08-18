MACRO unown_set
rept _NARG
	db UNOWN_\1
	shift
endr
	db -1
ENDM

UnlockedUnownLetterSets:
; entries correspond to UNLOCKED_UNOWNS_* constants
	table_width 2, UnlockedUnownLetterSets
	dw .Set_A ; UNLOCKED_UNOWNS_A_TO_K_F
	assert_table_length NUM_UNLOCKED_UNOWN_SETS

.Set_A:
	unown_set A
