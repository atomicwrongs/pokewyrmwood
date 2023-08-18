	object_const_def

TarragonTownPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks
	
TarragonPokecenterNPCScript:
	checkevent EVENT_TARRAGONPOKECENTER_POTION
	iftrue .TookPotion
	faceplayer
	opentext
	writetext TarragonPokecenter_NoPotion
	promptbutton
	giveitem SUPER_POTION
	playsound SFX_ITEM
	setevent EVENT_TARRAGONPOKECENTER_POTION
	writetext GotPotionText
	promptbutton
	writetext TarragonPokecenter_YesPotion
	waitbutton
	closetext
	end
	
.TookPotion
	jumptextfaceplayer TarragonPokecenter_YesPotion
	end
	
TarragonPokecenter_NoPotion:
	text "Oh, hey."
	line "This #MON"
	cont "center has been"
	cont "kinda abandoned."
	
	para "The machines all"
	line "work, though."
	cont "Oh, and take"
	cont "this."
	done

TarragonPokecenter_YesPotion:
	text "Take care, pal."
	done
	
GotPotionText:
	text "<PLAYER> put the"
	line "SUPER POTION in"
	cont "the bag."
	done
	
TarragonPokecenterHealingScript:
	opentext
	writetext TarragonHealText
	special HealParty
	setval HEALMACHINE_POKECENTER
	pause 30
	writetext TarragonHealingDoneText
	promptbutton
	closetext
	end
	
TarragonHealText:
	text "There's no nurse,"
	line "but you can reach"
	cont "the machine."
	done
	
TarragonHealingDoneText:
	text "Your party was"
	line "healed."
	done

TarragonTownPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 7, TARRAGON_TOWN, 3
	warp_event 6, 7, TARRAGON_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event 2, 2, BGEVENT_READ, TarragonPokecenterHealingScript
	bg_event 3, 2, BGEVENT_READ, TarragonPokecenterHealingScript
	bg_event 4, 2, BGEVENT_READ, TarragonPokecenterHealingScript
	bg_event 5, 2, BGEVENT_READ, TarragonPokecenterHealingScript


	def_object_events
	object_event 1, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TarragonPokecenterNPCScript, -1