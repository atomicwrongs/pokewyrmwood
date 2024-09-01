	object_const_def

JacarandaPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks
	
JacNurseScript:
	jumpstd PokecenterNurseScript

JacSadBoy:
	checkevent EVENT_JAC_SADBOY
	iftrue .SadBoyDone
	faceplayer
	opentext
	writetext JacSadBoyText
	yesorno
	iftrue .SadBoyGiveMon
	writetext SadBoyRejectionText
	promptbutton
	closetext
	end

.SadBoyDone:
	jumptextfaceplayer SadBoyHappyText

.SadBoyGiveMon:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	random 5
	ifequal 0, .GiveElectrike
	ifequal 1, .GiveSneasel
	ifequal 2, .GiveTogepi
	ifequal 3, .GiveVolcanny
	ifequal 4, .GiveAxew

.GiveElectrike:
	writetext GotElectrikeText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke ELECTRIKE, 15
	setevent EVENT_JAC_SADBOY
	writetext GotPokeFromSadboyText
	waitbutton
	closetext
	end

.GiveSneasel:
	writetext GotSneaselText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke SNEASEL, 15
	setevent EVENT_JAC_SADBOY
	writetext GotPokeFromSadboyText
	waitbutton
	closetext
	end

.GiveTogepi:
	writetext GotTogepiText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOGEPI, 15
	setevent EVENT_JAC_SADBOY
	writetext GotPokeFromSadboyText
	waitbutton
	closetext
	end

.GiveVolcanny:
	writetext GotVolcannyText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke VOLCANNY, 15
	setevent EVENT_JAC_SADBOY
	writetext GotPokeFromSadboyText
	waitbutton
	closetext
	end

.GiveAxew:
	writetext GotAxewText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AXEW, 15
	setevent EVENT_JAC_SADBOY
	writetext GotPokeFromSadboyText
	waitbutton
	closetext
	end
	
.PartyFull:
	writetext JacPartyFullText
	waitbutton
	closetext
	end

JacSadBoyText:
	text "Sniffle... my dad"
	line "got me a #MON"
	cont "but I don't think"
	cont "it likes me..."
	
	para "It doesn't have"
	line "much time."
	
	para "I want it to have"
	line "the best life..."
	
	para "Um - if you're a"
	line "trainer, could"
	cont "you take it...?"
	done

SadBoyRejectionText:
	text "O-oh. That's..."
	line "too bad..."
	done

JacPartyFullText:
	text "Your party is"
	line "full..."
	
	para "You can use, um,"
	line "the PC over there"
	cont "if you like."
	done

GotAxewText:
	text "<PLAYER> recieved"
	line "the AXEW!"
	done

GotElectrikeText:
	text "<PLAYER> recieved"
	line "the ELECTRIKE!"
	done

GotPokeFromSadboyText:
	text "Take it on lots"
	line "of adventures,"
	cont "okay?"
	done
	
SadBoyHappyText:
	text "Hi, <PLAYER>!"
	line "I hope that #-"
	cont "MON is having fun."
	done

GotSneaselText:
	text "<PLAYER> recieved"
	line "the SNEASEL!"
	done

GotTogepiText:
	text "<PLAYER> recieved"
	line "the TOGEPI!"
	done


GotVolcannyText:
	text "<PLAYER> recieved"
	line "the VOLCANNY!"
	done


JacarandaPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 5, JACARANDA_TOWN, 1
	warp_event 6, 5, JACARANDA_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacNurseScript, -1
	object_event 0, 4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JacSadBoy, -1