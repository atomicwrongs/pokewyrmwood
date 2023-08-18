MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB                                           ;  1
	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	endgroup

	newgroup BATTLE_TOWER                                         ;  2
	map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ;  1
	map_const BATTLE_TOWER_1F,                              8,  5 ;  2
	map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ;  3
	map_const BATTLE_TOWER_HALLWAY,                        11,  2 ;  4
	map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ;  5
	endgroup

	newgroup NEW_BARK                                             ;  3
	map_const NEW_BARK_TOWN,                               10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  3
	map_const LITTLESAGE_MART,                              5,  5;   4
	map_const ROUTE_101,                                    9, 12;   5
	endgroup

	newgroup INDIGO                                               ;  4
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  1
	map_const WILLS_ROOM,                                   5,  9 ;  2
	map_const KOGAS_ROOM,                                   5,  9 ;  3
	map_const BRUNOS_ROOM,                                  5,  9 ;  4
	map_const KARENS_ROOM,                                  5,  9 ;  5
	map_const LANCES_ROOM,                                  5, 12 ;  6
	map_const HALL_OF_FAME,                                 5,  7 ;  7
	endgroup

	newgroup TARRAGON                                             ;  5
	map_const TARRAGON_TOWN,                                     10, 9 ;  1
	map_const TARRAGON_TOWN_POKECENTER,                           5, 4 ;  2
	map_const TARRAGON_TOWN_POKEMART,                             5, 5 ;  3
	map_const TARRAGON_TOWN_HOUSE,                                5, 4 ;  4
	map_const ROUTE_102,                                          18, 18 ; 5
	endgroup
	
	newgroup DUNGEON_MAPS                                           ; 6
	map_const BILBERRY_WOODS,                                20, 15 ; 1
	map_const WOODSMAN_HOUSE,                                 4, 5  ; 2
	map_const BILBERRY_ARIADOS_DEN,                          20, 18 ; 3
	endgroup
	
	newgroup CHAMOMILE                                              ; 7
	map_const CHAMOMILE_CITY,                                24, 20 ; 1
	map_const CHAMOMILE_PARK,                                18, 18 ; 2
	map_const CHAMOMILE_GYM_OUTSIDE,                         15, 15 ; 3
	map_const CHAMOMILE_APARTMENT_1,                          7, 5 ;4
	map_const CHAMOMILE_APARTMENT_2,                          7, 5 ;5
	map_const CHAMOMILE_POKECENTER,                           5, 4 ;6
	map_const CHAMOMILE_POKEMART,                             7, 7 ;7
	map_const CHAMOMILE_STONEHOUSE,                           5, 4 ;8
	map_const CHAMOMILE_LIBRARY,                              8, 8 ;9
	map_const CHAMOMILE_TRADEHOUSE,                           8, 8 ;10
	map_const CHAMOMILE_GROUNDSKEEPER,                        4, 4 ;11
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 7
