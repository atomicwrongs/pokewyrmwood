	object_const_def
	const CHAMOMILE_POKEBALL
	const CHAMOMILE_PIKACHU

ChamomileCity_MapScripts:
	def_scene_scripts

	def_callbacks
	
ChamomileBallScript:
	itemball GREAT_BALL

AbandonedPikachuScript:
	opentext
	writetext ChuText1
	yesorno
	iffalse .NoChu
	sjump .YesChu

.NoChu:
	writetext NoChuText
	promptbutton
	closetext
	end

.YesChu:
	givepoke PIKACHU, 9, BERRY
	playsound SFX_ITEM
	disappear CHAMOMILE_PIKACHU
	setevent EVENT_CHAMOMILE_PIKACHU
	writetext TookChuText
	promptbutton
	closetext
	end

ChuText1:
	text "It's a stray"
	line "PIKACHU."
	
	para "It looks scared"
	line "and lonely..."
	
	para "Take it with"
	line "you?"
	done

NoChuText:
	text "You decided not"
	line "to take PIKACHU"
	cont "with you."
	done

TookChuText:
	text "PIKACHU sparked"
	line "gratefully!"
	done

ChamomileSign:
	jumptext ChamomileSignText

ChamomileSignText:
	text "CHAMOMILE CITY"
	line "A soothing place"
	cont "to learn, live"
	cont "and grow."
	done

BasilRoadSign:
	jumptext BasilRoadSignText

BasilRoadSignText:
	text "SOUTH to BASIL"
	line "ROAD for TAURIC"
	cont "TOWN and MT"
	cont "GINGER"
	done

SchoolSign:
	jumptext SchoolSignText

SchoolSignText:
	text "CHAMOMILE"
	line "COLLEGE LIBRARY"
	done

TradeHouseSign:
	jumptext TradeHouseSignText

TradeHouseSignText:
	text "TRADE HOUSE"
	line "Swap #MON"
	cont "with other"
	cont "trainers!"
	done

GymSign:
	jumptext GymSignText

GymSignText:
	text "This way to"
	line "CHAMOMILE GYM"
	done

BeautyScript:
	jumptextfaceplayer BeautyText

BeautyText:
	text "I really love"
	line "this city."
	
	para "Is there really"
	line "nothing anyone"
	cont "can do...?"
	done

CoolScript:
	jumptextfaceplayer CoolText

CoolText:
	text "I'm gonna buy"
	line "my girlfriend"
	cont "a diamond ring"
	cont "the size of"
	cont "a PICHU's head!"
	
	para "And a hundred"
	line "plushies, and"
	cont "all the fancy"
	cont "cakes she can"
	cont "eat-"
	
	para "I don't want"
	line "there to be any"
	cont "doubt that I"
	cont "love her."
	done

LassScript:
	jumptextfaceplayer LassText

LassText:
	text "I'm going to"
	line "confess to my"
	cont "crush."
	
	para "Even if she"
	line "rejects me..."
	cont "it'll be off"
	cont "my chest."
	done

YoungScript:
	jumptextfaceplayer YoungText

YoungText:
	text "All my buddies"
	line "are going to"
	cont "crazy parties."
	
	para "I just wanna"
	line "make pancakes."
	done

NerdScript:
	jumptext NerdText1

NerdScript2:
	jumptext NerdText2

NerdText1:
	text "C'mon, don't"
	line "be a coward."
	
	para "What are they"
	line "going to do?"
	cont "Arrest us?"
	done

NerdText2:
	text "I... I don't"
	line "know."
	
	para "I think you're"
	line "taking it a"
	cont "little too"
	cont "far..."
	done

GirlScript:
	jumptextfaceplayer GirlText

GirlText:
	text "This city's GYM"
	line "LEADER is MINA!"
	
	para "She's strong,"
	line "and smart, and"
	cont "popular, and"
	cont "nice!"
	
	para "I wish I was"
	line "just like her!"
	done

TradeGirlScript:
	jumptextfaceplayer Tradegirltext

Tradegirltext:
	text "It's important"
	line "to make time for"
	cont "yourself."
	
	para "I'm booking my-"
	line "self a table at"
	cont "my favourite"
	cont "restaurant."
	
	para "I haven't been"
	line "in ages."
	done

ChamomileCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  2, ROUTE_102, 6
	warp_event 25,  2, ROUTE_102, 6
	warp_event 4, 13, CHAMOMILE_APARTMENT_1, 1
	warp_event 14, 13, CHAMOMILE_APARTMENT_2, 1
	warp_event 36, 13, CHAMOMILE_POKECENTER, 1
	warp_event 8, 19, CHAMOMILE_LIBRARY, 1
	warp_event 9, 19, CHAMOMILE_LIBRARY, 1
	warp_event 41, 31, CHAMOMILE_TRADEHOUSE, 1
	warp_event 36, 25, CHAMOMILE_POKEMART, 1
	warp_event 42, 21, CHAMOMILE_STONEHOUSE, 1
	warp_event 43, 21, CHAMOMILE_STONEHOUSE, 1
	warp_event 24, 35, ROUTE_103, 1
	warp_event 25, 35, ROUTE_103, 1

	def_coord_events

	def_bg_events
	bg_event 26, 6, BGEVENT_READ, ChamomileSign
	bg_event 26, 31, BGEVENT_READ, BasilRoadSign
	bg_event 10, 18, BGEVENT_READ, SchoolSign
	bg_event 42, 32, BGEVENT_READ, TradeHouseSign
	bg_event 44, 15, BGEVENT_READ, GymSign

	def_object_events
	object_event 26, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChamomileBallScript, EVENT_CHAMOMILE_GREAT_BALL
	object_event  1, 28, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AbandonedPikachuScript, EVENT_CHAMOMILE_PIKACHU
	object_event 23, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BeautyScript, -1
	object_event 31, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CoolScript, -1
	object_event 16, 16, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LassScript, -1
	object_event 23, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, YoungScript, -1
	object_event  9, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NerdScript, -1
	object_event 10, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NerdScript2, -1
	object_event 42, 15, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GirlScript, -1
	object_event 27, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 3, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeGirlScript, -1
