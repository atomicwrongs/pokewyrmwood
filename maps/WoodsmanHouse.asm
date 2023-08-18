	object_const_def

WoodsmanHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SwoobyTalkScript:
	jumptext SwoobyTalkText
	
SwoobyTalkText:
	text "WOOBAT: Chrrp?"
	done
	
WoodsmanTalkScript:
	checkevent EVENT_WOODSMAN_GOTAXE
	iftrue .TookAxe
	faceplayer
	opentext
	writetext WoodsmanGivesAxeText
	promptbutton
	giveitem LUMBER_AXE
	playsound SFX_ITEM
	setevent EVENT_WOODSMAN_GOTAXE
	writetext GotAxeText
	promptbutton
	writetext WoodsmanByeText
	waitbutton
	closetext
	end
	
.TookAxe:
	jumptextfaceplayer WoodsmanCheckupText
	end
	
WoodsmanCheckupText:
	text "Aye, <PLAYER>."
	line "How's that AXE?"
	
	para "Be careful not"
	line "to chop yer foot"
	cont "off, now."
	
	para "And don't go"
	line "wanderin' into"
	cont "ARIADOS territory."
	
	para "And never run"
	line "with - hey, don't"
	cont "roll yer eyes at"
	cont "me!"
	done
	
WoodsmanGivesAxeText:
	text "Not often we get"
	line "visitors out here."
	
	para "I'm the WOODS-"
	line "MAN. I tend to"
	cont "the forest."
	
	para "If yer having"
	line "trouble gettin'"
	cont "around, then"
	cont "take this."
	done
	
WoodsmanByeText:
	text "That LUMBER AXE"
	line "will let ye"
	cont "chop down small"
	cont "trees."
	
	para "Be careful,"
	line "now. CHAMOMILE"
	cont "CITY ain't far."
	cont "Rest up once"
	cont "ye get there,"
	cont "alright?"
	done
	
GotAxeText:
	text "You received"
	line "the LUMBER AXE!"
	done
	

WoodsmanHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 9, BILBERRY_WOODS, 5
	warp_event 4, 9, BILBERRY_WOODS, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 5, 4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WoodsmanTalkScript, -1
	object_event 1, 6, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SwoobyTalkScript, -1