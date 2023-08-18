	object_const_def

ChamomileApartments1_MapScripts:
	def_scene_scripts

ChamoRecept1:
	jumptext ChamoReceptText

ChamoReceptText:
	text "Sorry, kiddo."
	line "Can't let you up."
	
	para "Private building,"
	line "and a total rager."
	
	para "I mean, I'm sure"
	line "you can party,"
	cont "but..."
	
	para "... You seem nice."
	line "Trust me, kid."
	cont "You don't want"
	cont "in on this party."
	done

ChamoDrunk1:
	jumptextfaceplayer ChamoDrunkText1

ChamoDrunkText1:
	text "My liver'sh"
	line "gonna kill me,"
	cont "but so's the-"
	cont "hic-! Meteor..."
	done

ChamoDrunk2:
	jumptextfaceplayer ChamoDrunkText2

ChamoDrunkText2:
	text "I can't feel my"
	line "face."
	
	para "I shouldn't have"
	line "snorted that"
	cont "crushed-up MAX"
	cont "REVIVE..."
	done

ChamoDrunk3:
	jumptext ChamoDrunk3Text

ChamoDrunk3Text:
	text "It's not coming"
	line "out."
	
	para "It's never coming"
	line "out."
	
	para "I thought I'd feel"
	line "strong. No cons-"
	cont "equences. But I"
	cont "just feel empty."
	
	para "Oh ARCEUS. Oh"
	line "ARCEUS, no."
	
	para "I don't want to"
	line "die a killer."
	
	para "I don't want to"
	line "die..."
	done

ChamoDrunk4:
	jumptextfaceplayer ChamoDrunk4Text

ChamoDrunk4Text:
	text "Everything..."
	line "is just so..."
	
	para "...beautiful."
	done

ChamoDrunk5:
	jumptext ChamoDrunk5Text

ChamoDrunk5Text:
	text "H-HWURK-!"
	line "Euuuugh..."
	
	para "C-could you"
	line "hold my hair?"
	
	para "Th-thanks."
	line "You're really"
	cont "nice..."
	done

	def_callbacks

ChamomileApartments1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 9, CHAMOMILE_CITY, 3
	warp_event 11, 9, CHAMOMILE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamoRecept1, -1
	object_event 11, 3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ChamoDrunk1, -1
	object_event 9, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamoDrunk2, -1
	object_event 2, 7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ChamoDrunk3, -1
	object_event 7, 8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamoDrunk4, -1
	object_event 13, 9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamoDrunk5, -1