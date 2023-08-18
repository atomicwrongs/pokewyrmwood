MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map NEW_BARK_TOWN,        TREEMON_SET_EARLYGAME
	treemon_map ROUTE_101,            TREEMON_SET_EARLYGAME
	treemon_map TARRAGON_TOWN,        TREEMON_SET_EARLYGAME
	treemon_map ROUTE_102,            TREEMON_SET_EARLYGAME
	treemon_map BILBERRY_WOODS,       TREEMON_SET_EARLYGAME
	treemon_map BILBERRY_ARIADOS_DEN, TREEMON_SET_MIDGAME
	treemon_map CHAMOMILE_PARK,       TREEMON_SET_EARLYGAME
	db -1

RockMonMaps:
	treemon_map BATTLE_TOWER_OUTSIDE, TREEMON_SET_ROCK
	db -1
