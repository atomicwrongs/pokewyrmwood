	object_const_def

ChamomilePokeCenter_MapScripts:
	def_scene_scripts

	def_callbacks

ChamomileNurseScript:
	jumpstd PokecenterNurseScript

ChamomilePCGirl:
	jumptextfaceplayer ChamomilePCGirlText

ChamomilePCGirlText:
	text "You can heal your"
	line "#MON here."
	
	para "It's free, too."
	line "Cool, huh?"
	done

ChamomilePCGuy:
	jumptextfaceplayer ChamomilePCGuyText

ChamomilePCGuyText:
	text "If you use that"
	line "computer in the"
	cont "corner, you can"
	cont "store items and"
	cont "#MON."
	
	para "You can only"
	line "carry six #-"
	cont "MON with you"
	cont "at a time, and"
	cont "your bag has"
	cont "limited space."

	para "Think carefully"
	line "about what to"
	cont "take with you"
	cont "before a long"
	cont "journey."
	done

ChamomilePokeCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 7, CHAMOMILE_CITY, 5
	warp_event 4, 7, CHAMOMILE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 5, 1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChamomileNurseScript, -1
	object_event 2, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamomilePCGirl, -1
	object_event 7, 6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ChamomilePCGuy, -1