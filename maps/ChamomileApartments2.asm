	object_const_def

ChamomileApartments2_MapScripts:
	def_scene_scripts

ChamoRecep2:
	jumptext ChamoReceptText2

ChamoReceptText2:
	text "Sorry, sweetie."
	line "Residents only."
	
	para "But if you know"
	line "someone who lives"
	cont "here, just let"
	cont "me know and I'll"
	cont "call them down,"
	cont "okay?"
	done

ChamoMom1:
	jumptext ChamoMomText

ChamoMomText:
	text "..."
	done

ChamoKid1:
	jumptextfaceplayer ChamoKidText

ChamoKidText:
	text "Today was so"
	line "much fun!"
	
	para "I went to the"
	line "movies, and ate"
	cont "ice cream, and"
	cont "my mommy bought"
	cont "me so many toys!"
	
	para "I'm so happy,"
	line "but my mommy"
	cont "looks sad."
	
	para "I just want"
	line "her to smile."
	done

	def_callbacks

ChamomileApartments2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 9, CHAMOMILE_CITY, 4
	warp_event 11, 9, CHAMOMILE_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 3, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamoRecep2, -1
	object_event 7, 6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamoMom1, -1
	object_event 3, 7, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamoKid1, -1