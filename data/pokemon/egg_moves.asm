SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

YesEggMoves:
	db THUNDERBOLT
	db PIXIE_PUNCH
	db LOVE_ARROW
	db ICE_PUNCH
	db FIRE_PUNCH
	db CHARM
	db PAY_DAY
	db DRAGONBREATH
	db WINGBEAT
	db ACCELEROCK
	db METEOR_MASH
	db X_SCISSOR
	db POWERPUNCH
	db METRONOME
	db DRAGON_CLAW
	db SHADOW_CLAW
	db SHADOW_SNEAK
	db BONEMERANG
	db SUBSTITUTE
	db PERISH_SONG
	db EXTREMESPEED
	db -1 ; end

NoEggMoves:
	db -1 ; end
