	object_const_def

MtGingerInterior_MapScripts:
	def_scene_scripts

	def_callbacks

ItemfinderSocScriptGinger:
	opentext
	writetext SomethingUnderRockText
	checkevent EVENT_GINGER_MONEY
	waitbutton
	iffalse .GetMoney
	closetext
	end

.GetMoney:
	writetext FoundMoneyText
	givemoney YOUR_MONEY, 1000
	setevent EVENT_GINGER_MONEY
	waitbutton
	closetext
	end

MtGingerHardstoneScript:
	hiddenitem HARD_STONE, EVENT_GINGER_STONE

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

GingerHiker1:
	trainer HIKER, ANTHONY1, EVENT_BEAT_HIKER_ANTHONY, HikerRobSeenText, HikerRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRobAfterBattleText
	waitbutton
	closetext
	end

HikerRobSeenText:
	text "Bwahaha!"
	line "Let's have a"
	cont "mountain of"
	cont "a battle!"
	done

HikerRobBeatenText:
	text "I made a"
	line "mountain out"
	cont "of a DRILBUR-"
	cont "hill..."
	done

HikerRobAfterBattleText:
	text "I wonder if the"
	line "DRILBUR and CUB-"
	cont "TERRA know that"
	cont "the comet's"
	cont "coming."
	done

GingerHiker2:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRusselSeenText, HikerRusselBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRussAfterBattleText
	waitbutton
	closetext
	end

HikerRusselSeenText:
	text "My #MON's"
	line "voices echo"
	cont "beautifully in"
	cont "this cave."
	
	para "Here, listen."
	done

HikerRusselBeatenText:
	text "A symphony of"
	line "battle!"
	done

HikerRussAfterBattleText:
	text "WOOBAT come out"
	line "at night."
	
	para "They're blind,"
	line "so they use the"
	cont "echoes to navi-"
	cont "gate."
	done

GingerScientist:
	trainer SCIENTIST, ROSS, EVENT_BEAT_SCIENTIST_ROSS, ScientistRossSeenText, ScientistRossBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistRossrBattleText
	waitbutton
	closetext
	end

ScientistRossSeenText:
	text "Tread carefully!"
	line "I'm studying the"
	cont "rocks in this"
	cont "cave!"
	done

ScientistRossrBattleText:
	text "I hear that"
	line "in JUNIPER"
	cont "CAVE, there's a"
	cont "rare #MON."
	
	para "Its body is"
	line "made of unique"
	cont "minerals!"
	done

ScientistRossBeatenText:
	text "How geologically"
	line "fascinating!"
	done

GingerBlackbelt:
	trainer BLACKBELT_T, KENJI1, EVENT_BEAT_BLACKBELT_KENJI, BBKenjiSeenText, BBKenjiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BBKenjiAfterBattleText
	waitbutton
	closetext
	end

BBKenjiSeenText:
	text "HOH! BWOH!"
	line "HYYAAGH!"
	done

BBKenjiBeatenText:
	text "BWOOOHHHH!"
	done

BBKenjiAfterBattleText:
	text "HUAH! HWOH!"
	line "BWUH!"
	done

GingerBall1:
	itemball SUPER_POTION

GingerBall2:
	itemball METAL_COAT

GingerBall3:
	itemball CROWN_PIECE

Gingerball4:
	itemball TM_EARTHQUAKE

GingerIntRock:
	jumpstd SmashRockScript

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
	bg_event 15, 21, BGEVENT_READ, ItemfinderSocScriptGinger
	bg_event 8, 7, BGEVENT_ITEM, MtGingerHardstoneScript

	def_object_events
	object_event 2, 25, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, GingerHiker1, -1
	object_event 6, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, GingerScientist, -1
	object_event 14,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, GingerHiker2, -1
	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, GingerBlackbelt, -1
	object_event 6, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GingerBall1, EVENT_GINGER_SUPERPOTION
	object_event 18, 9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GingerBall2, EVENT_GINGER_COAT
	object_event 19, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GingerBall3, EVENT_GINGER_PIECE
	object_event 1, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Gingerball4, EVENT_GINGER_QUAKE
	object_event 10, 20, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
	object_event 13,  20, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
	object_event 14, 22, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
	object_event 16, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
	object_event 18, 21, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
	object_event 10,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GingerIntRock, -1
