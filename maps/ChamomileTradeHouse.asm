	object_const_def

ChamomileTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

TradeExplainerScript:
	faceplayer
	opentext
	writetext TradeGreetingText
	yesorno
	iffalse .NoTrade
	sjump .Yestrade

.NoTrade:
	writetext NoTradeText
	waitbutton
	closetext
	end

.Yestrade:
	writetext YesTradeText
	waitbutton
	closetext
	end

TradeGreetingText:
	text "Welcome to the"
	line "TRADE HOUSE!"
	
	para "Do you want me"
	line "to explain how"
	cont "trading works?"
	done

NoTradeText:
	text "Ah, an expert"
	line "already, I see!"
	done

YesTradeText:
	text "When you trade, you"
	line "and another trainer"
	cont "swap #MON."
	
	para "You have a new"
	line "companion, and"
	cont "your old #MON"
	cont "goes to a better"
	cont "home."
	
	para "It's a good way"
	line "to fill out your"
	cont "#DEX."
	
	para "Oh, and traded"
	line "#MON level up"
	cont "faster than other"
	cont "#MON, but they"
	cont "might disobey you"
	cont "if you're not"
	cont "skilled enough."
	
	para "Go ahead and try"
	line "it out!"
	done

TradeHouseChrisScript:
	faceplayer
	opentext
	trade NPC_TRADE_CHRIS
	waitbutton
	closetext
	end

TradeHouseSadakoScript:
	faceplayer
	opentext
	trade NPC_TRADE_SADAKO
	waitbutton
	closetext
	end

TradeHouseJeanlucScript:
	faceplayer
	opentext
	trade NPC_TRADE_JEANLUC
	waitbutton
	closetext
	end

TradeHouseFranScript:
	faceplayer
	opentext
	trade NPC_TRADE_FRAN
	waitbutton
	closetext
	end

TradeHouseChesterScript:
	faceplayer
	opentext
	trade NPC_TRADE_CHESTER
	waitbutton
	closetext
	end

TradeHousePepperScript:
	faceplayer
	opentext
	trade NPC_TRADE_PEPPER
	waitbutton
	closetext
	end

TradeHouseGentlemanScript:
	jumptextfaceplayer TradeHouseGentlemanText

TradeHouseGentlemanText:
	text "Woah! I traded"
	line "my BUNEARY for an"
	cont "EEVEE."
	
	para "It grew quite"
	line "quickly, and now"
	cont "it's being cheeky!"
	done

ChamomileTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8, 15, CHAMOMILE_CITY, 8
	warp_event 9, 15, CHAMOMILE_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event 9, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TradeExplainerScript, -1
	object_event 6, 8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeHouseChrisScript, -1
	object_event 11, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeHouseSadakoScript, -1
	object_event 2, 4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TradeHouseJeanlucScript, -1
	object_event 2, 6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TradeHouseGentlemanScript, -1
	object_event 5, 6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeHouseFranScript, -1
	object_event 2, 12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TradeHouseChesterScript, -1
	object_event 14, 12, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradeHousePepperScript, -1