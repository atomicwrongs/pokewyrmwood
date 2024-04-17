	object_const_def
	const CHAMOGYM_MINA
	const CHAMOGYM_YUKI
	const CHAMOGYM_TAMMY
	const CHAMOGYM_NOOR
	const CHAMOGYM_ZURI
	const CHAMOGYM_BELL

ChamomileGym_MapScripts:
	def_scene_scripts
	scene_script ChamoGymNoop1Scene, SCENE_CHAMOMILE_GYM_CHALLENGE
	scene_script ChamoGymMinaFightScene, SCENE_CHAMOMILE_GYM_CHALLENGE2
	scene_script ChamoGymNoop2Scene, SCENE_CHAMOMILE_GYM_NOOP1

	def_callbacks

ChamoGymNoop1Scene:
	end

ChamoGymNoop2Scene:
	end

ChamoGymMinaFightScene:
	end

TrainerLassBell:
	checkevent EVENT_BEAT_FALKNER
	iftrue .BellPostFight
	faceplayer
	opentext
	writetext BellPreFight
	promptbutton
	closetext
	end

.BellPostFight:
	jumptextfaceplayer BellPostFightText
	end

BellPreFight:
	text "MINA's really nice."
	line "I was kind of an"
	cont "outcast before she"
	cont "reached out to"
	cont "me."
	
	para "I hope she's"
	line "okay."
	done

BellPostFightText:
	text "I'm so glad"
	line "MINA's feeling"
	cont "better."
	
	para "I never thought"
	line "she was so"
	cont "stressed..."
	done
	
TrainerLassNoor:
	checkevent EVENT_BEAT_FALKNER
	iftrue .NoorPostFight
	faceplayer
	opentext
	writetext NoorPreFight
	waitbutton
	closetext
	end

.NoorPostFight:
	jumptextfaceplayer NoorPostFightText
	end

NoorPreFight:
	text "MI-MI..."
	line "she's not her"
	cont "usual self."
	
	para "There's no"
	line "sparkle behind"
	cont "her eyes."
	done

NoorPostFightText:
	text "<PLAYER>,"
	line "you helped"
	cont "MI-MI find"
	cont "her sparkle!!"
	done

TrainerLassTammy:
	checkevent EVENT_BEAT_FALKNER
	iftrue .TammyPostFight
	faceplayer
	opentext
	writetext TammyPreFight
	waitbutton
	closetext
	end

.TammyPostFight:
	jumptextfaceplayer TammyPostFightText
	end

TammyPreFight:
	text "Good grades,"
	line "lots of friends,"
	cont "strong #-"
	cont "MON..."
	
	para "There's a lot"
	line "on MINA's"
	cont "plate."
	done

TammyPostFightText:
	text "A burden shared"
	line "is a burden"
	cont "halved."
	
	para "MINA helped us,"
	line "we can help her."
	done

TrainerLassYuki:
	checkevent EVENT_BEAT_FALKNER
	iftrue .YukiPostFight
	faceplayer
	opentext
	writetext YukiPreFight
	waitbutton
	closetext
	end

.YukiPostFight:
	jumptextfaceplayer YukiPostFightText
	end

YukiPreFight:
	text "Normally when"
	line "I'm scared, I"
	cont "go to MINA for"
	cont "advice."
	
	para "I never thought"
	line "about the pressure"
	cont "on her..."
	done

YukiPostFightText:
	text "No matter what"
	line "happens, I'll be"
	cont "there for MINA!"
	
	para "BELL, ZURI,"
	line "NOOR, TAMMY..."
	
	para "And you, too!"
	line "I'll try to help"
	cont "my friends how-"
	cont "ever I can!"
	done

TrainerLassZuri:
	checkevent EVENT_BEAT_FALKNER
	iftrue .ZuriPostFight
	faceplayer
	opentext
	writetext ZuriPreFight
	waitbutton
	closetext
	end

.ZuriPostFight:
	jumptextfaceplayer ZuriPostFightText
	end

ZuriPreFight:
	text "Keeping up such"
	line "a peppy persona"
	cont "is hard work."
	
	para "MINA must be"
	line "exhausted."
	
	para "I wish she'd"
	line "talk to us about"
	cont "it..."
	done

ZuriPostFightText:
	text "You did it!"
	line "<PLAYER>,"
	cont "thank you!"
	
	para "You're totally"
	line "invited to all"
	cont "of our world's-"
	cont "-ending slumber"
	cont "parties!"
	done

MovetoMinaScriptL:
	applymovement PLAYER, MinaMoveLMovement
	turnobject PLAYER, RIGHT
	sjump ChamomileMinaScript

MovetoMinaScriptR:
	applymovement PLAYER, MinaMoveRMovement
	sjump ChamomileMinaScript

MinaMoveLMovement:
	step UP
	step UP
	step UP
	step_end

MinaMoveRMovement:
	step LEFT
	step UP
	step UP
	step UP
	step_end

ChamomileMinaScript:
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	turnobject CHAMOGYM_MINA, RIGHT
	opentext
	writetext MinaBeforeText
	waitbutton
	closetext
	winlosstext BeatMinaText, 0
	loadtrainer FALKNER, FALKNER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	special FadeOutMusic
	playmusic MUSIC_REQUIEM
	opentext
	writetext MinaExasperatedText
	waitbutton
	closetext
	applymovement CHAMOGYM_MINA, MinaWalkAwayMovement
	opentext
	writetext MinaBreakdownText
	waitbutton
	closetext
	wait 20
	turnobject CHAMOGYM_MINA, LEFT
	opentext
	writetext MinaQuestionsYou
	waitbutton
	closetext
	playmusic MUSIC_GYM
	applymovement CHAMOGYM_MINA, MinaWalkBackMovement
	turnobject CHAMOGYM_MINA, DOWN
	opentext
	writetext MinaRealises
	waitbutton
	closetext
	turnobject CHAMOGYM_MINA, LEFT
	opentext
	writetext MinaThanksText
	waitbutton
	closetext
	opentext
	writetext ReceivedStarletBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	addcellnum PHONE_MINA
	waitbutton
	closetext
	opentext
	writetext MinaSleepoverText
	waitbutton
	closetext
	setscene SCENE_CHAMOMILE_GYM_NOOP1
	end

.FightDone:
	faceplayer
	opentext
	writetext MinaPartyText
	waitbutton
	closetext
	end

MinaBeforeText:
	text "..."
	line "...!"
	
	para "Hi, trainer!"
	line "I'm MINA!"
	cont "CHAMOMILE GYM's"
	cont "super-cool, never-"
	cont "fails GYM"
	cont "LEADER!!"
	
	para "I'm always up"
	line "for a battle!"
	cont "I'm the city's"
	cont "pride and joy,"
	cont "after all!"
	
	para "Let's go!"
	line "I'll do my"
	cont "best!"
	
	para "..."
	line "... like always."
	done

BeatMinaText:
	text "...I can't do"
	line "this."
	done

MinaExasperatedText:
	text "I... I don't..."
	line "..."
	
	para "I don't want"
	line "to do this any-"
	cont "more!"
	done

MinaBreakdownText:
	text "School, battles,"
	line "social life, when"
	cont "was I supposed"
	cont "to be a kid?"
	
	para "And all that work,"
	line "what was it for?!"
	
	para "I tried so hard"
	line "to make a good"
	cont "future, and now"
	cont "I just don't get"
	cont "to have one?!"
	
	para "It's not fair!"
	line "If I knew I'd"
	cont "die soon, I"
	cont "would have..."
	
	para "I would have"
	line "LIVED, while I"
	cont "had the chance!"
	
	para "... Sob..."
	line "whimper..."
	done

MinaQuestionsYou:
	text "B-but..."
	line "<PLAYER>..."
	
	para "You're only just"
	line "starting your"
	cont "#MON journey,"
	cont "aren't you...?"
	
	para "Even though we're"
	line "all going to die"
	cont "soon, you're still"
	cont "working towards"
	cont "being who you want"
	cont "to be."
	done

MinaRealises:
	text "And my friends,"
	line "they're here, too."
	
	para "... I wanna spend"
	line "my last days with"
	cont "them."
	
	para "As the real me."
	done

MinaThanksText:
	text "<PLAYER>,"
	line "thanks. I don't"
	cont "think you realise"
	cont "how much you've"
	cont "helped me."
	
	para "I'm going to be"
	line "true to myself!"
	
	para "Oh, you should"
	line "have this!"
	done

ReceivedStarletBadgeText:
	text "<PLAYER> got"
	line "the STARLET BADGE!"
	done
	
MinaSleepoverText:
	text "I'll register you"
	line "in my phone, too,"
	cont "so we can chat!"
	
	para "I'm gonna plan an"
	line "epic slumber party"
	cont "with my besties."
	
	para "You're totally"
	line "welcome to join!"
	
	para "We're BFFS now,"
	line "<PLAYER>!"
	cont "Whatever happens,"
	cont "you're one of my"
	cont "crew!"
	done

MinaPartyText:
	text "Movies, popcorn,"
	line "plushies, what"
	cont "else?"
	
	para "Oh, makeup!"
	line "<PLAYER>,"
	cont "we should give"
	cont "our #MON"
	cont "makeovers!"
	
	para "Eeeee, it'll"
	line "be so cute!"
	done

MinaWalkAwayMovement:
	step RIGHT
	step RIGHT
	step_end

MinaWalkBackMovement:
	step LEFT
	step_end

GymChallengeScript:
	applymovement PLAYER, StepTowardsMovement
	turnobject CHAMOGYM_ZURI, DOWN
	opentext
	writetext WelcomeToChamoGymText
	playsound SFX_FANFARE_2
	waitsfx
	promptbutton
	writetext QuizTimeText
	waitbutton
	writetext Question1Text
	yesorno
	iftrue .Battle_Yuki
	playsound SFX_FANFARE_2
	waitsfx
	writetext Question1RightText
	sjump Question2Script

.Battle_Yuki
	playsound SFX_WRONG
	waitsfx
	writetext Question1WrongText
	waitbutton
	closetext
	winlosstext YukiLoseText, 0
	loadtrainer LASS, YUKI
	startbattle
	reloadmap
	sjump Question2Script

Question2Script:
	writetext Question2Text
	yesorno
	iffalse .BattleTammy
	playsound SFX_FANFARE_2
	waitsfx
	writetext Question2RightText
	waitbutton
	sjump Question3Script

.BattleTammy
	playsound SFX_WRONG
	waitsfx
	writetext Question2WrongText
	waitbutton
	closetext
	winlosstext TammyLoseText, 0
	loadtrainer LASS, TAMMY
	startbattle
	reloadmap
	sjump Question3Script

Question3Script:
	writetext Question3Text
	yesorno
	iffalse .BattleNoor
	playsound SFX_FANFARE_2
	waitsfx
	writetext Question3RightText
	waitbutton
	sjump Question4Script

.BattleNoor:
	playsound SFX_WRONG
	waitsfx
	writetext Question3WrongText
	waitbutton
	closetext
	winlosstext NoorLoseText, 0
	loadtrainer LASS, NOOR
	startbattle
	reloadmap
	sjump Question4Script

Question4Script:
	writetext Question4Text
	yesorno
	iftrue .BattleBell
	playsound SFX_FANFARE_2
	waitsfx
	writetext Question4RightText
	promptbutton
	closetext
	opentext
	writetext ChallengeMinaText
	promptbutton
	closetext
	setscene SCENE_CHAMOMILE_GYM_CHALLENGE2
	end

.BattleBell:
	playsound SFX_WRONG
	waitsfx
	writetext Question4WrongText
	waitbutton
	closetext
	winlosstext BellLoseText, 0
	loadtrainer LASS, BELL
	startbattle
	reloadmap
	opentext
	writetext ChallengeMinaText
	promptbutton
	closetext
	setscene SCENE_CHAMOMILE_GYM_CHALLENGE2
	end

Question3Text:
	text "On to question"
	line "three, okay?"
	
	para "So, some #-"
	line "MON have two"
	cont "types. Some"
	cont "are super rare,"
	cont "like DARK/GHOST"
	cont "or GROUND/FAIRY!"
	
	para "But some are"
	line "really common."
	
	para "Is FLYING/NORMAL"
	line "the most common"
	cont "dual typing for"
	cont "a #MON to have?"
	done

Question3RightText:
	text "That's right!"
	line "PIDGEOT, FEAROW,"
	cont "SQUAWKABILLY..."
	
	para "They're not so"
	line "common in NOMAIA,"
	cont "but elsewhere,"
	cont "they're super"
	cont "common!"
	done

Question3WrongText:
	text "Nope, that was"
	line "true!"
	
	para "PIDGEOT, FEAROW,"
	line "SQUAWKABILLY..."
	
	para "They're not so"
	line "common in NOMAIA,"
	cont "but elsewhere,"
	cont "they're super"
	cont "common!"
	
	para "You're up, NOOR!"
	done

NoorLoseText:
	text "Hehe... you're"
	line "way too tough..."
	done

Question4Text:
	text "Last question!"
	line "After this, you"
	cont "can challenge"
	cont "MINA!"
	
	para "So, a PSEUDO"
	line "LEGENDARY #-"
	cont "MON is a type of"
	cont "super strong"
	cont "#MON."
	
	para "Most regions"
	line "have one native"
	cont "PSEUDO LEGENDARY"
	cont "#MON."
	
	para "Is HOENN the only"
	line "region to have"
	cont "two native PSEUDO"
	cont "LEGENDARY #-"
	cont "MON?"
	done

Question4RightText:
	text "You got it!"
	line "NOMAIA also has"
	cont "two - BLIZZORB"
	cont "and POLYBINK!"
	
	para "There's also"
	line "TYRANITAR and"
	cont "GARCHOMP!"
	done

Question4WrongText:
	text "Ah, bad luck:"
	line "NOMAIA also has"
	cont "two - BLIZZORB"
	cont "and POLYBINK!"
	
	para "They're super"
	line "strong, if only"
	cont "they could..."
	
	para "..."
	line "..."
	
	para "... never mind."
	line "BELL, battle time!"
	done

BellLoseText:
	text "I guess I'll"
	line "never be as"
	cont "good as MINA."
	done

ChallengeMinaText:
	text "That's the end"
	line "of the quiz!"
	cont "Good job!"
	
	para "Now you can"
	line "challenge MINA-"
	cont "but don't think"
	cont "she'll go easy"
	cont "on you, because..."
	
	para "..."
	line "..."
	
	para "...Hey."
	line "Listen, <PLAYER>."
	
	para "We're... actually"
	line "really worried"
	cont "about MINA."
	
	para "She's in full"
	line "work mode."
	cont "It's kinda scary."
	
	para "She just stares"
	line "into nothing and"
	cont "smiles..."
	
	para "If you beat her,"
	line "could you talk"
	cont "to her?"
	done

ComeBackLaterText:
	text "That's A-OK!"
	line "Take some time to"
	cont "prep, we'll be"
	cont "ready!"
	done

Question2Text:
	text "Okay, question"
	line "two!"
	
	para "Is it true"
	line "that the #-"
	cont "MON EEVEE can"
	cont "evolve into 17"
	cont "different forms?"
	done

Question2RightText:
	text "Ding ding ding!"
	line "In NOMAIA, EEVEE"
	cont "can evolve into"
	cont "17 forms!"
	
	para "Catch a lot of"
	line "cute EEVEE, so"
	cont "you can see"
	cont "them all!"
	done

Question2WrongText:
	text "Oops! That one"
	line "was true! In"
	cont "NOMAIA, EEVEE"
	cont "can evolve into"
	cont "17 forms!"
	
	para "That's one for"
	line "each type, except"
	cont "for normal."
	
	para "My favourite is"
	line "BREEZEON!"
	
	para "Anyway, get ready"
	line "to rumble!"
	done

TammyLoseText:
	text "Sorry, MINA..."
	done

WelcomeToChamoGymText:
	text "Hiya! Welcome to"
	line "CHAMOMILE GYM!"
	
	para "The leader is"
	line "our BFF, MINA!"
	
	para "Of course, she's"
	line "super cool and"
	cont "busy, so before"
	cont "you challenge her,"
	cont "we need to make"
	cont "sure you know"
	cont "your stuff!"
	
	para "That's right, it's"
	line "a quiz challenge!"
	done

QuizTimeText:
	text "Don't worry, the"
	line "questions won't"
	cont "be too hard."
	cont "Just some YES"
	cont "or NO trivia."
	
	para "If you get one"
	line "wrong, you have"
	cont "to fight one of"
	cont "us, though."
	
	para "Is that okay?"
	line "Are you ready?"
	done

Question1Text:
	text "Awesome! Let's"
	line "begin!"
	
	para "Your first"
	line "question is..."
	
	para "If a GRASS type"
	line "#MON hit a"
	cont "FIRE type #-"
	cont "MON with a"
	cont "GRASS type"
	cont "attack, would it"
	cont "be very effect-"
	cont "ive?"
	done

Question1RightText:
	text "That's right!"
	line "A GRASS-type"
	cont "attack wouldn't"
	cont "be very effective"
	cont "against a FIRE"
	cont "type opponent."
	done

Question1WrongText:
	text "Uh oh! Maybe"
	line "my phrasing was"
	cont "a little unclear-"
	
	para "A GRASS-type"
	line "attack wouldn't"
	cont "be very effective"
	cont "against a FIRE"
	cont "type opponent."
	
	para "I hope you're"
	line "ready for a"
	cont "battle!"
	done

YukiLoseText:
	text "Aw, you got me!"
	line "Good job!"
	done

LeaveGymMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

StepTowardsMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

PlushieScript:
	jumptext PlushieText

PlushieText:
	text "It's a cute and"
	line "cuddly #MON"
	cont "doll."
	done
	

ChamomileGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 19, CHAMOMILE_GYM_OUTSIDE, 1
	warp_event 4, 19, CHAMOMILE_GYM_OUTSIDE, 1

	def_coord_events
	coord_event 4, 18, SCENE_CHAMOMILE_GYM_CHALLENGE, GymChallengeScript
	coord_event 5, 18, SCENE_CHAMOMILE_GYM_CHALLENGE, GymChallengeScript
	coord_event 4, 7, SCENE_CHAMOMILE_GYM_CHALLENGE2, MovetoMinaScriptL
	coord_event 5, 7, SCENE_CHAMOMILE_GYM_CHALLENGE2, MovetoMinaScriptR
	
	def_bg_events
	
	def_object_events
	object_event  5,  4, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ChamomileMinaScript, -1
	object_event  3, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerLassYuki, -1
	object_event  6, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerLassTammy, -1
	object_event  7, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerLassNoor, -1
	object_event  5,  13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerLassZuri, -1
	object_event  2, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerLassBell, -1
	object_event  2, 8, SPRITE_PIKACHU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlushieScript, -1
	object_event  7, 7, SPRITE_CLEFAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlushieScript, -1
	object_event  1, 12, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlushieScript, -1
	object_event  8, 14, SPRITE_PIKACHU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlushieScript, -1
	object_event  2, 15, SPRITE_CLEFAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlushieScript, -1
