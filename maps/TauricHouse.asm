	object_const_def

TauricHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
FossilBroScript:
	jumptextfaceplayer FossilBroText

FossilBroText:
	text "My brother and I"
	line "are kinda nuts"
	cont "for fossils."
	
	para "Apparently he's"
	line "made a machine"
	cont "that can revive"
	cont "ancient #MON!"
	
	para "He lives in"
	line "an apartment in"
	cont "CAMPHOR CAPE."
	
	para "If you find a"
	line "fossil, give"
	cont "him a visit."
	done

FossilsNotes:
	jumptext FossilNoteText

FossilNoteText:
	text "Scientists have"
	line "found two types"
	cont "of fossils in"
	cont "NOMAIA's caves."
	
	para "One, the PLUME"
	line "fossil, is also"
	cont "found in UNOVA."
	
	para "However, the SABER"
	line "FOSSIL, is only"
	cont "found in NOMAIA."
	done

TauricHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 5, TAURIC_TOWN, 5
	warp_event 3, 5, TAURIC_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event 5, 4, BGEVENT_READ, FossilsNotes

	def_object_events
	object_event 3, 3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilBroScript, -1
