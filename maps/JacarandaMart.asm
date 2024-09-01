	object_const_def

JacarandaMart_MapScripts:
	def_scene_scripts

	def_callbacks

JacClerkScript:
	opentext
	writetext JacMartHelloText
	promptbutton
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end


JacMartHelloText:
	text "Heya, beach buddy."
	line "You doin' okay?"
	done

JacarandaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, JACARANDA_TOWN, 2
	warp_event 3, 7, JACARANDA_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 1, 2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacClerkScript, -1