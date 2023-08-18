	object_const_def

ChamomilePokemart_MapScripts:
	def_scene_scripts

	def_callbacks

ChamomileClerkScript:
	opentext
	writetext ChamoMartHelloText
	promptbutton
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

ChamomileClerkScript2:
	opentext
	writetext GotCoolStuffText
	promptbutton
	pokemart MARTTYPE_STANDARD, MART_CIANWOOD
	closetext
	end

ChamoMartHelloText:
	text "I'm sorry, we're"
	line "out of REVIVES."
	
	para "But we have plenty"
	line "of other trainer"
	cont "goods!"
	done

GotCoolStuffText:
	text "Hiya, do you"
	line "need help finding"
	cont "anything?"
	done

ChamomileMartKid:
	jumptextfaceplayer ChamomileKidText

ChamomileKidText:
	text "I was gonna rob"
	line "this store but"
	cont "the lady at the"
	cont "counter just"
	cont "laughed at me."
	
	para "Aw, man..."
	line "PANSULK and I"
	cont "are never gonna"
	cont "complete our"
	cont "crime bucket list."
	done

BodegaCatScript:
	refreshscreen
	pokepic CATNIPPY
	cry CATNIPPY
	waitbutton
	closepokepic
	jumptext BodegaCatText

BodegaCatText:
	text "A fat CATNIPPY"
	line "is sleeping on"
	cont "the freezer."
	
	para "If you wanted to"
	line "buy an ice cream,"
	cont "you'd have to"
	cont "move him..."
	
	para "... Best not"
	line "disturb him."
	done

OtherCoworkerScript:
	jumptextfaceplayer OtherCoworkerText
	
OtherCoworkerText:
	text "Even though I'm"
	line "at work while"
	cont "the world is"
	cont "ending, I don't"
	cont "really feel bad."
	
	para "I really like"
	line "my coworkers."
	cont "It feels nice"
	cont "to just hang"
	cont "out."
	done

ChamomilePokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 13, CHAMOMILE_CITY, 9
	warp_event 4, 13, CHAMOMILE_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event 8, 1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamomileClerkScript, -1
	object_event 6, 1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamomileClerkScript2, -1
	object_event 7, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamomileMartKid, -1
	object_event 1, 2, SPRITE_MONSTER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BodegaCatScript, -1
	object_event 5, 6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 5, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OtherCoworkerScript, -1