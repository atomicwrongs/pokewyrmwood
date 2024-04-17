	object_const_def

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_PHONE
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

PhoneLeftScript:
	sjump PhoneMainScript
	
PhoneRightScript:
	sjump PhoneMainScript

PhoneMainScript:
	setmapscene NEW_BARK_TOWN, SCENE_LITTLESAGE_BIRTHDAY
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext PhoneRangScript
	promptbutton
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	clearevent PhoneMainScript
	closetext
	opentext
	writetext PocketedPhoneText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	closetext
	sjump .FinishPhone


.FinishPhone:
	closetext
	end

PokegearName:
	db "#GEAR@"

PlayersHouse1FTVScript:
	giveitem RARE_CANDY, 99
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	giveitem MASTER_BALL, 99
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText
	
PlayersHouse1FBookcaseScript:
	jumptext PlayersHouse1FBookcaseText

PhoneRangScript:
	text "Your #GEAR"
	line "buzzed. It's a"
	cont "text from NIA."

	para "'Hi <PLAYER>!!"
	line "Lee and I got"
	cont "you something."

	para "'We're right"
	line "outside, xx'"
	done

PocketedPhoneText:
	text "<PLAYER> pocketed"
	line "the #GEAR."

	para "Oh, wait, the"
	line "day of the week"
	cont "isn't set."
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time?"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."
	done

GetStarterText:
	text "One more thing!"
	line "Here's your first"
	cont "#MON!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

PlayersHouse1FStoveText:
	text "There's still pasta"
	line "sauce stained onto"
	cont "the oven top."

	para "It seems..."
	line "insignificant now."
	done

PlayersHouse1FSinkText:
	text "Clean dishes, a"
	line "single jam-wet"
	cont "knife, and suds"
	cont "of green apple"
	cont "dish soap."
	done

PlayersHouse1FFridgeText:
	text "Empty and full."

	para "Who's going to"
	line "finish these left-"
	cont "-overs?"
	done

PlayersHouse1FTVText:
	text "The TV station"
	line "gave up on"
	cont "covering news"
	cont "about the comet."

	para "Now it's just"
	line "old sitcom re-runs"
	cont "and historical"
	cont "events."
	done

PlayersHouse1FBookcaseText:
	text "Textbooks and"
	line "old comics."
	
	para "Oh, and some"
	line "DVDs you swore"
	cont "you'd watch."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, NEW_BARK_TOWN, 1
	warp_event  7,  7, NEW_BARK_TOWN, 1
	warp_event  7,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  8,  4, SCENE_PLAYERSHOUSE1F_PHONE, PhoneLeftScript
	coord_event  9,  4, SCENE_PLAYERSHOUSE1F_PHONE, PhoneRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  9,  1, BGEVENT_READ, PlayersHouse1FBookcaseScript

	def_object_events
