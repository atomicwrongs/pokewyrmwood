	db GIGATUMBLE ; 144

	db  110, 110, 110, 70, 90, 120
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 3 ; catch rate
	db 215 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/articuno/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, PROTECT, REST, STEEL_WING, FLY, ICE_BEAM
	; end
