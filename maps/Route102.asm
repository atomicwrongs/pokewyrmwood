	object_const_def
	
Route102_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route102SignScript:
	jumptext Route102SignText
	
Route102SignText:
	text "BILBERRY"
	line "WOODS ahead."
	
	para "South to CHAMO-"
	line "MILE CITY."
	done
	
Route102KidScript:
	jumptextfaceplayer Route102KidText
	
Route102KidText:
	text "Some trainers"
	line "take on the GYM"
	cont "challenge, and"
	cont "try to beat all"
	cont "8 NOMAIA GYM"
	cont "LEADERS."
	
	para "If you succeed,"
	line "you can apply to"
	cont "take on the"
	cont "#MON WORLD"
	cont "CHAMPIONSHIP."
	
	para "Others try to"
	line "complete the"
	cont "NOMAIA #-"
	cont "DEX, so they"
	cont "qualify to"
	cont "become #MON"
	cont "professors."
	
	para "Which one are"
	line "you?"
	done
	
Route102OldmanScript:
	checkevent EVENT_ROUTE102_OLD_MAN
	iffalse .NoOldMan
	sjump OldManAdvice
	
.NoOldMan
	faceplayer
	opentext
	writetext OldManText
	promptbutton
	closetext
	setevent EVENT_ROUTE102_OLD_MAN
	end
	
OldManText:
	text "Oh, you have a"
	line "#DEX?"
	
	para "How fun! If"
	line "you want advice"
	cont "on completing"
	cont "the NOMAIA #-"
	cont "DEX, just ask!"
	
	para "I'll share some"
	line "of my knowledge,"
	cont "ohoho!"
	done

OldManAdvice:
	random 9
	ifequal 0, .Advice0
	ifequal 1, .Advice1
	ifequal 2, .Advice2
	ifequal 3, .Advice3
	ifequal 4, .Advice4
	ifequal 5, .Advice5
	ifequal 6, .Advice6
	ifequal 7, .Advice7
	ifequal 8, .Advice8

.Advice0:
	jumptextfaceplayer StatusEffectText
	
.Advice1:
	jumptextfaceplayer TimeofDayText
	
.Advice2:
	jumptextfaceplayer TradehouseText

.Advice3:
	jumptextfaceplayer GossipText

.Advice4:
	jumptextfaceplayer BranchEvoText

.Advice5:
	jumptextfaceplayer HiddenSpotsText

.Advice6:
	jumptextfaceplayer StrayMonsText

.Advice7:
	jumptextfaceplayer DaycareText

.Advice8:
	jumptextfaceplayer FishingRodText
	
StatusEffectText:
	text "If you're having"
	line "trouble catching"
	cont "a stubborn #-"
	cont "MON, try inflict-"
	cont "ing it with a"
	cont "STATUS CONDITION."
	
	para "A #MON that is"
	line "PARALYSED or"
	cont "ASLEEP will be"
	cont "easier to catch!"
	done

TimeofDayText:
	text "Some #MON"
	line "only appear at"
	cont "certain times of"
	cont "day, or are"
	cont "more common at"
	cont "those times."
	
	para "Try hunting for"
	line "rare #MON in"
	cont "the morning, or"
	cont "at night-time!"
	
	para "Ooh, but don't"
	line "stay out too"
	cont "late, ohoho."
	done

TradehouseText:
	text "There's a TRADING"
	line "HOUSE in CHAMO-"
	cont "MILE CITY."
	
	para "Lots of trainers"
	line "gather there to"
	cont "trade #MON."
	
	para "You might find"
	line "someone offering"
	cont "a #MON you"
	cont "don't have yet."
	done
	
GossipText:
	text "Be sure to talk"
	line "to lots of"
	cont "people."
	
	para "Not only will"
	line "you make them"
	cont "happy, but they"
	cont "might have"
	cont "gossip on rare"
	cont "#MON, ohoho!"
	done

BranchEvoText:
	text "The #MON"
	line "EEVEE and THREADLY"
	cont "can evolve into"
	cont "different #MON"
	cont "through different"
	cont "methods."
	
	para "If you encounter"
	line "them, catch more"
	cont "than one!"
	done

HiddenSpotsText:
	text "Keep your eyes"
	line "peeled for odd"
	cont "spots in your"
	cont "surroundings."
	
	para "Weird bushes,"
	line "gaps in trees,"
	cont "rustling trash"
	cont "cans..."
	
	para "Some #MON"
	line "hide in the"
	cont "strangest of"
	cont "places!"
	done

StrayMonsText:
	text "It's sad, but"
	line "a lot of people"
	cont "have released"
	cont "their #MON"
	cont "recently."
	
	para "If you see"
	line "a stray #MON"
	cont "in the city,"
	cont "extend a hand"
	cont "for it to sniff."
	
	para "If it's friendly,"
	line "it'll likely"
	cont "join your team."
	done

DaycareText:
	text "In CAMPHOR CAPE,"
	line "there's a #-"
	cont "MON DAYCARE."
	
	para "If you leave"
	line "two #MON of"
	cont "the same species"
	cont "or egg group"
	cont "there, they'll"
	cont "make an egg."
	
	para "The egg will"
	line "contain a baby"
	cont "#MON that is"
	cont "the first stage"
	cont "of its evo-"
	cont "lutionary line."
	
	para "So, if two"
	line "BUTTERFREE made"
	cont "an egg, it'd"
	cont "hatch into a"
	cont "CATERPIE!"
	done

FishingRodText:
	text "If you talk to"
	line "the PARK WARDEN"
	cont "in CHAMOMILE"
	cont "PARK, he'll"
	cont "give you a"
	cont "fishing rod."
	
	para "You can use it"
	line "to catch even"
	cont "more #MON!"
	done

Route102_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 11,  7, BILBERRY_WOODS, 1
	warp_event 12,  7, BILBERRY_WOODS, 1
	warp_event 8, 12, BILBERRY_WOODS, 4
	warp_event 8, 13, BILBERRY_WOODS, 4
	warp_event 17, 33, CHAMOMILE_CITY, 1
	warp_event 18, 33, CHAMOMILE_CITY, 1

	def_coord_events
	
	def_bg_events
	bg_event 17, 3, BGEVENT_READ, Route102SignScript
	
	def_object_events
	object_event 21, 6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 4, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route102KidScript, -1
	object_event 18, 17, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route102OldmanScript, -1