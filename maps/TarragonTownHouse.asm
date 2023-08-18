	object_const_def
	const TARRAGON_SNUBBULL
	const TARRAGON_HOUSE_BALL

TarragonTownHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
TarragonHouseBallScript:
	itemball GREAT_BALL
	
TarragonSnubScript:
	opentext
	writetext SnubText1
	yesorno
	iffalse .SnubbedSnubbull
	sjump .TookSnubbull
	
.SnubbedSnubbull:
	writetext ByeSnubbullText
	closetext
	end
	
.TookSnubbull:
	givepoke SNUBBULL, 5, PINK_BOW
	playsound SFX_ITEM
	disappear TARRAGON_SNUBBULL
	setevent EVENT_TARRAGON_SNUBBULL
	writetext TookSnubbullText
	promptbutton
	closetext
	end
	
SnubText1:
	text "It's a #MON."
	line "Poor thing, it's"
	cont "all alone..."
	
	para "Take SNUBBULL"
	line "with you?"
	done
	
ByeSnubbullText:
	text "You decided not"
	line "to take SNUBBULL"
	cont "with you."
	done
	
TookSnubbullText:
	text "SNUBBULL eagerly"
	line "licked your face!"
	done

TarragonTownHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 7, TARRAGON_TOWN, 2
	warp_event 6, 7, TARRAGON_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 9, 2, SPRITE_MONSTER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TarragonSnubScript, EVENT_TARRAGON_SNUBBULL
	object_event  4, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TarragonHouseBallScript, EVENT_TARRAGON_GREATBALL