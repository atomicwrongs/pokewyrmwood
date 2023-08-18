	object_const_def
	
BilberryWoods_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
BilberryWoodsSignScript:
	jumptext BilberryWoodsSignText

BilberryWoodsSignText:
	text "BILBERRY WOODS"
	
	para "South to CHAMO-"
	line "MILE CITY."
	done
	
WoodsmanHouseSignScript:
	jumptext WoodsmanHouseSignText
	
WoodsmanHouseSignText:
	text "THE WOODSMAN'S"
	line "HOUSE"
	done
	
BilberryExitScript:
	jumptext BilberryExitText
	
BilberryExitText:
	text "BILBERRY"
	line "WOODS EXIT"
	
	para "Please take any"
	line "litter with you."
	done
	
WarningWildmonsScript:
	jumptext WarningWildmonsText
	
WarningWildmonsText:
	text "WARNING"
	line "ARIADOS den"
	cont "up ahead."
	
	para "Recommended"
	line "level is 25."
	cont "Please take"
	cont "caution."
	done
	
NoSeriouslyWarningScript:
	jumptext NoSeriouslyWarningText

NoSeriouslyWarningText:
	text "NOTICE FROM THE"
	line "NOMAIA RANGERS"
	cont "UNION"
	
	para "If you are"
	line "attacked by a"
	cont "#MON that is"
	cont "too strong for"
	cont "you to handle,"
	cont "throw a #"
	cont "doll to distract"
	cont "it while you"
	cont "retreat."
	
	para "# DOLLS can"
	line "be bought at the"
	cont "# MART at PER-"
	cont "SIMMON CITY."
	done
	
BilberryShrineScript:
	jumptext BilberryShrineText

BilberryShrineText:
	text "It's a little"
	line "shrine. A beast"
	cont "#MON is carved"
	cont "into it."
	
	para "'From the ashes"
	line "of the burnt"
	cont "tower grew vines"
	cont "and flourishing"
	cont "greenery.'"
	
	para "'Born from this"
	line "outburst of new"
	cont "life was the"
	cont "beast OLEANDIRE.'"
	done
	
TrainerBugcatcherFinn:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugcatcherFinnSeenText, BugcatcherFinnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugcatcherFinnAfterBattleText
	waitbutton
	closetext
	end

BugcatcherFinnSeenText:
	text "If I see a bug,"
	line "I catch it!"

	para "If I see a"
	line "trainer, we"
	cont "battle!"
	done

BugcatcherFinnBeatenText:
	text "Like a fly"
	line "in a web!"
	done

BugcatcherFinnAfterBattleText:
	text "So many kinds"
	line "of bugs..."
	
	para "This world is"
	line "really amazing,"
	cont "isn't it?"
	done
	
TrainerSchoolboyJack:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJackSeenText, SchoolboyJackBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJackAfterBattleText
	waitbutton
	closetext
	end

SchoolboyJackSeenText:
	text "School's out"
	line "forever!"
	done

SchoolboyJackBeatenText:
	text "What an awe-"
	line "some battle!"
	done

SchoolboyJackAfterBattleText:
	text "I'm sad, but"
	line "if I get to"
	cont "spend time with"
	cont "my #MON..."

	para "Then I think"
	line "it's worth it."
	done
	
TrainerLassIsabel:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassIsabelSeenText, LassIsabelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassIsabelAfterBattleText
	waitbutton
	closetext
	end

LassIsabelSeenText:
	text "Oh! Look,"
	line "look!"
	done

LassIsabelBeatenText:
	text "Wasn't my"
	line "#MON cute?"
	done

LassIsabelAfterBattleText:
	text "Looking at"
	line "my #MON's"
	cont "grumpy face..."

	para "It makes me"
	line "laugh! Hehe!"
	done

TrainerLassAbbie:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassAbbieSeenText, LassAbbieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAbbieAfterBattleText
	waitbutton
	closetext
	end

LassAbbieSeenText:
	text "La-la-la,"
	line "hm-hm-hm..."

	para "Oh, a battle?"
	line "Of course."
	done

LassAbbieBeatenText:
	text "La-la-la..."
	done

LassAbbieAfterBattleText:
	text "I'm going to"
	line "fill my room"
	cont "with flowers."
	done
	

TrainerBugcatcherDilbert:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugcatcherDilbertSeenText, BugcatcherDilbertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugcatcherDilbertAfterBattleText
	waitbutton
	closetext
	end

BugcatcherDilbertSeenText:
	text "IF I'M SCARED,"
	line "THEY'RE SCARED!"
	done

BugcatcherDilbertBeatenText:
	text "I MUST HOLD"
	line "EVERY BUG!"
	done

BugcatcherDilbertAfterBattleText:
	text "Don't cry, my"
	line "buggy buds..."

	para "DILBERT WILL"
	line "PROTECT YOU!!"
	done
	
BilberryRanger:
	checkevent EVENT_BILBERRY_REPEL
	iftrue .TookRepel
	faceplayer
	opentext
	writetext BilberryRangerText
	promptbutton
	giveitem REPEL, 3
	playsound SFX_ITEM
	setevent EVENT_BILBERRY_REPEL
	writetext GotRepelText
	promptbutton
	writetext Bilberry_YesRepel
	waitbutton
	closetext
	end

.TookRepel
	jumptextfaceplayer Bilberry_YesRepel2
	end

BilberryRangerText:
	text "Oh, hiya, sport!"
	
	para "These here woods"
	line "can be tricky if"
	cont "you're not pre-"
	cont "pared."
	
	para "Here, take these."
	done

GotRepelText:
	text "<PLAYER> put"
	line "the REPELS in"
	cont "the bag."
	done

Bilberry_YesRepel:
	text "A repel keeps"
	line "wild #MON"
	cont "away."
	
	para "It only repels"
	line "wild #MON"
	cont "that are weaker"
	cont "than the #-"
	cont "MON at the front"
	cont "of your party,"
	cont "though!"
	
	para "Keep that in"
	line "mind, okay,"
	cont "champ?"
	done

Bilberry_YesRepel2:
	text "Hiya, slugger!"
	line "How's it going?"
	
	para "Remember to"
	line "use a repel if"
	cont "your #MON get"
	cont "tired and you"
	cont "need to hurry"
	cont "to the #MON"
	cont "CENTER!"
	done
	
BilberryBall1:
	itemball POKE_BALL

BilberryBall2:
	itemball ANTIDOTE

BilberryBall3:
	itemball POTION
	
BilberryHiddenBerry:
	hiddenitem BERRY, EVENT_BILBERRY_BERRY
	
BilberryHiddenSeed:
	hiddenitem MIRACLE_SEED, EVENT_BILBERRY_SEED

BilberryWoods_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 16, 2, ROUTE_102, 1
	warp_event 17, 2, ROUTE_102, 1
	warp_event  7, 22, ROUTE_102, 3
	warp_event  7, 23, ROUTE_102, 3
	warp_event 33, 23, WOODSMAN_HOUSE, 1
	warp_event 20, 29, BILBERRY_ARIADOS_DEN, 1
	warp_event 21, 29, BILBERRY_ARIADOS_DEN, 2

	def_coord_events
	
	def_bg_events
	bg_event 15,  3, BGEVENT_READ, BilberryWoodsSignScript
	bg_event 31, 23, BGEVENT_READ, WoodsmanHouseSignScript
	bg_event 5, 21, BGEVENT_READ, BilberryExitScript
	bg_event 11, 11, BGEVENT_READ, NoSeriouslyWarningScript
	bg_event 21, 25, BGEVENT_READ, WarningWildmonsScript
	bg_event 4, 2, BGEVENT_READ, BilberryShrineScript
	bg_event 19, 12, BGEVENT_ITEM, BilberryHiddenBerry
	bg_event 7,  6, BGEVENT_ITEM, BilberryHiddenSeed
	
	def_object_events
	object_event 17, 9, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugcatcherFinn, -1
	object_event 26,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 1, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJack, -1
	object_event 27, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassIsabel, -1
	object_event 12, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassAbbie, -1
	object_event 3, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugcatcherDilbert, -1
	object_event 34, 8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BilberryRanger, -1
	object_event 7, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BilberryBall1, EVENT_BILBERRY_POKEBALL
	object_event 33, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BilberryBall2, EVENT_BILBERRY_ANTIDOTE
	object_event 16, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BilberryBall3, EVENT_BILBERRY_POTION
