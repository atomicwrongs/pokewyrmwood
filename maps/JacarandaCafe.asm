	object_const_def

JacarandaCafe_MapScripts:
	def_scene_scripts

	def_callbacks

JacarandaCafeClerkScript:
	opentext
	writetext JacCafeText
	promptbutton
	pokemart MARTTYPE_STANDARD, MART_UNDERGROUND
	closetext
	end

JacCafeText:
	text "Hey, hon."
	line "Stay a while."
	
	para "We're not going"
	line "anywhere."
	done

JacBoozyGuyScript:
	jumptextfaceplayer JacBoozyGuyText

JacBoozyGuyText:
	text "H-hic..."
	line "This place does"
	cont "a mean boozy"
	cont "soda float..."
	done

JacarandaCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, JACARANDA_TOWN, 3
	warp_event 3, 7, JACARANDA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacarandaCafeClerkScript, -1
	object_event 1, 4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacBoozyGuyScript, -1
