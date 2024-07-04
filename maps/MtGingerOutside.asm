	object_const_def
	const MT_GINGER_LUCY
	const MT_GINGER_BRYNNE
	const MT_GINGER_CHRIS_PLACEHOLDER
	const MT_GINGER_KRIS_PLACEHOLDER
	const MT_GINGER_KITS
	const MT_GINGER_KITS_2

MtGingerOutside_MapScripts:
	def_scene_scripts
	scene_script MtGingerOutsideKitsScene, SCENE_MT_GINGER_OUTSIDE_KITS
	scene_script MtGingerOutsideNoopScene, SCENE_MT_GINGER_NOOP

	def_callbacks

MtGingerOutsideKitsScene:
	checkevent EVENT_TALKED_TO_KITS
	iffalse DisappearKitsScript
	checkevent EVENT_BEAT_BUGSY
	iftrue DisappearKitsScript
	end

DisappearKitsScript:
	disappear MT_GINGER_KITS_2
	end

MtGingerOutsideNoopScene:
	end

MtGingerKitsScript2:
	end

SkiierLucyScript:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxannebSeenText, SkierRoxanneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	closetext
	end

SkiierBrynneScript:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierBrynneSeenText, SkierBrynneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierBrynneAfterBattleText
	waitbutton
	closetext
	end

SkierRoxannebSeenText:
	text "You look chilly!"
	line "Let's warm up"
	cont "with a battle!"
	done

SkierRoxanneBeatenText:
	text "Whoo, that got"
	line "me heated!"
	done

SkierRoxanneAfterBattleText:
	text "My #MON are"
	line "super cute, but"
	cont "they've also"
	cont "saved me a few"
	cont "times on the"
	cont "slopes."
	done

SkierBrynneSeenText:
	text "Wanna see my"
	line "icy-cool #-"
	cont "MON?"
	done

SkierBrynneBeatenText:
	text "Ack! I totally"
	line "froze up!"
	done

SkierBrynneAfterBattleText:
	text "Both of my"
	line "#MON are cool,"
	cont "but the levels"
	cont "they evolve at"
	cont "are chilling."
	done

MtGingerKitsScript:
	end
MtGingerChrisScript:
	end
MtGingerKrisScript:
	end
	
ShowObjectMovement:
	show_object
	step_end

HideObjectMovement:
	hide_object
	step_end

MtGingerKitsEncounter:
	checkevent EVENT_TALKED_TO_KITS
	iftrue .AlreadyTalked_Script
	moveobject MT_GINGER_CHRIS_PLACEHOLDER, 11, 12
	moveobject MT_GINGER_KRIS_PLACEHOLDER, 11, 12
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder
	appear MT_GINGER_CHRIS_PLACEHOLDER
	sjump .HidePlayer
.ShowGirlPlaceholder
	appear MT_GINGER_KRIS_PLACEHOLDER
.HidePlayer
	applymovement PLAYER, HideObjectMovement
	special FadeOutMusic
	applymovement PLAYER, WalkToKitsMovement
	applymovement MT_GINGER_KITS, KitsStepMovement
	opentext
	writetext KitsGroaningText
	waitbutton
	closetext
	applymovement PLAYER, WalkBackFromKitsMovement
	turnobject PLAYER, LEFT
	applymovement PLAYER, ShowObjectMovement
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .HideGirlPlaceholder
	disappear MT_GINGER_CHRIS_PLACEHOLDER
	sjump .HidPlaceholder
.HideGirlPlaceholder
	disappear MT_GINGER_KRIS_PLACEHOLDER
.HidPlaceholder
	applymovement PLAYER, WalkToKitsMovement
	turnobject MT_GINGER_KITS, DOWN
	opentext
	writetext KitsGreetingText
	waitbutton
	closetext
	applymovement MT_GINGER_KITS, KitsStepMovement
	opentext
	writetext KitsAgonyText
	waitbutton
	closetext
	wait 15
	playmusic MUSIC_REQUIEM
	turnobject MT_GINGER_KITS, DOWN
	opentext
	writetext KitsAsksToLeanText
	waitbutton
	closetext
	applymovement PLAYER, WalkToKitsSide
	follow PLAYER, MT_GINGER_KITS
	applymovement PLAYER, WalkToSummitMovement
	stopfollow
	applymovement MT_GINGER_KITS, WalkPlayerSideMovement
	wait 15
	opentext
	writetext KitsAdmirationText
	waitbutton
	turnobject MT_GINGER_KITS, LEFT
	turnobject PLAYER, RIGHT
	setevent EVENT_TALKED_TO_KITS
	writetext KitsBattleText
	yesorno
	iffalse BattleKitsStart
	special HealParty
	writetext KitsHealedUpText
	waitbutton
	sjump BattleKitsStart

.AlreadyTalked_Script:
	applymovement PLAYER, WalkToSummitMovement2
	turnobject MT_GINGER_KITS_2, LEFT
	sjump BattleKits2Start

BattleKitsStart:
	writetext BattleKitsStartText
	waitbutton
	closetext
	winlosstext BeatKitsText, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	playmapmusic
	opentext
	writetext KitsYouWonText
	waitbutton
	closetext
	opentext
	writetext ReceivedSummitBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	addcellnum PHONE_KITS
	closetext
	opentext
	writetext GotInfiniteRopeText
	playsound SFX_ITEM
	giveitem ESCAPE_ROPE, 1
	waitbutton
	closetext
	opentext
	writetext KitsHospitalText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MT_GINGER_KITS, KitsExitsMovement
	disappear MT_GINGER_KITS
	disappear MT_GINGER_CHRIS_PLACEHOLDER
	disappear MT_GINGER_KRIS_PLACEHOLDER
	setscene SCENE_MT_GINGER_NOOP
	end

BattleKits2Start:
	turnobject PLAYER, RIGHT
	opentext
	writetext BattleKitsStartText
	waitbutton
	closetext
	winlosstext BeatKitsText, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	playmapmusic
	opentext
	writetext KitsYouWonText
	waitbutton
	closetext
	opentext
	writetext ReceivedSummitBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	addcellnum PHONE_KITS
	closetext
	opentext
	writetext GotInfiniteRopeText
	playsound SFX_ITEM
	giveitem ESCAPE_ROPE, 1
	waitbutton
	closetext
	opentext
	writetext KitsHospitalText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MT_GINGER_KITS_2, KitsExitsMovement
	disappear MT_GINGER_KITS_2
	disappear MT_GINGER_CHRIS_PLACEHOLDER
	disappear MT_GINGER_KRIS_PLACEHOLDER
	setscene SCENE_MT_GINGER_NOOP
	end

WalkToKitsMovement:
	step LEFT
	step UP
	step UP
	step_end

KitsGroaningText:
	text "O-ow..."
	line "I c-can't..."
	cont "give up..."

	para "I have to see"
	line "the summit...!"
	done

WalkBackFromKitsMovement:
	step DOWN
	step DOWN
	step RIGHT
	step_end

KitsGreetingText:
	text "...!"
	line "O-oh, hey."
	cont "You're a gym"
	cont "challenger, right?"
	
	para "Sorry to make you"
	line "trek up here, but"
	cont "MT GINGER is a"
	cont "great place to"
	cont "battle."
	done

KitsStepMovement:
	step UP
	step_end

KitsAgonyText:
	text "When I first"
	line "climbed her, I"
	cont "was swept away"
	cont "by how awesome"
	cont "the view was."

	para "Then I moved on"
	line "to more difficult"
	cont "climbs, and didn't"
	cont "visit MT GINGER"
	cont "again."

	para "...Then I got"
	line "hurt, and in the"
	cont "hospital I tried"
	cont "to pass time by"
	cont "thinking of all"
	cont "the peaks I've"
	cont "conquered, but"
	cont "I couldn't pic-"
	cont "ture any of them."

	para "I... I don't want"
	line "to die having only"
	cont "conquered moun-"
	cont "tains."

	para "I want to have"
	line "loved them, too."
	done

KitsAsksToLeanText:
	text "I... guess that's"
	line "how you feel about"
	cont "#MON, huh?"

	para "... Can I... lean"
	line "on you?"

	para "Just 'til we get"
	line "to the peak."
	done

WalkToKitsSide:
	step UP
	step UP
	step LEFT
	step UP
	step_end

WalkPlayerSideMovement:
	step RIGHT
	step UP
	step_end

WalkToSummitMovement:
	step UP
	step UP
	step UP
	step_end

KitsAdmirationText:
	text "... It's so"
	line "breathtaking."
	cont "That might be"
	cont "the bruised rib,"
	cont "but just look"
	cont "at that view..."

	para "She may not be"
	line "as tall as MT"
	cont "CORONET or as"
	cont "challenging as"
	cont "MT SILVER, but"
	cont "I'm so glad I"
	cont "have such a"
	cont "lovely climb on"
	cont "my doorstep."
	done

KitsBattleText:
	text "Thank you."
	line "I needed this."
	
	para "Sniff... ah,"
	line "I'm gonna cry..."

	para "Oh, right, the"
	line "battle!"

	para "Do you need me"
	line "to heal your"
	cont "party up first?"
	done

KitsHealedUpText:
	text "... And, there!"
	line "Your MON are"
	cont "fighting fit."
	done

BattleKitsStartText:
	text "Feeling ready,"
	line "<PLAYER>?"

	para "Let's enjoy a"
	line "high-altitude"
	cont "scrap!"
	done
	
BeatKitsText:
	text "Whoo! That's"
	line "how it's done!"
	done

KitsYouWonText:
	text "Oh, yeah! I'm"
	line "so hyped, I"
	cont "can't even feel"
	cont "my broken ankle!"

	para "<PLAYER>, you're"
	line "champion material,"
	cont "I feel honoured"
	cont "to have fought"
	cont "you."

	para "Let me award you"
	line "the SUMMIT BADGE,"
	cont "and something to"
	cont "help you in your"
	cont "future climbs."
	done

GotInfiniteRopeText:
	text "<PLAYER>"
	line "received the"
	cont "INFINITE ESCAPE"
	cont "ROPE."
	done
ReceivedSummitBadgeText:
	text "<PLAYER> got"
	line "the SUMMIT"
	cont "BADGE!"
	done

KitsHospitalText:
	text "Whoof. Kinda"
	line "coming down from"
	cont "the post-battle"
	cont "rush."

	para "Yup, I am in"
	line "a tremendous"
	cont "amount of pain."

	para "<PLAYER>, I'll"
	line "call you later"
	cont "I gotta go get"
	cont "yelled at by"
	cont "some hospital"
	cont "staff."
	done

KitsExitsMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

WalkToSummitMovement2:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step_end

KitsToSummitMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

MtGingerOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 21, MT_GINGER_INTERIOR, 2
	warp_event  9, 21, MT_GINGER_INTERIOR, 3
	warp_event  9, 17, MT_GINGER_INTERIOR, 4
	warp_event 13, 17, MT_GINGER_INTERIOR, 5
	warp_event 13, 11, MT_GINGER_INTERIOR, 6

	def_coord_events
	coord_event 11, 12, SCENE_MT_GINGER_OUTSIDE_KITS, MtGingerKitsEncounter

	def_bg_events

	def_object_events
	object_event 8, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SkiierLucyScript, -1
	object_event 12, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SkiierBrynneScript, -1
	object_event  0, 31, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtGingerChrisScript, EVENT_MOUNTAIN_KITS
	object_event  0, 31, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtGingerKrisScript, EVENT_MOUNTAIN_KITS
	object_event 10,  9, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtGingerKitsScript, EVENT_MOUNTAIN_KITS
	object_event 10, 4, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtGingerKitsScript2, EVENT_MOUNTAIN_KITS_2
	