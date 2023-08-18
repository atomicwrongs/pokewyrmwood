MACRO unownword
for n, CHARLEN(\1)
	db CHARSUB(\1, n + 1) - "A" + FIRST_UNOWN_CHAR
endr
	db -1
ENDM

UnownWords:
; entries correspond to UNOWN_* form constants
	table_width 2, UnownWords
	dw UnownWordA ; unused
	dw UnownWordA
	assert_table_length NUM_UNOWN + 1

UnownWordA: unownword "ANGRY"
