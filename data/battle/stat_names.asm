StatNames:
; entries correspond to stat ids
	list_start StatNames
	li "STRENGTH"
	li "DEFENSE"
	li "SPEED"
	li "INTEL."
	li "WILLPOWER"
	li "ACCURACY"
	li "EVASION"
	li "ABILITY" ; used for BattleCommand_Curse
	assert_list_length NUM_LEVEL_STATS
