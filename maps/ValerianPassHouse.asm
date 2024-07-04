	object_const_def

ValerianPassHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ValerianHouseGuyScript:
	checkitem PICKAXE
	iftrue .GotPickaxeAlready
	faceplayer
	opentext
	writetext GivingPickaxeText
	waitbutton
	closetext
	playsound SFX_ITEM
	giveitem PICKAXE
	waitsfx
	opentext
	writetext GotPickaxeText
	waitbutton
	closetext
	wait 5
	opentext
	writetext GoMiningText
	waitbutton
	closetext
	end

.GotPickaxeAlready
	faceplayer
	opentext
	writetext WhyILeftText
    waitbutton
	closetext
	end

GivingPickaxeText:
	text "Um, hi. I used"
	line "to be a miner"
	cont "in MT GINGER."
	
	para "Had an incident."
	line "Had to leave."
	
	para "Here, you can"
	line "take my old pick."
	cont "I'm not using it."
	done

GotPickaxeText:
	text "<PLAYER> got"
	line "the PICKAXE!"
	done

GoMiningText:
	text "Uh, have fun."
	done

WhyILeftText:
	text "Yeah, I got"
	line "attacked by a"
	cont "NACLI."
	
	para "Didn't hurt, but"
	line "everyone laughed"
	cont "at me."
	done

ValerianPassHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 5, VALERIAN_PASS, 3
	warp_event 3, 5, VALERIAN_PASS, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 5, 3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValerianHouseGuyScript, -1
