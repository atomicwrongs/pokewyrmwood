	db SANDEON ; 227

	db  110, 95, 65, 130, 60, 65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 25 ; catch rate
	db 168 ; base exp
	db SOFT_SAND, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, SWIFT, PROTECT, REST, ATTRACT, THIEF, STEEL_WING, CUT, FLY
	; end
