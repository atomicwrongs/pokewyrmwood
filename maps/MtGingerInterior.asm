	object_const_def

MtGingerInterior_MapScripts:
	def_scene_scripts

	def_callbacks

ItemfinderSocScriptGinger:
	opentext
	writetext SomethingUnderRockText
	checkevent EVENT_GINGER_MONEY
	iffalse .GetMoney
	closetext
	end

.GetMoney:
	writetext FoundMoneyText
	givemoney YOUR_MONEY, 1000
	setevent EVENT_GINGER_MONEY
	closetext
	end

MtGingerHardstoneScript:
	checkevent EVENT_GINGER_STONE
	iftrue .Got_Stone
	opentext
	writetext GotStoneText
	playsound SFX_ITEM
	giveitem HARD_STONE
	setevent EVENT_GINGER_STONE
	waitbutton
	closetext
	end

.Got_Stone:
	end

SomethingUnderRockText:
	text "There's a note"
	line "under this rock."
	
	para "'Congrats on"
	line "finding this note!"
	cont "Signed, the NO-"
	cont "MAIA ITEMFINDER"
	cont "SOCIETY.'"
	done

FoundMoneyText:
	text "Woah! There's"
	line "money attached!"
	
	para "<PLAYER> found"
	line "¥1000."
	done

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
	bg_event 5, 21, BGEVENT_ITEM, ItemfinderSocScriptGinger
	bg_event 8, 7, BGEVENT_ITEM, MtGingerHardstoneScript

	def_object_events
