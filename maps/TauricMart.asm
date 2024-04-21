	object_const_def

TauricMart_MapScripts:
	def_scene_scripts

	def_callbacks

TauricClerk:
	opentext
	writetext TauricClerkText
	promptbutton
	pokemart MARTTYPE_STANDARD, MART_PEWTER
	closetext
	end

TauricClerkText:
	text "Yaaawn... huh?"
	line "Oh, hey."
	done

TauricAssistant:
	refreshscreen
	pokepic GABITE
	cry GABITE
	waitbutton
	closepokepic
	jumptext TauricAssistantText

TauricAssistantText:
	text "The GABITE is"
	line "wearing a"
	cont "little apron."
	
	para "It must be"
	line "the clerk's"
	cont "assistant."
	done

TauricMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 7, TAURIC_TOWN, 3
	warp_event  2, 7, TAURIC_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TauricClerk, -1
	object_event 1, 1, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TauricAssistant, -1
