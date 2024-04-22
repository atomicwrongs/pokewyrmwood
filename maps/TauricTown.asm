	object_const_def

TauricTown_MapScripts:
	def_scene_scripts

	def_callbacks

TauricTownSign:
	jumptext TauricTownSignText

MtGingerSign:
	jumptext MtGingerSignText

GymClosedSign:
	jumptext GymClosedSignText

TauricTownSignText:
	text "TAURIC TOWN"
	line "A gem nestled in"
	cont "the shadow of MT"
	cont "GINGER."
	done

MtGingerSignText:
	text "MT GINGER ahead."
	line "Please hike"
	cont "responsibly."
	done

GymClosedSignText:
	text "GYM CLOSED DUE"
	line "TO INJURY."
	
	para "... A note is"
	line "pinned below..."
	
	para "'OUT CLIMBING."
	line "GYM CHALLENGERS"
	cont "FIND ME ON"
	cont "MT GINGER FOR"
	cont "BATTLE."
	cont "-KITS'."
	done

TauricGymMan:
	jumptextfaceplayer TauricGymManText

TauricGymManText:
	text "Our gym leader,"
	line "KITS, got hurt"
	cont "while climbing"
	cont "last week."
	
	para "I figured they"
	line "would be going"
	cont "stir crazy in"
	cont "hospital, but I"
	cont "saw them heading"
	cont "towards MT GINGER"
	cont "the other day."
	done

TauricStandingLady:
	jumptextfaceplayer TauricStandingLadyText

TauricStandingLadyText:
	text "You came all the"
	line "way from LITTLE-"
	cont "SAGE TOWN?"
	
	para "You've got good"
	line "walkin' legs."
	done

TauricPanstrikeScript:
	refreshscreen
	pokepic PANSTRIKE
	cry PANSTRIKE
	waitbutton
	closepokepic
	jumptext TauricPanstrikeText

TauricPanstrikeText:
	text "It's a PANSTRIKE!"
	line "It looks busy"
	cont "practicing its"
	cont "punches against"
	cont "a small tree."
	done

TauricTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 20, ROUTE_103, 4
	warp_event 2, 21, ROUTE_103, 4
	warp_event 7, 9, TAURIC_MART, 1
	warp_event 11, 17, TAURIC_POKECENTER, 1
	warp_event 17, 15, TAURIC_HOUSE, 1
	warp_event 16, 3, MT_GINGER_INTERIOR, 1

	def_coord_events

	def_bg_events
	bg_event 5, 19, BGEVENT_READ, TauricTownSign
	bg_event 14, 4, BGEVENT_READ, MtGingerSign
	bg_event 12, 11, BGEVENT_READ, GymClosedSign


	def_object_events
	object_event 14, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TauricGymMan, -1
	object_event 10, 20, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TauricStandingLady, -1
	object_event 7, 4, SPRITE_MONSTER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TauricPanstrikeScript, -1
