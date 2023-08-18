	object_const_def

TarragonTown_MapScripts:
	def_scene_scripts

	def_callbacks
	
TarragonTownSign:
	jumptext TarragonTownSignText
	
TarragonTownSignText:
	text "TARRAGON TOWN"
	line "Study surrounded"
	cont "by nature."
	done
	
TarragonStatsScript:
	faceplayer
	opentext
	writetext TalkAboutStatsText
	yesorno
	iffalse .NoStats
	sjump .YesStats
	
.NoStats:
	writetext NoStatsText
	waitbutton
	closetext
	end
	
.YesStats:
	writetext YesStatsText
	waitbutton
	closetext
	end
	
TalkAboutStatsText:
	text "You're a new"
	line "trainer, huh?"
	
	para "Do you wanna"
	line "hear about your"
	cont "#MON's stats?"
	done
	
NoStatsText:
	text "Fair enough."
	line "Good luck!"
	done
	
YesStatsText:
	text "Well, first, you"
	line "have STRENGTH."
	cont "This is your"
	cont "#MON's phys-"
	cont "ical power."
	
	para "It'll cover"
	line "their ability to"
	cont "kick, punch or"
	cont "grapple."
	
	para "DEFENSE lets"
	line "them endure those"
	cont "attacks through"
	cont "blocking or"
	cont "natural armour."
	
	para "INTELLIGENCE is"
	line "their mental or"
	cont "magical talent."
	
	para "Channeling their"
	line "INTELLIGENCE"
	cont "allows the #-"
	cont "MON to cast"
	cont "special attacks,"
	cont "like beams or"
	cont "psychic bursts."
	
	para "WILLPOWER helps"
	line "them withstand"
	cont "these special"
	cont "attacks using"
	cont "their force of"
	cont "will."
	
	para "HIT POINTS, or"
	line "HP, marks how"
	cont "much damage"
	cont "your #MON can"
	cont "take before"
	cont "they faint."
	
	para "And finally,"
	line "SPEED determines"
	cont "who attacks"
	cont "first in battle!"
	
	para "Now you know!"
	line "Good luck!"
	done
	
TarragonBallGirlScript:
	checkevent EVENT_TARRAGON_POKEBALL
	iftrue .TookPokeball
	faceplayer
	opentext
	writetext TarragonPokeballText
	promptbutton
	giveitem POKE_BALL, 10
	playsound SFX_ITEM
	setevent EVENT_TARRAGON_POKEBALL
	writetext GotPokeballText
	promptbutton
	writetext Tarragon_YesBall
	waitbutton
	closetext
	end
	
.TookPokeball
	jumptextfaceplayer Tarragon_YesBall
	end
	
TarragonPokeballText:
	text "Oh... you're off"
	line "on your #-"
	cont "MON adventure?"
	
	para "Don't you think"
	line "it's..."
	
	para "No, nevermind."
	line "Here, take these."
	done
	
GotPokeballText:
	text "<PLAYER> put"
	line "the #BALLS"
	cont "in the BAG."
	done

Tarragon_YesBall:
	text "To catch a #-"
	line "MON, lower its"
	cont "HIT POINTS and"
	cont "throw a #BALL."
	
	para "Some #MON"
	line "are tougher than"
	cont "others to catch."
	
	para "Go catch 'em"
	line "all, okay?"
	done

TarragonTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 5, TARRAGON_TOWN_POKEMART, 1
	warp_event 7, 11, TARRAGON_TOWN_HOUSE, 1
	warp_event 15, 9, TARRAGON_TOWN_POKECENTER, 1

	def_coord_events

	def_bg_events
	bg_event 14,  2, BGEVENT_READ, TarragonTownSign

	def_object_events
	object_event 11, 5, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TarragonStatsScript, -1
	object_event 4, 7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TarragonBallGirlScript, -1
