	object_const_def
	const LITTLESAGE_CLERK

LittleSageTownMart_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LittlesageClerkScript:
	opentext
	writetext LittlesageMartHello
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

LittlesageMartHello:
	text "<PLAYER>, hey!"
	line "You're stuck here"
	cont "too, huh?"
	done
	
LittleSageBugCatcherScript:
	jumptextfaceplayer LittleSageBugCatcherText
	
LittleSageBugCatcherText:
	text "My mum and dad"
	line "left to stay"
	cont "with family, but"
	cont "my brother said"
	cont "there was no"
	cont "point."
	
	para "I... I kind of"
	line "wanted to go."
	cont "But he's my bro."
	cont "I don't want him"
	cont "to be alone"
	cont "when..."
	done

LittleSageTownMart_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  9, NEW_BARK_TOWN, 2
	warp_event  3,  9, NEW_BARK_TOWN, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittlesageClerkScript, -1
	object_event  6,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LittleSageBugCatcherScript, -1
	