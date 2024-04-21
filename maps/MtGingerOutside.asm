	object_const_def

MtGingerOutside_MapScripts:
	def_scene_scripts

	def_callbacks

MtGingerOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, MT_GINGER_INTERIOR, 2
	warp_event  7, 23, MT_GINGER_INTERIOR, 3
	warp_event  7, 17, MT_GINGER_INTERIOR, 4
	warp_event 11, 17, MT_GINGER_INTERIOR, 5
	warp_event 11, 11, MT_GINGER_INTERIOR, 6

	def_coord_events

	def_bg_events

	def_object_events
