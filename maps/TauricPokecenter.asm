	object_const_def

TauricPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

TauricNurseScript:
	jumpstd PokecenterNurseScript

TauricCenterKid:
	jumptextfaceplayer TauricKidText

TauricKidText:
	text "KITS is cool."
	line "They're great at"
	cont "climbing."
	
	para "They even climbed"
	line "MT SILVER in the"
	cont "JOHTO region!"
	done

TauricPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 5, TAURIC_TOWN, 4
	warp_event 4, 5, TAURIC_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TauricNurseScript, -1
	object_event 1, 4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TauricCenterKid, -1
