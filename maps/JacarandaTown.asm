	object_const_def
	const JACARANDA_NIA

JacarandaTown_MapScripts:
	def_scene_scripts
	scene_script JacarandaMeetNiaScript2, SCENE_JACARANDA_NIA
	scene_script JacarandaPreWadeScript, SCENE_JACARANDA_PRE_WADE
	scene_script JacarandaPostWadeScript, SCENE_JACARANDA_POST_WADE

	def_callbacks

JacarandaMeetNiaScript2:
	end

JacarandaNiaScriptUp:
	applymovement PLAYER, JStepDownMovement
	turnobject PLAYER, LEFT

JacarandaMeetNiaScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, PlayerStepsForwardsMovement
	opentext
	writetext NiaSaysHiText
	waitbutton
	turnobject JACARANDA_NIA, LEFT
	writetext NiaCafeText
	yesorno
	iffalse .NiaRejectionScript
	turnobject JACARANDA_NIA, RIGHT
	writetext NiaCafeYesText
	waitbutton
	closetext
	special FadeBlackQuickly
	follow JACARANDA_NIA, PLAYER
	applymovement JACARANDA_NIA, PlayerStepsForwardsMovement
	stopfollow
	turnobject JACARANDA_NIA, RIGHT
	wait 24
	special ReloadSpritesNoPalettes
	special FadeInQuickly
	opentext
	writetext NiaCafeAfterText
	waitbutton
	closetext
	opentext
	playsound SFX_ITEM
	writetext LemonadeText
	giveitem LEMONADE, 3
	waitbutton
	closetext
	opentext
	writetext NiaLeavesText
	waitbutton
	closetext
	applymovement JACARANDA_NIA, NiaLeaveMovement
	disappear JACARANDA_NIA
	setscene SCENE_JACARANDA_PRE_WADE
	setevent EVENT_JACARANDA_NIA
	end

.NiaRejectionScript
	writetext NiaRejectionText
	waitbutton
	closetext
	applymovement JACARANDA_NIA, NiaLeaveMovement
	disappear JACARANDA_NIA
	setscene SCENE_JACARANDA_POST_WADE
	setevent EVENT_JACARANDA_NIA
	end

NiaHiIntroText:
	text "NIA: <PLAYER>!"
	line "Heeeeeeyyy!!!"
	done

NiaSaysHiText:
	text "NIA: <PLAYER>!!"
	line "Hey, what's up!"
	
	para "You beat two gyms"
	line "already, huh?"
	cont "Gosh, you're so"
	cont "talented!"
	done

NiaCafeText:
	text "There's a super"
	line "cute little cafe"
	cont "nearby."
	
	para "Like, I know you"
	line "must be busy, but"
	cont "do you want to"
	cont "catch up over a"
	cont "lemonade?"
	
	para "It's on me!"
	done

NiaCafeYesText:
	text "Yay! Let's go!"
	done

NiaCafeAfterText:
	text "NIA:... so, I"
	line "want to get to"
	cont "know LEE better."
	
	para "I don't want him"
	line "to feel like an"
	cont "outsider, just"
	cont "because you've"
	cont "known me for"
	cont "longer."
	
	para "Ah, look at the"
	line "time. I've kept"
	cont "you too long!"
	
	para "Here, take these"
	line "for the road."
	done
	
LemonadeText:
	text "<PLAYER> put the"
	line "LEMONADE in the"
	cont "bag."
	done

NiaLeavesText:
	text "Right, I'm off!"
	line "If you see LEE,"
	cont "tell him I said"
	cont "hi!"
	
	para "And try not to"
	line "kick his butt"
	cont "too bad if you"
	cont "battle, 'kay?"
	done

NiaRejectionText:
	text "Oh-! Right, right."
	line "You're busy."
	
	para "O-okay. That's"
	line "fine. Another"
	cont "time!"
	
	para "Tell LEE I"
	line "said hi."
	
	para "... See you"
	line "around, <PLAYER>."
	done

NiaLeaveMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end


PlayerStepsForwardsMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

JStepDownMovement:
	step UP
	step_end

NiaApproachMovement:
	step_end

JacarandaPostWadeScript:
	end

JacarandaPreWadeScript:
	end

JacarandaNiaScript:
	end

JacarandaYoungsterScript:
	jumptextfaceplayer JacYoungsterText

JacYoungsterText:
	text "NOMAIA doesn't have"
	line "a champion."
	
	para "I bet my momma"
	line "would be a good"
	cont "champ!"
	done

JacFisherScript:
	jumptextfaceplayer JacTalkWadeText

JacTalkWadeText:
	text "You look familiar."
	line "<PLAYER>, right?"
	
	para "Right! You used"
	line "to come fishin'"
	cont "here when you"
	cont "were a tyke."
	
	para "How's yer friend,"
	line "Mia - no, Nina-"
	cont "what was it?"
	done

JacCooltrainerScript:
	jumptextfaceplayer JacItemsText

JacItemsText:
	text "Man, some items"
	line "are baller."
	
	para "Like the LIGHT"
	line "BALL!"
	
	para "What does it do?"
	line "You'll have to"
	cont "find out, but it"
	cont "has to do with"
	cont "PIKACHU!"
	done

JacGrannyScript:
	jumptextfaceplayer JacGrannyText

JacGrannyText:
	text "Be careful when"
	line "you cross VAL-"
	cont "ERIAN PASS at"
	cont "night."
	
	para "Ghost type #-"
	line "MON like to play"
	cont "pranks when it's"
	cont "dark out."
	done

JacWadeScript:
	end

JacarandaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 19, JACARANDA_POKECENTER, 1
	warp_event 17, 19, JACARANDA_MART, 1
	warp_event 9, 27, JACARANDA_CAFE, 1
	warp_event 12, 15, JACARANDA_GYM, 1
	warp_event 11, 11, JACARANDA_GYM, 2
	warp_event 12, 11, JACARANDA_GYM, 2
	; warp_event 6, 5, JACARANDA_CAVE, 1

	def_coord_events
	coord_event 22, 29, SCENE_JACARANDA_NIA, JacarandaNiaScriptUp
	coord_event 22, 28, SCENE_JACARANDA_NIA, JacarandaMeetNiaScript

	def_bg_events

	def_object_events
	object_event 15, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacarandaNiaScript, EVENT_JACARANDA_NIA
	object_event 15, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacarandaYoungsterScript, -1
	object_event 11, 22, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacGrannyScript, -1
	object_event 20, 25, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacCooltrainerScript, -1
	object_event 14, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacFisherScript, -1
	object_event 26, 5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, JacWadeScript, -1
	
