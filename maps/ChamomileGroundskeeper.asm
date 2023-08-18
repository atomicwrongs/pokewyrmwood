	object_const_def

ChamomileGroundskeeper_MapScripts:
	def_scene_scripts

	def_callbacks

FishingSign:
	jumptext FishingSignText

FishingSignText:
	text "Different bodies"
	line "of water have"
	cont "different #-"
	cont "MON in them."
	
	para "Additionally,"
	line "different RODS"
	cont "can hook different"
	cont "#MON."
	
	para "Fishing with a"
	line "GOOD ROD in a"
	cont "POND will have"
	cont "much different"
	cont "results from"
	cont "fishing with a"
	cont "SUPER ROD in"
	cont "the sea."
	done

ChamomileGroundskeepScript:
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotRod
	faceplayer
	opentext
	writetext GroundskeeperGiveRodText
	promptbutton
	playsound SFX_ITEM
	setevent EVENT_GOT_OLD_ROD
	giveitem OLD_ROD
	writetext GotOldRodText
	promptbutton
	writetext GaveRodText
	promptbutton
	closetext
	end

.GotRod
	jumptextfaceplayer FishermanText

GroundskeeperGiveRodText:
	text "To see a young"
	line "trainer catching"
	cont "'em all..."
	
	para "It brings a"
	line "tear of hope to"
	cont "this old eye."
	
	para "Here, have this."
	done

GotOldRodText:
	text "<PLAYER>"
	line "put the OLD ROD"
	cont "in the BAG."
	done

GaveRodText:
	text "Face the water,"
	line "and use a ROD."
	
	para "A fish might bite,"
	line "and you'll have"
	cont "yourself a new"
	cont "#MON friend."
	done

FishermanText:
	text "With an OLD ROD,"
	line "you'll mostly"
	cont "catch MAGIKARP."
	
	para "But MAGIKARP can"
	line "surprise you!"
	done

ChamomileGroundskeeper_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, CHAMOMILE_PARK, 1
	warp_event 3, 7, CHAMOMILE_PARK, 1

	def_coord_events

	def_bg_events
	bg_event 3, 0, BGEVENT_READ, FishingSign

	def_object_events
	object_event 2, 4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChamomileGroundskeepScript, -1
