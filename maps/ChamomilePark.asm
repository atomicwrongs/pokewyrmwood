	object_const_def

ChamomilePark_MapScripts:
	def_scene_scripts
	scene_script ChamomileParkNoop1Scene, SCENE_CHAMOMILE_PARK_NOBADGES
	scene_script ChamomileParkNoop2Scene, SCENE_CHAMOMILE_PARK_CLEAR

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
	iftrue .BeatMina
	faceplayer
	opentext
	writetext CantGoThisWay
	promptbutton
	closetext
	applymovement PLAYER, StepBackMovement
	end
	
.BeatMina
	checkevent EVENT_BEAT_BUGSY
	iftrue .CheckifBeatMina
	faceplayer
	opentext
	writetext CantGoThisWay2
	promptbutton
	closetext
	applymovement PLAYER, StepBackMovement
	end

.CheckifBeatMina
	checkevent EVENT_BEAT_FALKNER
	iftrue .ClearRoadblock
	faceplayer
	opentext
	writetext CantGoThisWay4
	promptbutton
	closetext
	applymovement PLAYER, StepBackMovement
	end

.ClearRoadblock
	opentext
	writetext RoadblockClearedText
	setscene SCENE_CHAMOMILE_PARK_CLEAR
	promptbutton
	closetext
	end

CantGoThisWay4:
	text "Whaaat, you beat"
	line "KITS? Great job!"
	
	para "Those cloaked guys"
	line "still haven't budged,"
	cont "though."
	
	para "How about you head"
	line "to the EAST part of"
	cont "CHAMOMILE CITY and"
	cont "challenge MINA?"
	done

RoadblockManScript2:
	jumptextfaceplayer CantGoThisWay3
	
StepBackMovement:
	step UP
	step UP
	step_end

CantGoThisWay3:
	text "Those people in"
	line "cloaks..."
	done

CantGoThisWay:
	text "The cliff path to"
	line "JACARANDA TOWN"
	cont "is temporarily"
	cont "closed."
	
	para "Some guys in"
	line "cloaks are yell-"
	cont "ing at the sea."
	
	para "The police are on"
	line "it. It should be"
	cont "sorted, uh..."
	
	para "In roughly the"
	line "time it takes to"
	cont "beat GYM LEADER"
	cont "MINA, run to"
	cont "TAURIC TOWN, beat"
	cont "GYM LEADER KITS"
	cont "and run back here."
	
	para "Weirdly specific?"
	line "Eh, it's a rough"
	cont "estimate."
	done

CantGoThisWay2:
	text "You beat MINA?"
	line "Good job!"

	para "Road's still"
	line "closed, though."
	
	para "If you head south"
	line "from city center,"
	cont "the mountain path"
	cont "will take you to"
	cont "TAURIC TOWN."
	
	para "GYM LEADER KITS"
	line "isn't meant to be"
	cont "out of their hos-"
	cont "pital bed, but"
	cont "they're a bit of a"
	cont "workaholic."
	
	para "I'm sure they"
	line "won't say no to"
	cont "a battle while you"
	cont "wait."
	done

RoadblockClearedText:
	text "... ... ..."
	line "... ..."
	
	para "They... they all"
	line "jumped."
	
	para "... ... ..."
	done

ChamomilePark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28, 15, CHAMOMILE_GROUNDSKEEPER, 1

	def_coord_events
	coord_event 17, 34, SCENE_CHAMOMILE_PARK_NOBADGES, RoadblockManScript

	def_bg_events
	bg_event 32, 15, BGEVENT_READ, ParkSignScript

	def_object_events
	object_event 25, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HideandSeekBoy1, -1
	object_event 29, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, HideandSeekBoy2, -1
	object_event 3, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilentLadyScript, -1
	object_event 11, 20, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SurveyRangerScript, -1
	object_event 17, 17, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlowerCrownGirl, -1
	object_event 16, 34, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadblockManScript2, -1