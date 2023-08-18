	object_const_def
	const CHALLENGE_BOY
	const PRANKSTER_GIRL

Route101_MapScripts:
	def_scene_scripts

	def_callbacks

Route101ChallengeBoy:
	jumptextfaceplayer ChallengeBoyText
	
ChallengeBoyText:
	text "I'm trying to"
	line "complete a"
	cont "challenge run."
	
	para "It's where you"
	line "impose rules"
	cont "on yourself"
	cont "to make things"
	cont "more fun!"
	
	para "Use only one"
	line "type of #MON,"
	cont "or only traded"
	cont "#MON, or"
	cont "only one #-"
	cont "MON at all..."
	
	para "I'll beat all"
	line "the trainers in"
	cont "NOMAIA using"
	cont "only POOCHYENA!"
	done

GirlPrankScript1:
	checkevent EVENT_ROUTE101_PRANKGIRL
	iffalse .SkipGirl
	showemote EMOTE_SHOCK, PRANKSTER_GIRL, 15
	opentext
	writetext PranksterGirlText
	promptbutton
	closetext
	clearevent EVENT_ROUTE101_PRANKGIRL
	end
	
.SkipGirl
	end
	
PranksterGirlText:
	text "Our eyes met!"
	line "Time to battle!"
	
	para "...Just kidding."
	line "But most trainers"
	cont "will want a"
	cont "#MON battle"
	cont "if you cross"
	cont "their line of"
	cont "sight."
	
	para "Now you know!"
	done
	
Route101PrankGirl:
	jumptextfaceplayer PranksterGirlText2
	
PranksterGirlText2:
	text "#MON trainers"
	line "like to battle"
	cont "to get stronger."
	
	para "If your #MON"
	line "grow enough,"
	cont "something cool"
	cont "will happen!"
	done

Route101Ball1:
	itemball LUCKY_EGG

Route101Ball2:
	itemball MAX_REVIVE

Route101Ball3:
	itemball POTION

Route101_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 7, 17, -1, GirlPrankScript1

	def_bg_events

	def_object_events
	object_event 11, 9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route101ChallengeBoy, -1
	object_event 6, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route101PrankGirl, -1
	object_event 4, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route101Ball1, EVENT_101_LUCKYEGG
	object_event 3, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route101Ball2, EVENT_101_MAXREVIVE
	object_event 2, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route101Ball3, EVENT_101_POTION