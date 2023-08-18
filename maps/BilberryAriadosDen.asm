	object_const_def
	const ARIADOS_HORDE_1
	const ARIADOS_HORDE_2
	const ARIADOS_HORDE_3
	const ARIADOS_HORDE_4
	const ARIADOS_HORDE_5
	const SHINY_ARIADOS
	const SCARED_GUY
	
BilberryAriadosDen_MapScripts:
	def_scene_scripts
	scene_script BilberryAriadosDenNoop1Scene, SCENE_BILBERRY_ARIADOS_DEN_SPIDERMAN
	scene_script BilberryAriadosDenNoop2Scene, SCENE_BILBERRY_ARIADOS_DEN_NOOP
	
	def_callbacks

BilberryAriadosDenNoop1Scene:
	end

BilberryAriadosDenNoop2Scene:
	end
	
BilberryHorde1:
	trainer HORDE, ARIADOS_HORDE, EVENT_BEAT_ARIADOS_SWARM_1, AriadosSeenText, AriadosBeatenText, 0, .Script

.Script
	disappear ARIADOS_HORDE_1
	end

BilberryHorde2:
	trainer HORDE, ARIADOS_HORDE, EVENT_BEAT_ARIADOS_SWARM_2, AriadosSeenText, AriadosBeatenText, 0, .Script

.Script
	disappear ARIADOS_HORDE_2
	end

BilberryHorde3:
	trainer HORDE, ARIADOS_HORDE, EVENT_BEAT_ARIADOS_SWARM_3, AriadosSeenText, AriadosBeatenText, 0, .Script

.Script
	disappear ARIADOS_HORDE_3
	end

BilberryHorde4:
	trainer HORDE, ARIADOS_HORDE, EVENT_BEAT_ARIADOS_SWARM_4, AriadosSeenText, AriadosBeatenText, 0, .Script

.Script
	disappear ARIADOS_HORDE_4
	end

BilberryHorde5:
	trainer HORDE, ARIADOS_HORDE, EVENT_BEAT_ARIADOS_SWARM_5, AriadosSeenText, AriadosBeatenText, 0, .Script

.Script
	disappear ARIADOS_HORDE_5
	end

AriadosBeatenText:
	text "HISSSS!"
	done

AriadosSeenText:
	text "Rustle, rustle..."
	line "SCREEECH!"
	done

ShinyAriadosScript:
	opentext
	writetext ShinyAriadosCryText
	pause 15
	cry ARIADOS
	closetext
	loadwildmon ARIADOS, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	disappear SHINY_ARIADOS
	setevent EVENT_BILBERRY_SHINY_ARIADOS
	reloadmapafterbattle
	giveitem ENERGYPOWDER, 3
	giveitem REVIVAL_HERB, 2
	pause 15
	opentext
	writetext FoundHerbsText
	promptbutton
	closetext
	end

FoundHerbsText:
	text "The blue ARIADOS"
	line "retreated."
	
	para "You found some"
	line "rare herbs!"
	done
	
ShinyAriadosCryText:
	text "RHIIAAAA!!!"
	done

ScaredGuyScript2:
	showemote EMOTE_SHOCK, SCARED_GUY, 15
	opentext
	writetext ScaredGuySpiderText
	promptbutton
	closetext
	setscene SCENE_BILBERRY_ARIADOS_DEN_NOOP
	end

.SkipGuy
	end

ScaredGuyScript:
	special HealParty
	opentext
	writetext HealGuyText
	promptbutton
	closetext
	end

ScaredGuySpiderText:
	text "SPIDER!!!"
	
	para "... Oh, it's"
	line "just you..."
	
	para "The area ahead"
	line "is crawling with"
	cont "ARIADOS."
	
	para "I mean, I bet"
	line "there's some good"
	cont "loot, but they're"
	cont "strong."
	done

HealGuyText:
	text "<PLAYER>, hey."
	line "I've got some"
	cont "spare POTIONS."
	
	para "Let me heal your"
	line "#MON."
	done

BilberryTree1:
	fruittree FRUITTREE_BILBERRY_1

BilberryTree2:
	fruittree FRUITTREE_BILBERRY_2

BilberryTree3:
	fruittree FRUITTREE_BILBERRY_3

AriadosBall1:
	itemball NUGGET

AriadosBall2:
	itemball TM_TOXIC

AriadosBall3:
	itemball MAX_ELIXER

AriadosBall4:
	itemball SILVERPOWDER

AriadosBall5:
	itemball X_ATTACK

BilberryAriadosDen_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 20, 2, BILBERRY_WOODS, 6
	warp_event 21, 2, BILBERRY_WOODS, 7

	def_coord_events
	coord_event 23, 10, SCENE_BILBERRY_ARIADOS_DEN_SPIDERMAN, ScaredGuyScript2
	
	def_bg_events
	
	def_object_events
	object_event 18, 19, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 5, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, BilberryHorde1, -1
	object_event 11, 26, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 5, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, BilberryHorde2, -1
	object_event 18, 28, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, BilberryHorde3, -1
	object_event 26, 26, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, BilberryHorde4, -1
	object_event 17, 23, SPRITE_FAIRY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, BilberryHorde5, -1
	object_event 34, 29, SPRITE_FAIRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShinyAriadosScript, EVENT_BILBERRY_SHINY_ARIADOS
	object_event 22, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScaredGuyScript, -1
	object_event 21, 31, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BilberryTree1, -1
	object_event 27, 18, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BilberryTree2, -1
	object_event 5, 30, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BilberryTree3, -1
	object_event 7, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AriadosBall1, EVENT_BILBERRY_CASH
	object_event  8, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, AriadosBall2, EVENT_BILBERRY_TM
	object_event 5, 5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AriadosBall3, EVENT_BILBERRY_TALIS
	object_event 20, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AriadosBall4, EVENT_BILBERRY_POWDER
	object_event 32, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AriadosBall5, EVENT_BILBERRY_XATTA
