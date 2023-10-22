	object_const_def
	const CHAMOGYM_LEE
	const CHAMOGYM_BALLBOY1
	const CHAMOGYM_BALLBOY2
	const CHAMOGYM_BALLBOY3
	const CHAMOGYM_BEAUTY
	const CHAMOGYM_BALL

ChamomileGymOutside_MapScripts:
	def_scene_scripts
	scene_script ChamomileGymOutsideNoop1Scene, SCENE_CHAMOMILE_GYM_OUTSIDE_LEEFIGHT
	scene_script ChamomileGymOutsideNoop2Scene, SCENE_CHAMOMILE_GYM_NOOP

	def_callbacks

ChamomileGymOutsideNoop1Scene:
	end

ChamomileGymOutsideNoop2Scene:
	disappear CHAMOGYM_LEE
	end
	
ChamomileGymSign:
	jumptext ChamoGymText

ChamoGymText:
	text "CHAMOMILE CITY"
	line "GYM"
	
	para "Rising high and"
	line "achieving all her"
	cont "lofty goals!"
	
	para "CHAMOMILE's own"
	line "MINA, the NORMAL-"
	cont "TYPE GYM LEADER!"
	done

Basketballboy1Script:
	checkevent EVENT_PLAYED_BASKETBALL
	iftrue .PlayedBasketball
	faceplayer
	opentext
	writetext BasketballLamentText
	promptbutton
	writetext BasketballQuestionText
	yesorno
	iffalse .NoBall
	writetext YesBallText
	waitbutton
	closetext
	special FadeOutPalettes
	special FadeOutMusic
	pause 20
	special LoadMapPalettes
	special RestartMapMusic
	opentext
	writetext CoolBallText
	promptbutton
	giveitem GREAT_BALL, 3
	playsound SFX_ITEM
	setevent EVENT_PLAYED_BASKETBALL
	writetext GotGreatballText
	promptbutton
	writetext ThanksBasketball1Text
	waitbutton
	closetext
	end
	
.PlayedBasketball
	jumptextfaceplayer ThanksBasketball

.NoBall
	writetext NoBallText
	waitbutton
	closetext
	end
	
BasketballLamentText:
	text "Aw... that older"
	line "kid was playing"
	cont "ball with us, but"
	cont "now our teams"
	cont "aren't even."
	done

BasketballQuestionText:
	text "Hey, wait! Would"
	line "you play with us"
	cont "for a while?"
	
	para "Just one game!"
	done
	
NoBallText:
	text "Oh... I- I mean,"
	line "fair, you're"
	cont "probably busy."
	
	para "Maybe another..."
	line "time... or"
	cont "not..."
	done

YesBallText:
	text "You will?!"
	line "Come on, guys!"
	cont "Let's dunk!"
	done
	
CoolBallText:
	text "Huff... puff..."
	line "That was fun!"
	cont "You're great,"
	cont "<PLAYER>!"
	
	para "Here, this is"
	line "for giving us a"
	cont "great ball game!"
	done

GotGreatballText:
	text "<PLAYER>"
	line "put the GREAT"
	cont "BALLS in the"
	cont "BAG."
	done

ThanksBasketball1Text:
	text "You're awesome,"
	line "<PLAYER>."
	
	para "Even if the"
	line "world ends soon,"
	cont "I'll never forget"
	cont "you or your"
	cont "great dunks."
	done

ThanksBasketball:
	text "If we had more"
	line "time, I'd ask you"
	cont "to sign my"
	cont "basketball, heh!"
	
	para "You're the best,"
	line "<PLAYER>!"
	done

Basketballboy2Script:
	checkevent EVENT_PLAYED_BASKETBALL
	iftrue .PlayedBasketball2
	jumptextfaceplayer BallBoy1Text1

.PlayedBasketball2
	jumptextfaceplayer BallBoy1Text2

BallBoy1Text1:
	text "That big kid was"
	line "cool, if a little"
	cont "tough."
	
	para "My big brother"
	line "was the same."
	done

BallBoy1Text2:
	text "Woah! You're"
	line "even cooler than"
	cont "that other kid!"
	
	para "<PLAYER>"
	line "rules!"
	done

Basketballboy3Script:
	checkevent EVENT_PLAYED_BASKETBALL
	iftrue .PlayedBasketball3
	jumptextfaceplayer BallBoy2Text1

.PlayedBasketball3:
	jumptextfaceplayer BallBoy2Text2
	
BallBoy2Text1:
	text "Guess we can't"
	line "play with only"
	cont "three of us."
	
	para "I was having"
	line "fun, too..."
	done

BallBoy2Text2:
	text "Thank you for"
	line "playing with us!"
	
	para "No kidding,"
	line "you're, like..."
	cont "the coolest"
	cont "person ever."
	done
	
LeeFightTopScript:
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement CHAMOGYM_LEE, LeeWalksToYou1
	turnobject PLAYER, DOWN
	sjump LeeFightScriptMain

LeeFightBottomScript:
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement CHAMOGYM_LEE, LeeWalksToYou2
	turnobject PLAYER, UP
	sjump LeeFightScriptMain

LeeFightScriptMain:
	opentext
	writetext LeeGrouchyText
	waitbutton
	pause 15
	opentext
	writetext LeePreFightText
	waitbutton
	closetext
	checkevent EVENT_TOOK_REPTRIPBALL
	iftrue .Reptrip
	checkevent EVENT_TOOK_LULLABALL
	iftrue .Lullabear
	winlosstext RivalLittlesageWinText, RivalLittlesageLossText
	loadtrainer LEE, LEE_2_REPTRIP
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Lullabear:
	winlosstext RivalChamoWinText, RivalChamoLossText
	loadtrainer LEE, LEE_2_PUPAGE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Reptrip:
	winlosstext RivalLittlesageWinText, RivalLittlesageLossText
	loadtrainer LEE, LEE_2_LULLABEAR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	opentext
	writetext ChamoGymRivalWin
	waitbutton
	closetext
	sjump .FinishChamoGymEvent

.AfterYourDefeat:
	opentext
	writetext ChamoGymRivalLoss
	waitbutton
	closetext
	sjump .FinishChamoGymEvent

.FinishChamoGymEvent:
	playmapmusic
	applymovement CHAMOGYM_LEE, MovementLeeLeavesChamoGym
	disappear CHAMOGYM_LEE
	setscene SCENE_CHAMOMILE_GYM_NOOP
	special HealParty
	end

RivalChamoLossText:
	text "...Hmph."
	done

RivalChamoWinText:
	text "Don't get smug."
	line "The GYM LEADER"
	cont "softened me up"
	cont "for you."
	done

LeeGrouchyText:
	text "... <PLAYER>?"
	line "Just my luck."
	
	para "How's, uh..."
	line "... have you"
	cont "...caught any"
	cont "#MON lately...?"
	
	para "... How about"
	line "those, uh..."
	cont "those PICHU...?"
	done

LeePreFightText:
	text "Grr, forget it."
	line "NIA wants us to"
	cont "be better friends,"
	cont "but you've been"
	cont "friends with her"
	cont "forever."
	
	para "She won't under-"
	line "stand. We're"
	cont "nothing alike."
	
	para "The only thing we"
	line "have in common is"
	cont "we're half-decent"
	cont "battlers."
	
	para "C'mere!"
	done

ChamoGymRivalLoss:
	text "Ugh. You're"
	line "just so good at"
	cont "battling, aren't"
	cont "you?!"
	
	para "No wonder you"
	line "... ... ..."
	
	para "Ugh! Nevermind."
	line "Go battle GYM"
	cont "LEADER MINA"
	cont "or whatever."
	
	para "Go easy on"
	line "her, though."
	cont "She's just some"
	cont "kid."
	done

ChamoGymRivalWin:
	text "... Are you going"
	line "easy on me?"
	
	para "That'd grind"
	line "my KLINKLANG"
	cont "even more than"
	cont "you being weak."
	
	para "Anyway, GYM"
	line "LEADER MINA is"
	cont "just up ahead."
	
	para "... Hey, when"
	line "you battle her,"
	cont "keep an eye out."
	
	para "She seemed kinda"
	line "off. I can't"
	cont "explain it."
	
	para "... Whatever."
	line "Not like I"
	cont "could help."
	
	para "Later."
	done

LeeWalksToYou1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

LeeWalksToYou2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end
	
LeeScript:
	end

MovementLeeLeavesChamoGym:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Beauty1Script:
	jumptextfaceplayer ChamoBeautyText

ChamoBeautyText:
	text "MINA, this city's"
	line "GYM LEADER, is"
	cont "a really sweet"
	cont "girl."
	
	para "Good grades,"
	line "a fair challenge,"
	cont "a busy social"
	cont "life..."
	
	para "We're all"
	line "really proud of"
	cont "her."
	done

ChamomileSportsSign:
	jumptext ChamoSportText

ChamoSportText:
	text "CHAMOMILE CAMPUS"
	line "BALL COURT"
	done

ChamoGymBallScript:
	itemball SUPER_POTION

ChamomileGymOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 2, 16, SCENE_CHAMOMILE_GYM_OUTSIDE_LEEFIGHT, LeeFightTopScript
	coord_event 2, 17, SCENE_CHAMOMILE_GYM_OUTSIDE_LEEFIGHT, LeeFightBottomScript

	def_bg_events
	bg_event 16, 10, BGEVENT_READ, ChamomileGymSign
	bg_event 4, 15, BGEVENT_READ, ChamomileSportsSign

	def_object_events
	object_event 7, 16, SPRITE_RIVAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LEE_CHAMOMILECITY
	object_event 4, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Basketballboy1Script, -1
	object_event 8, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Basketballboy2Script, -1
	object_event 5, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Basketballboy3Script, -1
	object_event 16, 14, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Beauty1Script, -1
	object_event 6, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ChamoGymBallScript, EVENT_CHAMO_GYM_BALL