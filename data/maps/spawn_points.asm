MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,              3,  3
; kanto
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
; johto
	spawn NEW_BARK_TOWN,                15,  8
	spawn BATTLE_TOWER_OUTSIDE,          8, 10
	spawn TARRAGON_TOWN,                 15, 10
	spawn CHAMOMILE_CITY,                36, 14
	spawn TAURIC_TOWN,                   11, 18
	spawn JACARANDA_TOWN,                 7, 20

	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
