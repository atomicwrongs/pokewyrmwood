	object_const_def
	const VALERIAN_COP
	const VALERIAN_FISHER
	const VALERIAN_SWIMMER
	const VALERIAN_BROKEBALL

ValerianPass_MapScripts:
	def_scene_scripts

	def_callbacks

ValerianOfficerScript:
	jumptextfaceplayer ValerianOfficerText

ValerianOfficerText:
	text "Uh, hey, kid."
	line "Don't worry, we've"
	cont "cleaned up the mess."
	
	para "Nobody should have"
	line "to see that."
	done

ValerianFisherScript:
	jumptextfaceplayer ValerianFisherText

ValerianFisherText:
	text "... I fished up"
	line "a shoe."
	
	para "With the foot"
	line "still inside."
	
	para "... I don't wanna"
	line "fish anymore."
	done

ValerianSwimmerScript:
	jumptext ValerianSwimmerText

ValerianSwimmerText:
	text "Sob... my brother..."
	line "why would he..."
	
	para "I don't wanna be"
	line "alone here..."
	done

ValerianBrokeBall:
	opentext 
	writetext BrokenBallText
	waitbutton
	closetext
	playsound SFX_ITEM
	disappear VALERIAN_BROKEBALL
	giveitem BROKEN_BALL
	opentext
	writetext GotBrokeBallText
	waitbutton
	closetext
	end

BrokenBallText:
	text "It's a broken"
	line "#BALL."
	
	para "The clasp is so"
	line "dented it won't"
	cont "open..."
	
	para "Maybe someone can"
	line "fix it?"
	done

GotBrokeBallText:
	text "<PLAYER> safely"
	line "put the #BALL"
	cont "in the KEY ITEMS"
	cont "pocket."
	done

ValerianBall2:
	itemball ELIXER
	

ValerianPass_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 4, CHAMOMILE_PARK, 2
	warp_event 14, 4, CHAMOMILE_PARK, 3
	warp_event 5, 19, VALERIAN_PASS_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValerianOfficerScript, -1
	object_event 10, 17, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValerianFisherScript, -1
	object_event 11, 25, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValerianSwimmerScript, -1
	object_event 16, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValerianBrokeBall, EVENT_VALERIAN_BROKEBALL
	object_event 6, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ValerianBall2, EVENT_VALERIAN_ELIXIR
