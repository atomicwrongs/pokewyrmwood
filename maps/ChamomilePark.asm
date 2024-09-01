	object_const_def

ChamomilePark_MapScripts:
	def_scene_scripts

	def_callbacks

ChamomileParkNoop1Scene:
	end

ChamomileParkNoop2Scene:
	end

ParkSignScript:
	jumptext ParkSignText

ParkSignText:
	text "CHAMOMILE PARK"
	line "Groundskeeper's"
	cont "Hut"
	done

HideandSeekBoy1:
	jumptextfaceplayer HideandSeekText1

HideandSeekBoy2:
	jumptextfaceplayer HideandSeekText2
	
SilentLadyScript:
	jumptext SilentLadyText

SurveyRangerScript:
	jumptextfaceplayer SurveyRangerText

FlowerCrownGirl:
	jumptextfaceplayer FlowerCrownText

HideandSeekText1:
	text "My friend and I"
	line "are playing hide"
	cont "and seek."

	para "Hmmm..."
	line "where is he?"
	done

HideandSeekText2:
	text "I'm playing hide"
	line "and seek with my"
	cont "friend."
	
	para "Hehe! I'm good"
	line "at this!"
	done

SilentLadyText:
	text "... ... ..."
	done

SurveyRangerText:
	text "46... 47..."
	line "48... ah, I"
	cont "lost count."
	
	para "The Ranger Union"
	line "is performing a"
	cont "survey, so that"
	cont "far-future civ-"
	cont "ilisations can"
	cont "know about the"
	cont "#MON that"
	cont "lived here."
	
	para "So I'm counting"
	line "all the METAPOD"
	cont "in this park."
	done

FlowerCrownText:
	text "I'm making flower"
	line "crowns for my"
	cont "#MON."
	
	para "Try it, it's"
	line "actually pretty"
	cont "easy!"
	done

RoadblockManScript:
	checkevent EVENT_BEAT_FALKNER
	iftrue .BeatKits
	faceplayer
	opentext
	writetext CantGoThisWay
	promptbutton
	closetext
	end
	
.BeatKits
	checkevent EVENT_BEAT_BUGSY
	iftrue .CheckifBeatMina
	faceplayer
	opentext
	writetext CantGoThisWay
	promptbutton
	closetext
	end

.CheckifBeatMina
	faceplayer
	opentext
	writetext RoadblockClearedText
	promptbutton
	closetext
	end


CantGoThisWay:
	text "Hey, be careful"
	line "going this way."
	
	para "Some guys in"
	line "cloaks are yell-"
	cont "ing at the sea."
	
	para "The police are on"
	line "it. It should be"
	cont "sorted, uh..."
	
	para "Soon."
	done

RoadblockClearedText:
	text "... ... ..."
	line "... ..."
	
	para "They all"
	line "jumped."
	
	para "... ... ..."
	done

ChamomilePark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28, 15, CHAMOMILE_GROUNDSKEEPER, 1
	warp_event 16, 35, VALERIAN_PASS, 1
	warp_event 17, 35, VALERIAN_PASS, 2

	def_coord_events

	def_bg_events
	bg_event 32, 15, BGEVENT_READ, ParkSignScript

	def_object_events
	object_event 25, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HideandSeekBoy1, -1
	object_event 29, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, HideandSeekBoy2, -1
	object_event 3, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilentLadyScript, -1
	object_event 11, 20, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SurveyRangerScript, -1
	object_event 17, 17, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlowerCrownGirl, -1
	object_event 16, 34, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadblockManScript, -1