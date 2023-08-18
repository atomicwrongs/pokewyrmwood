NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2, NonTrainerCallerNames
	dw .none
	dw .elm
	dw .nia
	dw .bill
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.none:     db "----------@"
.elm:      db "----------@"
.nia:      db "NIA:@"
.bill:     db "<PK><MN>CENTER:@"
