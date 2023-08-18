	object_const_def
	const LITTLESAGE_BOY
	const LITTLESAGE_CHARMANDER
	const LITTLESAGE_NIA
	const LITTLESAGE_LEE
	const BALL_1
	const BALL_2
	const BALL_3
	const LITTLESAGE_HEALMAN

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script LittlesageNoop1Scene, SCENE_LITTLESAGE_BIRTHDAY
	scene_script LittlesageNoop2Scene,   SCENE_LITTLESAGE_CANTLEAVE
	scene_script LittlesageNoop3Scene,   SCENE_LITTLESAGE_NOOP

	def_callbacks
	
LittleSageHealManScript:
	special HealParty
	jumptextfaceplayer LittlesageHealManText
	
LittlesageHealManText:
	text "Oh, to be young"
	line "and journey with"
	cont "#MON..."
	
	para "Here, let me heal"
	line "them for you."
	
	para "... There we go."
	line "Be safe now,"
	cont "y'hear?"
	done
	

LittlesageBirthday:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, WalkUpToFriendsMovement
	turnobject LITTLESAGE_NIA, DOWN
	opentext
	writetext NiaSaysHi
	waitbutton
	closetext
	applymovement PLAYER, WalkUpToPokeballsMovement
	setscene SCENE_LITTLESAGE_CANTLEAVE
	end
	
LittlesageNoop1Scene:
	end
	
LittlesageNoop2Scene:
	end
	
LittlesageNoop3Scene:
	end
	
LittlesageLeeScript:
	jumptextfaceplayer LeeNeutralText

LittlesageNiaScript:
	jumptextfaceplayer NiaNeutralText

LittlesageBoyScript:
	jumptextfaceplayer LittlesageBoyText
	
LittlesageCharScript:
	jumptextfaceplayer LittlesageCharText
	
TryToLeaveScript:
	opentext
	writetext ComeBackText
	waitbutton
	closetext
	applymovement PLAYER, CantLeaveMovement
	end
	
TryToLeaveScript2:
	opentext
	writetext ComeBackText2
	waitbutton
	closetext
	applymovement PLAYER, CantLeaveMovement
	end
	
LullabearBallScript:
	refreshscreen
	pokepic LULLABEAR
	cry LULLABEAR
	waitbutton
	closepokepic
	opentext
	writetext TakeLullabearText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BALL_1
	setevent EVENT_TOOK_LULLABALL
	givepoke LULLABEAR, 5, BERRY
	closetext
	applymovement PLAYER, ChoseLullabearMovement
	disappear BALL_2
	disappear BALL_3
	sjump RivalFightScript
	
ReptripBallScript:
	refreshscreen
	pokepic REPTRIP
	cry REPTRIP
	waitbutton
	closepokepic
	opentext
	writetext TakeReptripText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BALL_2
	setevent EVENT_TOOK_REPTRIPBALL
	givepoke REPTRIP, 5, BERRY
	closetext
	applymovement PLAYER, ChoseReptripMovement
	disappear BALL_1
	disappear BALL_3
	sjump RivalFightScript
	
PupageBallScript:
	refreshscreen
	pokepic PUPAGE
	cry PUPAGE
	waitbutton
	closepokepic
	opentext
	writetext TakePupageText
	yesorno
	iffalse DidntChooseStarterScript
	disappear BALL_3
	setevent EVENT_TOOK_PUPAGEBALL
	givepoke PUPAGE, 5, BERRY
	closetext
	applymovement PLAYER, ChosePupageMovement
	disappear BALL_1
	disappear BALL_2
	sjump RivalFightScript
	
DidntChooseStarterScript:
	closetext
	end

RivalFightScript:
	applymovement LITTLESAGE_NIA, NiaTurnLeftMovement
	opentext
	writetext YouShouldFightText
	closetext
	checkevent EVENT_TOOK_REPTRIPBALL
	iftrue .Reptrip
	checkevent EVENT_TOOK_LULLABALL
	iftrue .Lullabear
	winlosstext RivalLittlesageWinText, RivalLittlesageLossText
	loadtrainer LEE, LEE_1_REPTRIP
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Lullabear:
	winlosstext RivalLittlesageWinText, RivalLittlesageLossText
	loadtrainer LEE, LEE_1_PUPAGE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Reptrip:
	winlosstext RivalLittlesageWinText, RivalLittlesageLossText
	loadtrainer LEE, LEE_1_LULLABEAR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	opentext
	writetext LittlesageRivalText_Win
	waitbutton
	closetext
	sjump .FinishLittlesageEvent

.AfterYourDefeat:
	opentext
	writetext LittlesageRivalText_Loss
	waitbutton
	closetext
	sjump .FinishLittlesageEvent

.FinishLittlesageEvent:
	applymovement LITTLESAGE_NIA, NiaLeavesMovement
	applymovement LITTLESAGE_LEE, LeeLeavesMovement
	disappear LITTLESAGE_NIA
	disappear LITTLESAGE_LEE
	setscene SCENE_LITTLESAGE_NOOP
	setflag ENGINE_POKEDEX
	special HealParty
	end
	
TakeLullabearText:
	text "Take the SNOOZY"
	line "MON, LULLABEAR?"
	done
	
TakePupageText:
	text "Take the PLUCKY"
	line "#MON, PUPAGE?"
	done
	
TakeReptripText:
	text "Take the TRIPPY"
	line "#MON, REPTRIP?"
	done
	
ComeBackText:
	text "NIA: Aw, <PLAYER>!!"
	line "Come back!"
	done
	
ComeBackText2:
	text "LEE: Hey, jerk,"
	line "don't walk off!"
	done
	
LeeNeutralText:
	text "LEE: ... What?"
	done
	
NiaNeutralText:
	text "NIA: I'm so"
	line "excited!"
	done
	
NiaSaysHi:
	text "NIA: <PLAYER>!!"
	line "Happy Birthday!"
	
	para "... Lee, come"
	line "on."

	para "LIAM: ... ..."
	line "... hey."
	
	para "NIA: Well, um..."
	line "Lee and I got"
	cont "something for you!"
	
	para "You said during"
	line "group study that"
	cont "you've always"
	cont "wanted your own"
	cont "#MON..."
	
	para "So we got you one!"
	line "We figured it'd be"
	cont "fun to go on an"
	cont "adventure, before"
	cont "... ..."
	
	para "... Go on,"
	line "pick!"
	
	para "LEE: ... ..."
	line "... hurry up."
	done

LittlesageBoyText:
	text "You started your"
	line "#MON journey"
	cont "too, huh?"
	
	para "Haha, wow."
	line "If the timing"
	cont "was better, we"
	cont "could have been"
	cont "rivals."
	done
	
LittlesageCharText:
	text "Char?"
	done
	
RivalLittlesageWinText:
	text "... Huh."
	line "Figures."
	done

RivalLittlesageLossText:
	text "... I won?"
	line "... Huh."
	done

LittlesageRivalText_Win:
	text "NIA: Woah! Lee,"
	line "I didn't know"
	cont "you could fight"
	cont "like that!"
	
	para "LEE: ... Heh."

	para "NIA: <PLAYER>,"
	line "I'll patch you"
	cont "up before we"
	cont "leave."

	para "Lee was actually"
	line "planning to"
	cont "take on the gyms"
	cont "with the time we"
	cont "have, you should"
	cont "totally try it"
	cont "too!"
	
	para "LEE: What? I-"
	line "don't you dare!"
	cont "Why don't you"
	cont "try catching all"
	cont "the #MON in"
	cont "NOMAIA instead"
	cont "of getting in"
	cont "my way?!"
	
	para "NIA: Lee, don't"
	line "be mean! It'll"
	cont "be fun! But"
	cont "catching all the"
	cont "#MON isn't a"
	cont "bad idea, hehe!"
	
	para "LEE: Wh- what's"
	line "that giggle for?!"

	para "NIA: Anyway, the"
	line "next gym is in"
	cont "CHAMOMILE CITY!"
	cont "It's just past"
	cont "TARRAGON TOWN and"
	cont "through the BIL-"
	cont "-BERRY WOODS."

	para "We'll race you"
	line "there, right, Lee?"

	para "LEE: ... Wait,"
	line "what?"
	done

LittlesageRivalText_Loss:
	text "LEE: Whatever."

	para "NIA: Aw, come on,"
	line "Lee, don't be"
	cont "salty."

	para "You did soooo"
	line "well, <PLAYER>!"

	para "Lee was actually"
	line "planning to"
	cont "take on the gyms"
	cont "with the time we"
	cont "have, you should"
	cont "totally try it"
	cont "too!"
	
	para "LEE: Hey! As if"
	line "I need the com-"
	cont "petition..."

	para "NIA: The next"
	line "gym is in"
	cont "CHAMOMILE CITY."
	cont "It's just past"
	cont "TARRAGON TOWN and"
	cont "through the BIL-"
	cont "-BERRY WOODS."

	para "Try to catch a"
	line "whole bunch of"
	cont "#MON to take"
	cont "it down!"

	para "LEE: ... Hmph."
	line "Later."
	done
	
YouShouldFightText:
	text "NIA: It's sooo"
	line "cute!"
	
	para "I know - you"
	line "and Lee should"
	cont "battle! It'll"
	cont "help you get a"
	cont "feel for it."
	
	para "LEE: Seriously?"
	line "... Tch, sure."
	cont "Get ready."
	done
	
ApartmentSignScript:
	jumptext ApartmentSignText
	
TownSloganSign:
	jumptext TownSloganSignText
	
ApartmentSignText:
	text "ALOE APARTMENTS"
	
	para "Say ALOE to"
	line "student life!"
	done
	
TownSloganSignText:
	text "LITTLE SAGE TOWN"
	line "A quiet haven for"
	cont "learning minds to"
	cont "grow."
	done

WalkUpToFriendsMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end
	
WalkUpToPokeballsMovement:
	step LEFT
	step UP
	step UP
	step UP
	step_end
	
NiaLeavesMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end
	
NiaTurnLeftMovement:
	turn_in LEFT
	step_end
	
LeeLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
CantLeaveMovement:
	step UP
	step_end
	
ChoseLullabearMovement:
	step RIGHT
	step DOWN
	step_end
	
ChosePupageMovement:
	step LEFT
	step DOWN
	step_end
	
ChoseReptripMovement:
	step DOWN
	step_end
	
NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  7, PLAYERS_HOUSE_1F, 1
	warp_event 5,  15, LITTLESAGE_MART, 1

	def_coord_events
	coord_event  8, 17, SCENE_LITTLESAGE_CANTLEAVE, TryToLeaveScript2
	coord_event  9, 17, SCENE_LITTLESAGE_CANTLEAVE, TryToLeaveScript
	coord_event 10, 17, SCENE_LITTLESAGE_CANTLEAVE, TryToLeaveScript2
	coord_event 11, 17, SCENE_LITTLESAGE_CANTLEAVE, TryToLeaveScript
	coord_event 15,  9, SCENE_LITTLESAGE_BIRTHDAY, LittlesageBirthday

	def_bg_events
	bg_event 16, 8, BGEVENT_READ, ApartmentSignScript
	bg_event 8, 14, BGEVENT_READ, TownSloganSign

	def_object_events
	object_event  5, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittlesageBoyScript, -1
	object_event  6, 10, SPRITE_CHARMANDER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittlesageCharScript, -1
	object_event 10, 6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittlesageNiaScript, EVENT_LITTLESAGE_BIRTHDAY
	object_event 8, 7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LittlesageLeeScript, EVENT_LITTLESAGE_BIRTHDAY
	object_event 7, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LullabearBallScript, EVENT_LULLABALL
	object_event 8, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReptripBallScript, EVENT_REPTRIPBALL
	object_event 9, 3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PupageBallScript, EVENT_PUPAGEBALL
	object_event 12, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LittleSageHealManScript, -1
	
