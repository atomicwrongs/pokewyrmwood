MACRO phone
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	table_width PHONE_CONTACT_SIZE, PhoneContacts
; TODO: Replace NONE map IDs with the maps that the person is on.
	phone TRAINER_NONE, PHONECONTACT_ELM,      NONE,                      ANYTIME, ElmPhoneCalleeScript,     0,       ElmPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_NIA,      N_A,                       ANYTIME, NiaPhoneCalleeScript,     ANYTIME, NiaPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
	assert_table_length NUM_PHONE_CONTACTS + 1
