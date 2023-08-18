	object_const_def

TarragonTownPokemart_MapScripts:
	def_scene_scripts

	def_callbacks
	
TarragonPokeMartTill:
	jumptext PokemartTillText
	
PokemartTillText:
	text "... Empty."
	line "This place is"
	cont "abandoned."
	done
	
TarragonMartBall1:
	itemball ANTIDOTE

TarragonMartBall2:
	itemball REPEL

TarragonTownPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 1, 9, TARRAGON_TOWN, 1
	warp_event 2, 9, TARRAGON_TOWN, 1

	def_coord_events

	def_bg_events
	bg_event 2, 1, BGEVENT_READ, TarragonPokeMartTill
	bg_event 1, 2, BGEVENT_READ, TarragonPokeMartTill

	
	def_object_events
	object_event  3, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TarragonMartBall1, EVENT_TARRAGON_MART_BALL1
	object_event  9, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TarragonMartBall2, EVENT_TARRAGON_MART_BALL2