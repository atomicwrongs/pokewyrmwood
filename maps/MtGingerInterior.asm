	object_const_def

MtGingerInterior_MapScripts:
	def_scene_scripts

	def_callbacks

MtGingerInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 25, TAURIC_TOWN, 6
	warp_event 17, 19, MT_GINGER_OUTSIDE, 1
	warp_event 1, 11, MT_GINGER_OUTSIDE, 2
	warp_event 19, 11, MT_GINGER_OUTSIDE, 3
	warp_event 1, 1, MT_GINGER_OUTSIDE, 4
	warp_event 9, 1, MT_GINGER_OUTSIDE, 5
	warp_event 19, 9, MT_GINGER_INTERIOR, 8
	warp_event 13, 3, MT_GINGER_INTERIOR, 7

	def_coord_events

	def_bg_events

	def_object_events
