MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_CableClub     ;  1
	dw MapGroup_BattleTower   ;  2
	dw MapGroup_NewBark       ;  3
	dw MapGroup_Indigo        ;  4
	dw MapGroup_Tarragon      ;  5
	dw MapGroup_Dungeon       ; 6
	dw MapGroup_Chamomile     ; 7
	dw MapGroup_Tauric        ; 8
	dw MapGroup_Jacaranda     ; 9
	assert_table_length NUM_MAP_GROUPS

MapGroup_CableClub:
	table_width MAP_LENGTH, MapGroup_CableClub
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CABLE_CLUB_MAPS

MapGroup_BattleTower:
	table_width MAP_LENGTH, MapGroup_BattleTower
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, LANDMARK_SPECIAL, MUSIC_BATTLE_TOWER_THEME, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_SPECIAL, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_SPECIAL, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_SPECIAL, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_SPECIAL, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BATTLE_TOWER_MAPS

MapGroup_NewBark:
	table_width MAP_LENGTH, MapGroup_NewBark
	map NewBarkTown, TILESET_JOHTO, TOWN, LANDMARK_NEW_BARK, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_NEW_BARK, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LittleSageTownMart, TILESET_MART, INDOOR, LANDMARK_NEW_BARK, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route101, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_1, MUSIC_ROUTE_1, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_NEW_BARK_MAPS

MapGroup_Indigo:
	table_width MAP_LENGTH, MapGroup_Indigo
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_INDIGO_MAPS

MapGroup_Tarragon:
	table_width MAP_LENGTH, MapGroup_Tarragon
	map TarragonTown, TILESET_JOHTO, TOWN, LANDMARK_TARRAGON_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map TarragonTownPokecenter, TILESET_POKECENTER, INDOOR, LANDMARK_TARRAGON_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TarragonTownPokemart,  TILESET_MART, INDOOR, LANDMARK_TARRAGON_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TarragonTownHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_TARRAGON_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route102, TILESET_JOHTO, ROUTE, LANDMARK_BILBERRY_WOODS, MUSIC_ROUTE_1, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	
MapGroup_Dungeon:
	table_width MAP_LENGTH, MapGroup_Dungeon
	map BilberryWoods, TILESET_FOREST, DUNGEON, LANDMARK_BILBERRY_WOODS, MUSIC_TREEHOLLOW, FALSE, PALETTE_NITE, FISHGROUP_POND
	map WoodsmanHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_BILBERRY_WOODS, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_POND
	map BilberryAriadosDen, TILESET_FOREST, DUNGEON, LANDMARK_BILBERRY_WOODS, MUSIC_TREEHOLLOW, FALSE, PALETTE_NITE, FISHGROUP_POND
	map MtGingerInterior, TILESET_CAVE, DUNGEON, LANDMARK_MT_GINGER, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_POND
	map MtGingerOutside, TILESET_SNOWMOUNTAIN, DUNGEON, LANDMARK_MT_GINGER, MUSIC_UNION_CAVE, FALSE, PALETTE_DAY, FISHGROUP_POND

MapGroup_Chamomile:
	table_width MAP_LENGTH, MapGroup_Chamomile
	map ChamomileCity, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomilePark, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileGymOutside, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileApartments1, TILESET_FACILITY, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileApartments2, TILESET_FACILITY, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomilePokeCenter, TILESET_POKECENTER, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomilePokemart, TILESET_MART, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileStoneHouse, TILESET_HOUSE, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileLibrary, TILESET_HOUSE, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileTradeHouse, TILESET_HOUSE, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileGroundskeeper, TILESET_HOUSE, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map ChamomileGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_CHAMOMILE_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_POND

MapGroup_Tauric:
	table_width MAP_LENGTH, MapGroup_Tauric
	map Route103, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_2, MUSIC_ROUTE_2, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TauricTown, TILESET_JOHTO, TOWN, LANDMARK_TAURIC_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TauricPokecenter, TILESET_POKECENTER, INDOOR, LANDMARK_TAURIC_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TauricMart, TILESET_MART, INDOOR, LANDMARK_TAURIC_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TauricHouse, TILESET_HOUSE, INDOOR, LANDMARK_TAURIC_TOWN, MUSIC_PALLET_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_POND

MapGroup_Jacaranda:
	table_width MAP_LENGTH, MapGroup_Jacaranda
	map ValerianPass, TILESET_JOHTO, ROUTE, LANDMARK_VALERIAN_PASS, MUSIC_ROUTE_3, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map JacarandaTown, TILESET_JOHTO, TOWN, LANDMARK_JACARANDA_TOWN, MUSIC_LIGHTHOUSE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map ValerianPassHouse, TILESET_FACILITY, INDOOR, LANDMARK_VALERIAN_PASS, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map JacarandaCafe, TILESET_RADIO_TOWER, INDOOR, LANDMARK_JACARANDA_TOWN, MUSIC_POKEMON_CHANNEL, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map JacarandaPokecenter, TILESET_POKECENTER, INDOOR, LANDMARK_JACARANDA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map JacarandaMart, TILESET_MART, INDOOR, LANDMARK_JACARANDA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map JacarandaGym, TILESET_PORT, INDOOR, LANDMARK_JACARANDA_TOWN, MUSIC_GYM, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
