	object_const_def
	const BASILROAD_LASS

Route103_MapScripts:
	def_scene_scripts
	scene_script Route103EXPShareScene, SCENE_103_EXPSHARE
	scene_script Route103Noop1, SCENE_103_NOOP
	scene_script Route103Noop2, SCENE_103_NOOP2

	def_callbacks

Route103EXPShareScene:
	end

Route103Noop1:
	checkevent EVENT_BEAT_BUGSY
	iffalse .NoNiaText
	wait 15
	playsound SFX_CALL
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext GotNiaText
	waitbutton
	closetext
	setscene SCENE_103_NOOP2
	end

.NoNiaText
	end


Route103Noop2:
	end

GotNiaText:
	text "You got a text"
	line "from NIA."
	
	para "'<PLAYER>!!!'"
	line "I heard u beat"
	cont "MINA and KITS!!"
	
	para "So freakin cool!"
	line "Proud of u!!"
	
	para "... Attached is"
	line "a glittery GIF"
	cont "of a PICHU saying"
	cont "'CONGRAT-CHU-"
	cont "LATIONS!'."
	done

ExpShareSceneStart:
	checkitem EXP_SHARE
	iftrue .NoExpShare
	opentext
	writetext WaitUpText
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	turnobject PLAYER, UP
	moveobject BASILROAD_LASS, 4, 2
	appear BASILROAD_LASS
	applymovement BASILROAD_LASS, Walktoplayermovement
	opentext
	writetext GiveyouExpShare
	waitbutton
	playsound SFX_ITEM
	writetext GaveLipgloss
	waitbutton
	playsound SFX_ITEM
	giveitem EXP_SHARE, 1
	writetext GaveExpShareCorrect
	waitbutton
	closetext
	applymovement BASILROAD_LASS, LeaveMovement
	disappear BASILROAD_LASS
	setscene SCENE_103_NOOP
	end

.NoExpShare
	end


WaitUpText:
	text "Hey, <PLAYER>,"
	line "wait up!"
	done
	
GiveyouExpShare:
	text "MINA wanted you"
	line "to have this!"
	
	para "Hold on, it's"
	line "in my bag some-"
	cont "where..."
	done

GaveLipgloss:
	text "<PLAYER> got"
	line "the LIPGLOSS!"
	
	para "... Wait, that's"
	line "not right. Hold"
	cont "on, augh, my bag"
	cont "is a mess..."
	done

GaveExpShareCorrect:
	text "<PLAYER> got"
	line "the EXP SHARE!"
	
	para "There ya go!"
	line "That EXP SHARE"
	cont "will help you"
	cont "train your #-"
	cont "MON."
	
	para "If you switch it"
	line "on, it'll divide"
	cont "the EXP from a"
	cont "battle between all"
	cont "of your #MON."
	
	para "Okay, I'll head"
	line "back to the gym!"
	
	para "See ya later,"
	line "<PLAYER>!"
	done

Walktoplayermovement:
	step RIGHT
	step RIGHT
	step DOWN
	step_end

LeaveMovement:
	step UP
	step LEFT
	step LEFT
	step_end

Route102GirlScript:
	end

BasilRoadInteriorSign:
	jumptext BasilRoadText

BasilRoadText:
	text "ROUTE 2 -"
	line "BASIL ROAD."
	done

BasilBallBall:
	itemball POKE_BALL

BasilPotionBall:
	itemball POTION

BasilRepelBall:
	itemball REPEL

BasilReviveBall:
	itemball REVIVE

BasilRdTree1:
	fruittree FRUITTREE_BASIL_1

BasilRdTree2:
	fruittree FRUITTREE_BASIL_2

TrainerTim:
	trainer YOUNGSTER, TIMM, EVENT_BEAT_YOUNGSTER_TIM, TimSeenText, TimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TimAfterBattleText
	waitbutton
	closetext
	end

TimSeenText:
	text "Hey! You!"
	line "Fight me!"
	done

TimBeatenText:
	text "Huff..."
	line "huff..."
	done

TimAfterBattleText:
	text "... Sorry."
	line "It's been hard"
	cont "lately."
	
	para "I shouldn't"
	line "take it out on"
	cont "random passers-"
	cont "by."
	done

TrainerHuck:
	trainer YOUNGSTER, SAMUEL, EVENT_BEAT_YOUNGSTER_SAMUEL, HuckSeenText, HuckBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HuckAfterBattleText
	waitbutton
	closetext
	end

HuckSeenText:
	text "Quick, quick!"
	line "Show me your"
	cont "#MON!"
	done

HuckBeatenText:
	text "Oh, you have"
	line "that one?!"
	done

HuckAfterBattleText:
	text "Okay, now I've"
	line "seen 52 #-"
	cont "MON."
	
	para "Hopefully I'll"
	line "see them all"
	cont "before the end..."
	done

TrainerSergei:
	trainer SUPER_NERD, STAN, EVENT_BEAT_SUPER_NERD_STAN, SergeiSeenText, SergeiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SergeiAfterBattleText
	waitbutton
	closetext
	end

SergeiSeenText:
	text "...!"
	done

SergeiBeatenText:
	text "..."
	done

SergeiAfterBattleText:
	text "... You are"
	line "strong."
	
	para "Very good. Good"
	line "to die strong."
	done

Route103_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 2, CHAMOMILE_CITY, 12
	warp_event 4, 3, CHAMOMILE_CITY, 12
	warp_event 25, 18, TAURIC_TOWN, 1
	warp_event 25, 19, TAURIC_TOWN, 2

	def_coord_events
	coord_event 6, 4, SCENE_103_EXPSHARE, ExpShareSceneStart

	def_bg_events
	bg_event 7, 3, BGEVENT_READ, BasilRoadInteriorSign

	def_object_events
	object_event 23, 0, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route102GirlScript, -1
	object_event 2, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSergei, -1
	object_event 8, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHuck, -1
	object_event 26, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerTim, -1
	object_event 17, 22, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BasilRdTree1, -1
	object_event 15, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BasilRdTree2, -1
	object_event 2, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BasilPotionBall, EVENT_BASIL_POTION
	object_event 18, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BasilRepelBall, EVENT_BASIL_REPEL
	object_event 22, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BasilReviveBall, EVENT_BASIL_REVIVE
	object_event 16, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BasilBallBall, EVENT_BASIL_BALL
