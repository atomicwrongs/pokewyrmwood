	object_const_def

ChamomileStoneHouse_MapScripts:
	def_scene_scripts

	def_callbacks

StoneHouseLady:
	checkevent EVENT_CHAMOMILE_STONE
	iftrue .TookStone
	random 5
	ifequal 0, .FireStone
	ifequal 1, .WaterStone
	ifequal 2, .ThunderStone
	ifequal 3, .LeafStone
	ifequal 4, .MoonStone
	end

.TookStone
	jumptextfaceplayer TookStoneText

.FireStone
	faceplayer
	opentext
	writetext GiveStoneText
	promptbutton
	giveitem FIRE_STONE, 1
	playsound SFX_ITEM
	setevent EVENT_CHAMOMILE_STONE
	writetext FireStoneText
	promptbutton
	writetext GotStoneText
	waitbutton
	closetext
	end

.WaterStone
	faceplayer
	opentext
	writetext GiveStoneText
	promptbutton
	giveitem WATER_STONE, 1
	playsound SFX_ITEM
	setevent EVENT_CHAMOMILE_STONE
	writetext WaterStoneText
	promptbutton
	writetext GotStoneText
	waitbutton
	closetext
	end

.ThunderStone
	faceplayer
	opentext
	writetext GiveStoneText
	promptbutton
	giveitem THUNDERSTONE, 1
	playsound SFX_ITEM
	setevent EVENT_CHAMOMILE_STONE
	writetext ThunderStoneText
	promptbutton
	writetext GotStoneText
	waitbutton
	closetext
	end

.LeafStone
	faceplayer
	opentext
	writetext GiveStoneText
	promptbutton
	giveitem LEAF_STONE, 1
	playsound SFX_ITEM
	setevent EVENT_CHAMOMILE_STONE
	writetext LeafStoneText
	promptbutton
	writetext GotStoneText
	waitbutton
	closetext
	end

.MoonStone
	faceplayer
	opentext
	writetext GiveStoneText
	promptbutton
	giveitem MOON_STONE, 1
	playsound SFX_ITEM
	setevent EVENT_CHAMOMILE_STONE
	writetext MoonStoneText
	promptbutton
	writetext GotStoneText
	waitbutton
	closetext
	end

TookStoneText:
	text "Hello, dear."
	line "Did you find a"
	cont "use for that"
	cont "stone?"
	done

GiveStoneText:
	text "Hello there,"
	line "dearie."
	
	para "Take this,"
	line "it might be"
	cont "useful to you."
	done

GotStoneText:
	text "I hear some"
	line "#MON evolve"
	cont "when you use"
	cont "these stones on"
	cont "them."
	
	para "I've never been"
	line "much of a #-"
	cont "MON trainer, but"
	cont "I'm sure you"
	cont "can figure it"
	cont "out!"
	done

FireStoneText:
	text "<PLAYER>"
	line "put the FIRE"
	cont "STONE in the"
	cont "bag."
	done

WaterStoneText:
	text "<PLAYER>"
	line "put the WATER"
	cont "STONE in the"
	cont "bag."
	done

ThunderStoneText:
	text "<PLAYER>"
	line "put the THUNDER"
	cont "STONE in the"
	cont "bag."
	done

LeafStoneText:
	text "<PLAYER>"
	line "put the LEAF"
	cont "STONE in the"
	cont "bag."
	done

MoonStoneText:
	text "<PLAYER>"
	line "put the MOON"
	cont "STONE in the"
	cont "bag."
	done

ChamomileStoneHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4, 0, CHAMOMILE_CITY, 10
	warp_event 5, 0, CHAMOMILE_CITY, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneHouseLady, -1