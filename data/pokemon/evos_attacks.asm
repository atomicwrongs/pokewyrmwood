
SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

EvosAttacks::
;	db
PrimarinaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SURF
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 1, FAIRY_WIND
	db 15, ICY_WIND
	db 20, HYPNOSIS
	db 25, BUBBLEBEAM
	db 30, ENCORE
	db 37, SEA_BLADE
	db 46, ICE_BEAM
	db 51, MOONBLAST
	db 58, HYDRO_PUMP
	db 65, PERISH_SONG
	db 0 ; no more level-up moves

JangmoOEvosAttacks:
	db EVOLVE_LEVEL, 35, HAKAMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, PROTECT
	db 8, DRAGON_RAGE
	db 12, SCARY_FACE
	db 16, HEADBUTT
	db 20, SHARPEN
	db 24, SCREECH
	db 28, BARRIER
	db 32, DRAGON_CLAW
	db 36, ROAR
	db 40, DRAGON_PULSE
	db 44, OUTRAGE
	db 0 ; no more level-up moves

HakamoOEvosAttacks:
	db EVOLVE_LEVEL, 45, KOMMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, PROTECT
	db 1, DRAGON_RAGE
	db 12, SCARY_FACE
	db 16, HEADBUTT
	db 20, SHARPEN
	db 24, SCREECH
	db 28, BARRIER
	db 32, DRAGON_CLAW
	db 44, DRAGON_PULSE
	db 50, OUTRAGE
	db 56, DYNAMICPUNCH
	db 0 ; no more level-up moves

KommoOEvosAttacks:
	db 0 ; no more evolutions
	db 1, BELLY_DRUM
	db 1, SHARPEN
	db 1, TACKLE
	db 1, LEER
	db 1, PROTECT
	db 1, IRON_TAIL
	db 12, SCARY_FACE
	db 16, HEADBUTT
	db 20, SHARPEN
	db 24, SCREECH
	db 28, BARRIER
	db 32, DRAGON_CLAW
	db 38, ROAR
	db 44, DRAGON_RAGE
	db 48, METAL_CLAW
	db 52, OUTRAGE
	db 57, IRON_TAIL
	db 60, DYNAMICPUNCH
	db 64, ARMOUR_BREAK
	db 68, WYVERN_BEAM
	db 0 ; no more level-up moves

GibleEvosAttacks:
	db EVOLVE_LEVEL, 24, GABITE
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 6, SMOKESCREEN
	db 12, DRAGONBREATH
	db 18, BONEMERANG
	db 25, BITE
	db 30, SLASH
	db 36, DRAGON_CLAW
	db 42, DIG
	db 48, SANDSTORM
	db 54, TAKE_DOWN
	db 60, BONE_RUSH
	db 0 ; no more level-up moves

GabiteEvosAttacks:
	db EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 6, SMOKESCREEN
	db 12, DRAGONBREATH
	db 18, BONEMERANG
	db 25, BITE
	db 27, BONE_CLUB
	db 30, SLASH
	db 36, DRAGON_CLAW
	db 42, DIG
	db 48, SANDSTORM
	db 54, TAKE_DOWN
	db 52, BONEMERANG
	db 60, BONE_RUSH
	db 0 ; no more level-up moves

GarchompEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 6, SMOKESCREEN
	db 12, DRAGONBREATH
	db 18, BONEMERANG
	db 25, BITE
	db 27, BONE_CLUB
	db 30, SLASH
	db 36, DRAGON_CLAW
	db 42, DIG
	db 48, SANDSTORM
	db 50, EARTHQUAKE
	db 54, TAKE_DOWN
	db 52, OUTRAGE
	db 60, BONE_RUSH
	db 0 ; no more level-up moves

FumblilEvosAttacks:
	db EVOLVE_LEVEL, 26, TUMBLOT
	db 0 ; no more evolutions
	db 1, SKETCH
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, DOUBLESLAP
	db 17, HEADBUTT
	db 20, SCREECH
	db 25, SLAM
	db 28, REST
	db 28, SNORE
	db 33, MEDITATE
	db 35, FLAIL
	db 36, ROLLOUT
	db 41, SCARY_FACE
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 0 ; no more level-up moves

TumblotEvosAttacks:
	db EVOLVE_LEVEL, 52, GIGATUMBLE
	db 0 ; no more evolutions
	db 1, SKETCH
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, DOUBLESLAP
	db 17, HEADBUTT
	db 20, SCREECH
	db 25, SLAM
	db 27, TAKE_DOWN
	db 30, REST
	db 31, SNORE
	db 33, MEDITATE
	db 35, FLAIL
	db 36, ROLLOUT
	db 38, MIRROR_MOVE
	db 41, SCARY_FACE
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 51, LIGHT_SCREEN
	db 51, REFLECT
	db 53, HYPER_BEAM
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 7, DEFENSE_CURL
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 17, PSYSTRIKE
	db 18, CONFUSE_RAY
	db 23, WHIRLWIND
	db 28, GUST
	db 30, BUG_BUZZ
	db 34, PSYBEAM
	db 36, HIVE_MIND
	db 40, SAFEGUARD
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 18, MINERAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, DEFENSE_CURL
	db 8, ROLLOUT
	db 15, ROCK_THROW
	db 20, LOW_KICK
	db 27, MAGNITUDE
	db 32, BONEMERANG
	db 35, STONE_EDGE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 30, GEODENT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, DEFENSE_CURL
	db 8, ROLLOUT
	db 15, ROCK_THROW
	db 18, LOW_KICK
	db 21, ACCELEROCK
	db 26, MAGNITUDE
	db 31, BONEMERANG
	db 35, ROCK_SLIDE
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, GROWL
	db 15, ROCK_THROW
	db 20, ROCK_SLIDE
	db 25, ACCELEROCK
	db 30, MAGNITUDE
	db 35, STONE_EDGE
	db 38, SPIKES
	db 40, SANDSTORM
	db 45, BONE_RUSH
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

PoochyenaEvosAttacks:
	db EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 9, BITE
	db 15, QUICK_ATTACK
	db 21, LICK
	db 29, PURSUIT
	db 37, BEAT_UP
	db 47, CRUNCH
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db EVOLVE_LEVEL, 40, HARLYENA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, BITE
	db 5, SMOKESCREEN
	db 9, BITE
	db 15, QUICK_ATTACK
	db 23, LICK
	db 27, SWINDLE
	db 33, CRUNCH
	db 36, FAINT_ATTACK
	db 43, PURSUIT
	db 55, BEAT_UP
	db 0 ; no more level-up moves

HarlyenaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, BITE
	db 1, QUICK_ATTACK
	db 5, SMOKESCREEN
	db 9, RAGE
	db 15, SUPER_FANG
	db 23, PAIN_SPLIT
	db 33, PURSUIT
	db 42, PLAY_ROUGH
	db 46, CRUNCH
	db 50, SWEET_STRIKE
	db 55, NIGHT_SLASH
	db 61, BEAT_UP
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, DOUBLE_KICK
	db 20, CHARM
	db 24, AGILITY
	db 27, HEADBUTT
	db 34, SWIFT
	db 40, ICE_PUNCH
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 7, DOUBLESLAP
	db 13, CHARM
	db 20, AGILITY
	db 25, PIXIE_PUNCH
	db 28, HEADBUTT
	db 35, SWIFT
	db 38, PLAY_ROUGH
	db 40, DOUBLE_EDGE
	db 43, SLAM
	db 47, TRIPLE_KICK
	db 50, ICE_PUNCH
	db 0 ; no more level-up moves

CherubiEvosAttacks:
	db EVOLVE_LEVEL, 20, CHERRIM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWTH
	db 7, ABSORB
	db 13, LEECH_SEED
	db 25, RAZOR_LEAF
	db 31, MORNING_SUN
	db 37, PETAL_DANCE
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

CherrimEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWTH
	db 1, ABSORB
	db 1, LEECH_SEED
	db 1, SUNNY_DAY
	db 7, HYPNOSIS
	db 13, RAZOR_LEAF
	db 22, LEAF_BLADE
	db 26, MORNING_SUN
	db 32, FIRE_SPIN
	db 40, PYRO_BLADE
	db 47, SOLARBEAM
	db 52, FLAME_WHEEL
	db 58, PETAL_DANCE
	db 0 ; no more level-up moves

TrubbishEvosAttacks:
	db EVOLVE_LEVEL, 30, GARBODOR
	db 0 ; no more evolutions
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 18, SLUDGE_BOMB
	db 23, GLARE
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 9, POISON_STING
	db 15, BITE
	db 18, SLUDGE_BOMB
	db 25, GLARE
	db 33, SCREECH
	db 34, SLUDGE
	db 37, POISONPOWDER
	db 43, ACID
	db 47, ACID_ARMOR
	db 51, HAZE
	db 56, OOZE_STORM
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, GLARE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SMOKESCREEN
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 45, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SMOKESCREEN
	db 6, DEFENSE_CURL
	db 11, SMOKESCREEN
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, TAIL_WHIP
	db 36, BITE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 23, SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, GROWTH
	db 8, VINE_WHIP
	db 13, ABSORB
	db 17, LEECH_SEED
	db 20, BONE_CLUB
	db 25, DIG
	db 29, BONEMERANG
	db 32, SYNTHESIS
	db 36, MEGA_DRAIN
	db 40, LEAF_BLADE
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ABSORB
	db 4, GROWTH
	db 8, MEGA_DRAIN
	db 12, LEECH_SEED
	db 16, PIN_MISSILE
	db 18, MEGAHORN
	db 21, SWIFT
	db 25, SWEET_SCENT
	db 27, DIZZY_PUNCH
	db 32, SYNTHESIS
	db 35, GIGA_DRAIN
	db 39, PETAL_DANCE
	db 42, COTTON_SPORE
	db 44, SUNNY_DAY
	db 48, SOLARBEAM
	db 52, METRONOME
	db 60, BARRIER
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 4, FAIRY_WIND
	db 9, SWEET_STRIKE
	db 14, CUT
	db 19, CHARM
	db 24, VINE_WHIP
	db 27, MEGA_DRAIN
	db 30, PIXIE_PUNCH
	db 33, HYPNOSIS
	db 36, PLAY_ROUGH
	db 39, SLASH
	db 42, PETAL_DANCE
	db 45, MOONBLAST
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, HYPNOSIS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

NacliEvosAttacks:
	db EVOLVE_LEVEL, 24, NACLSTACK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 5, ROCK_THROW
	db 7, MUD_SLAP
	db 13, AGILITY
	db 16, HEADBUTT
	db 20, BARRIER
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0 ; no more level-up moves

NaclstackEvosAttacks:
	db EVOLVE_LEVEL, 42, GARGANACL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 5, ROCK_THROW
	db 7, MUD_SLAP
	db 13, AGILITY
	db 16, HEADBUTT
	db 20, BARRIER
	db 25, RECOVER
	db 30, ROCK_SLIDE
	db 33, SPIKES
	db 36, ARMOUR_BREAK
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

SqueakabooEvosAttacks:
	db EVOLVE_ITEM, EERIE_RAG, PEEKABOX
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, NIGHT_SHADE
	db 8, SHADOW_CLAW
	db 10, SHADOW_SNEAK
	db 13, MEAN_LOOK
	db 16, CURSE
	db 18, HYPNOSIS
	db 21, SWEET_STRIKE
	db 25, SWINDLE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 40, PHANTOMFORCE
	db 0 ; no more level-up moves

PeekaboxEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 10, SHADOW_SNEAK
	db 25, SWINDLE
	db 36, CUT
	db 28, CONFUSE_RAY
	db 30, SHADOW_CLAW
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 38, SHADOW_BALL
	db 40, MOONBLAST
	db 45, PHANTOMFORCE
	db 0 ; no more level-up moves

MomentairyEvosAttacks:
	db EVOLVE_LEVEL, 30, ETERNITAIR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SMOKESCREEN
	db 9, GUST
	db 13, STEEL_WING
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 26, FLASH_CANNON
	db 29, WING_ATTACK
	db 37, AGILITY
	db 47, MIRROR_MOVE
	db 0 ; no more level-up moves

ParasoulEvosAttacks:
	db EVOLVE_ITEM, EERIE_RAG, UMBRAELLA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, NIGHT_SHADE
	db 9, LEECH_LIFE
	db 10, HYPNOSIS
	db 12, CONFUSE_RAY
	db 15, SHADOW_SNEAK
	db 18, ABSORB
	db 22, DISABLE
	db 26, CONFUSION
	db 31, SLASH
	db 37, SHADOW_CLAW
	db 43, NIGHT_SLASH
	db 0 ; no more level-up moves

UmbraellaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, NIGHT_SHADE
	db 9, LEECH_LIFE
	db 22, DISABLE
	db 26, CONFUSION
	db 31, SLASH
	db 32, GIGA_DRAIN
	db 36, TERRIFY
	db 37, SHADOW_CLAW
	db 43, NIGHT_SLASH
	db 45, DREAM_EATER
	db 50, NIGHTMARE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, CONFUSE_RAY
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, HYPNOSIS
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, HYPNOSIS
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

WallopyEvosAttacks:
	db EVOLVE_LEVEL, 30, CAPOEIROO
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 15, ROLLING_KICK
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, POWERPUNCH
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

CapoeirooEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 16, ROLLING_KICK
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 28, DOUBLE_KICK
	db 31, VITAL_THROW
	db 33, TRIPLE_KICK
	db 37, POWERPUNCH
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

ThreadlyEvosAttacks:
	db EVOLVE_ITEM, EERIE_RAG, CIRCUSHEET
	db EVOLVE_HAPPINESS, TR_NITE, DREADBARE
	db EVOLVE_HAPPINESS, TR_MORNDAY, THREDLESS
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PURSUIT
	db 5, SMOG
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 26, FAINT_ATTACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, NIGHT_SLASH
	db 40, DESTINY_BOND
	db 47, TOXIC
	db 0 ; no more level-up moves

ThredlessEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PURSUIT
	db 5, SMOG
	db 24, FLAME_WHEEL
	db 26, FAINT_ATTACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 35, AGILITY
	db 37, NIGHT_SLASH
	db 40, DESTINY_BOND
	db 44, FLAMETHROWER
	db 47, TOXIC
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

DreadbareEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PURSUIT
	db 5, SMOG
	db 26, FAINT_ATTACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, NIGHT_SLASH
	db 38, GUILLOTINE
	db 40, DESTINY_BOND
	db 42, SLASH
	db 44, HYPER_BEAM
	db 47, TOXIC
	db 52, NIGHTMARE
	db 0 ; no more level-up moves

CircusheetEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, PURSUIT
	db 19, CONFUSE_RAY
	db 26, FAINT_ATTACK
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, NIGHT_SLASH
	db 40, DESTINY_BOND
	db 44, PLAY_ROUGH
	db 47, TOXIC
	db 50, MOONBLAST
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, DOUBLESLAP
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, POWERPUNCH
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, DOUBLESLAP
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, POWERPUNCH
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PebbowlEvosAttacks:
	db EVOLVE_LEVEL, 20, CATERPEBBL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 9, ROCK_THROW
	db 12, SMOKESCREEN
	db 16, ROLLOUT
	db 18, TAKE_DOWN
	db 25, ROCK_SLIDE
	db 31, REVERSAL
	db 37, SKYDIVE
	db 43, BRAVE_BIRD
	db 0 ; no more level-up moves

CaterpebblEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 9, ROCK_THROW
	db 12, SMOKESCREEN
	db 16, ROLLOUT
	db 25, ROCK_SLIDE
	db 27, DOUBLE_EDGE
	db 31, TAKE_DOWN
	db 35, STONE_EDGE
	db 37, SKYDIVE
	db 40, SANDSTORM
	db 43, BRAVE_BIRD
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	db EVOLVE_LEVEL, 31, LUMINEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 6, CONFUSE_RAY
	db 13, RAIN_DANCE
	db 17, GUST
	db 22, SCALD
	db 26, ATTRACT
	db 29, SAFEGUARD
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 42, WHIRLWIND
	db 45, FLY
	db 0 ; no more level-up moves

VolcannyEvosAttacks:
	db EVOLVE_LEVEL, 16, MAGMEANIE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, EMBER
	db 11, SMOKESCREEN
	db 17, FLAME_WHEEL
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

MagmeanieEvosAttacks:
	db EVOLVE_LEVEL, 32, BUNDERVOLT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, FLAME_WHEEL
	db 13, SMOKESCREEN
	db 18, MEAN_LOOK
	db 20, RAGE
	db 22, DOUBLE_KICK
	db 27, FIRE_PUNCH
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, APOPLEXY
	db 0 ; no more level-up moves

BundervoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 21, RAGE
	db 34, FLAMETHROWER
	db 36, DOUBLE_KICK
	db 38, FIRE_SPIN
	db 40, THUNDERPUNCH
	db 44, SLASH
	db 47, THUNDERBOLT
	db 54, APOPLEXY
	db 64, FIRE_BLAST
	db 0 ; no more level-up moves

PanstrikeEvosAttacks:
	db EVOLVE_LEVEL, 25, SIMISTRIKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, POWERPUNCH
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

SimistrikeEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, POWERPUNCH
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

PansulkEvosAttacks:
	db EVOLVE_LEVEL, 25, SIMISULK
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 5, BITE
	db 8, FAINT_ATTACK
	db 15, SCARY_FACE
	db 19, THIEF
	db 22, SWINDLE
	db 25, MEAN_LOOK
	db 34, CRUNCH
	db 43, NIGHT_SLASH
	db 52, SHADOW_BALL
	db 61, NOCTURNE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, TACKLE
	db 15, HYPNOSIS
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, TACKLE
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, HYPNOSIS
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

WattrelEvosAttacks:
	db EVOLVE_LEVEL, 28, KILOWATREL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, STUN_SPORE
	db 9, THUNDERSHOCK
	db 11, PECK
	db 16, SPARK
	db 22, WING_ATTACK
	db 28, TAKE_DOWN
	db 34, THUNDERBOLT
	db 48, SKYDIVE
	db 0 ; no more level-up moves

KilowatrelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 16, SPARK
	db 22, WING_ATTACK
	db 28, TAKE_DOWN
	db 34, THUNDERBOLT
	db 37, WINGBEAT
	db 48, SKYDIVE
	db 52, BRAVE_BIRD
	db 0 ; no more level-up moves

CubterraEvosAttacks:
	db EVOLVE_LEVEL, 25, BEARROW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 8, MUD_SLAP
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, BONEMERANG
	db 26, DEFENSE_CURL
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

BearrowEvosAttacks:
	db EVOLVE_LEVEL, 40, URSTEEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 27, DEFENSE_CURL
	db 30, BONE_RUSH
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

UrsteelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 41, EARTHQUAKE
	db 43, BONE_RUSH
	db 46, STEEL_WING
	db 48, EXPLOSION
	db 50, STONE_EDGE
	db 55, ARMOUR_BREAK
	db 0 ; no more level-up moves

SpectreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 27, HAUNT
	db 30, CONFUSE_RAY
	db 32, SHADOW_SNEAK
	db 36, SHADOW_CLAW
	db 42, SHADOW_BALL
	db 47, PHANTOMFORCE
	db 52, TERRIFY
	db 0 ; no more level-up moves

ContageonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, POISONPOWDER
	db 32, POISON_JAB
	db 36, SMOG
	db 42, SLUDGE_BOMB
	db 47, TOXIC
	db 52, OOZE_STORM
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	db EVOLVE_LEVEL, 30, FLOATZEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, WATER_GUN
	db 7, BITE
	db 9, SONICBOOM
	db 12, DOUBLESLAP
	db 15, QUICK_ATTACK
	db 20, SWIFT
	db 24, WATERFALL
	db 29, DISABLE
	db 34, HEADBUTT
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, WATER_GUN
	db 7, BITE
	db 9, SONICBOOM
	db 12, DOUBLESLAP
	db 15, QUICK_ATTACK
	db 20, SWIFT
	db 24, WATERFALL
	db 29, DISABLE
	db 34, HEADBUTT
	db 36, TIDAL_CRASH
	db 40, SEA_BLADE
	db 42, AGILITY
	db 45, ICE_BEAM
	db 0 ; no more level-up moves

KlinkEvosAttacks:
	db EVOLVE_LEVEL, 30, KLANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 9, SCREECH
	db 11, CONFUSE_RAY
	db 16, SONICBOOM
	db 21, STUN_SPORE
	db 24, SPARK
	db 27, LOCK_ON
	db 33, SWIFT
	db 35, AGILITY
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

KlangEvosAttacks:
	db EVOLVE_LEVEL, 50, KLINGKLANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 9, SCREECH
	db 11, CONFUSE_RAY
	db 16, SONICBOOM
	db 21, STUN_SPORE
	db 24, SPARK
	db 27, LOCK_ON
	db 33, SWIFT
	db 35, AGILITY
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

CandyceEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, QUICK_ATTACK
	db 4, CONFUSE_RAY
	db 8, SWEET_SCENT
	db 12, POWDER_SNOW
	db 19, POWER_GEM
	db 24, AURORA_BEAM
	db 28, SLASH
	db 32, SWEET_STRIKE
	db 36, ICE_PICK
	db 44, RECOVER
	db 48, ICE_BEAM
	db 52, ACID_ARMOR
	db 56, SOLARBEAM
	db 60, BLIZZARD
	db 0 ; no more level-up moves

CrystaleonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, BARRIER
	db 36, ROCK_SLIDE
	db 42, POWER_GEM
	db 47, ANCIENTPOWER
	db 52, STONE_EDGE
	db 0 ; no more level-up moves

FutureonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, LIGHT_SCREEN
	db 30, REFLECT
	db 32, STEEL_WING
	db 36, METAL_CLAW
	db 42, METEOR_MASH
	db 47, FLASH_CANNON
	db 52, ROCK_SMASH
	db 0 ; no more level-up moves

MewltEvosAttacks:
	db EVOLVE_LEVEL, 26, CATNIPPY
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, POWDER_SNOW
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

CatnippyEvosAttacks:
	db EVOLVE_LEVEL, 41, ABOMINYABL
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISONPOWDER
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 10, DISABLE
	db 16, SLUDGE
	db 23, DOUBLE_TEAM
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISONPOWDER
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 33, DEFENSE_CURL
	db 37, DISABLE
	db 45, SLUDGE
	db 23, DOUBLE_TEAM
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 9, CONFUSE_RAY
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CRABHAMMER
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, CONFUSE_RAY
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 33, SPIKES
	db 41, SPIKE_CANNON
	db 0 ; no more level-up moves

WeazardEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ICE_BEAM
	db 1, FLAMETHROWER
	db 1, THUNDERBOLT
	db 26, PURSUIT
	db 30, SLAM
	db 33, PLAY_ROUGH
	db 36, SLASH
	db 38, DIZZY_PUNCH
	db 41, TAKE_DOWN
	db 45, TRI_ATTACK
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

ElectrikeEvosAttacks:
	db EVOLVE_LEVEL, 26, MANECTRIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STUN_SPORE
	db 4, LEER
	db 7, GROWL
	db 10, QUICK_ATTACK
	db 13, SPARK
	db 16, THUNDERSHOCK
	db 24, BITE
	db 29, ROAR
	db 33, THUNDERBOLT
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

ManectricEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STUN_SPORE
	db 24, BITE
	db 27, CRUNCH
	db 29, ROAR
	db 33, THUNDERBOLT
	db 36, DOUBLE_EDGE
	db 39, DOUBLE_KICK
	db 43, METAL_CLAW
	db 46, SHARPEN
	db 50, AGILITY
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_LEVEL, 28, MOGGIBOX
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 5, KARATE_CHOP
	db 10, COUNTER
	db 14, MEDITATE
	db 19, REVERSAL
	db 23, DEFENSE_CURL
	db 25, DIZZY_PUNCH
	db 31, MACH_PUNCH
	db 35, POWERPUNCH
	db 40, SLAM
	db 0 ; no more level-up moves

SigilyphEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 5, GUST
	db 10, DISABLE
	db 18, CONFUSION
	db 21, WING_ATTACK
	db 25, HEADBUTT
	db 31, MIND_SPIKE
	db 35, AMNESIA
	db 36, MEDITATE
	db 38, ANCIENTPOWER
	db 40, PSYCHIC_M
	db 43, PSYSTRIKE
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

BrowseraphEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, DISABLE
	db 5, SPARK
	db 8, WHIRLWIND
	db 13, CONFUSE_RAY
	db 18, TELEPORT
	db 25, PLAY_ROUGH
	db 33, HYPNOSIS
	db 40, LOVE_ARROW
	db 49, PSYCHIC_M
	db 55, PSYSTRIKE
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 5, LEER
	db 12, VICEGRIP
	db 16, DEFENSE_CURL
	db 23, SLAM
	db 27, GUILLOTINE
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, DEFENSE_CURL
	db 23, SLAM
	db 27, GUILLOTINE
	db 32, METAL_CLAW
	db 38, PROTECT
	db 44, ROCK_SMASH
	db 49, CRABHAMMER
	db 0 ; no more level-up moves

KlingklangEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ShiverkitEvosAttacks:
	db EVOLVE_ITEM, SKY_STONE, ATMOSPHOX
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 4, GROWL
	db 8, ICY_WIND
	db 12, SWEET_STRIKE
	db 20, QUICK_ATTACK
	db 24, AURORA_BEAM
	db 28, DOUBLE_KICK
	db 32, ICE_BEAM
	db 36, SLASH
	db 40, HAZE
	db 44, ICE_PICK
	db 52, SKYDIVE
	db 56, BLIZZARD
	db 0 ; no more level-up moves

MuttscrapEvosAttacks:
	db EVOLVE_LEVEL, 28, JUNKANINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 9, METAL_CLAW
	db 15, QUICK_ATTACK
	db 21, REVERSAL
	db 29, IRON_TAIL
	db 37, BEAT_UP
	db 47, ROCK_SMASH
	db 0 ; no more level-up moves

JunkanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 9, METAL_CLAW
	db 15, QUICK_ATTACK
	db 21, REVERSAL
	db 29, IRON_TAIL
	db 33, ARMOUR_BREAK
	db 35, DOUBLE_KICK
	db 37, BEAT_UP
	db 40, STEEL_WING
	db 47, ROCK_SMASH
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, BONE_CLUB
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
	db 0 ; no more level-up moves

PanseerEvosAttacks:
	db EVOLVE_LEVEL, 25, SIMISEER
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LEER
	db 5, MEDITATE
	db 8, HYPNOSIS
	db 15, PSYBEAM
	db 19, SMOKESCREEN
	db 22, AMNESIA
	db 25, PSYSTRIKE
	db 34, MIRROR_COAT
	db 43, PSYCHIC_M
	db 52, FUTURE_SIGHT
	db 61, NOCTURNE
	db 0 ; no more level-up moves

SimiseerEvosAttacks:
	db 0 ; no more evolutionss
	db 1, CONFUSION
	db 1, LEER
	db 25, PSYSTRIKE
	db 34, MIRROR_COAT
	db 43, PSYCHIC_M
	db 52, FUTURE_SIGHT
	db 61, NOCTURNE
	db 0 ; no more level-up moves

AbominyablEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, POWDER_SNOW
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 42, CRUNCH
	db 45, NIGHT_SLASH
	db 48, SAFEGUARD
	db 51, BLIZZARD
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, RAPID_SPIN
	db 4, SCRATCH
	db 8, SHARPEN
	db 15, METAL_CLAW
	db 20, SANDSTORM
	db 24, SLASH
	db 28, ROCK_SLIDE
	db 32, DIG
	db 36, SWORDS_DANCE
	db 40, BONEMERANG
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, RAPID_SPIN
	db 28, ROCK_SLIDE
	db 32, DIG
	db 36, SWORDS_DANCE
	db 40, BONEMERANG
	db 44, EARTHQUAKE
	db 50, BONE_RUSH
	db 55, ROCK_SMASH
	db 60, GUILLOTINE
	db 0 ; no more level-up moves

BreezeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, GUST
	db 32, AGILITY
	db 36, MIRROR_MOVE
	db 42, WINGBEAT
	db 47, SKYDIVE
	db 52, FLY
	db 0 ; no more level-up moves

RumblebeeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, LEECH_LIFE
	db 9, FURY_CUTTER
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 25, SLAM
	db 27, COUNTER
	db 30, X_SCISSOR
	db 35, TAKE_DOWN
	db 40, HIVE_MIND
	db 44, REVERSAL
	db 54, MEGAHORN
	db 0 ; no more level-up moves

QuilladinEvosAttacks:
	db EVOLVE_LEVEL, 35, CHESNAUGHT
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, VINE_WHIP
	db 8, ROLLOUT
	db 11, BITE
	db 15, LEECH_SEED
	db 18, PIN_MISSILE
	db 21, TAKE_DOWN
	db 24, PROTECT
	db 27, TAKE_DOWN
	db 30, SPIKES
	db 32, LEAF_BLADE
	db 42, SLAM
	db 48, SUBMISSION
	db 0 ; no more level-up moves

KitekatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, SMOKESCREEN
	db 8, GUST
	db 12, QUICK_ATTACK
	db 15, WHIRLWIND
	db 19, TWISTER
	db 23, CHARM
	db 26, WING_ATTACK
	db 30, AGILITY
	db 37, MIRROR_MOVE
	db 41, WINGBEAT
	db 45, BRAVE_BIRD
	db 47, SKYDIVE
	db 0 ; no more level-up moves

WyverneonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, ROAR
	db 32, DRAGONBREATH
	db 36, DRAGON_CLAW
	db 39, SWORDS_DANCE
	db 42, DRAGON_RAGE
	db 47, DRAGON_PULSE
	db 52, WYVERN_BEAM
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	db EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 10, CONFUSE_RAY
	db 15, HORN_ATTACK
	db 19, CRABHAMMER
	db 24, FLAIL
	db 29, HEADBUTT
	db 38, WATERFALL
	db 43, GUILLOTINE
	db 52, AGILITY
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 31, CRABHAMMER
	db 35, SEA_BLADE
	db 41, WATERFALL
	db 43, NIGHT_SLASH
	db 49, GUILLOTINE
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, DOUBLE_TEAM
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

FraxureEvosAttacks:
	db EVOLVE_LEVEL, 50, HAXORUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DRAGONBREATH
	db 29, SLAM
	db 31, METAL_CLAW
	db 35, DRAGON_CLAW
	db 36, AGILITY
	db 43, SWORDS_DANCE
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SWOOBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 5, GUST
	db 8, CUT
	db 15, FAIRY_DUST
	db 18, CONFUSION
	db 21, WING_ATTACK
	db 25, HEADBUTT
	db 31, MIND_SPIKE
	db 35, AMNESIA
	db 38, ANCIENTPOWER
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_LEVEL, 27, FRAXURE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, DRAGON_RAGE
	db 15, TWISTER
	db 18, RAGE
	db 22, DRAGONBREATH
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

BergmiteEvosAttacks:
	db EVOLVE_LEVEL, 30, AVALUGG
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, QUICK_ATTACK
	db 4, CONFUSE_RAY
	db 8, RAPID_SPIN
	db 12, POWDER_SNOW
	db 16, ROCK_THROW
	db 24, AURORA_BEAM
	db 28, SLASH
	db 32, NIGHT_SLASH
	db 36, ICE_PICK
	db 48, ICE_BEAM
	db 52, ACID_ARMOR
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, SMOKESCREEN
	db 10, FAINT_ATTACK
	db 15, PROTECT
	db 20, FOCUS_ENERGY
	db 25, SLASH
	db 30, NIGHT_SLASH
	db 37, MIND_SPIKE
	db 45, SWORDS_DANCE
	db 50, FUTURE_SIGHT
	db 55, PERISH_SONG
	db 65, NOCTURNE
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SCARY_FACE
	db 6, ABSORB
	db 12, FLAME_WHEEL
	db 18, BITE
	db 24, SCREECH
	db 30, LEECH_LIFE
	db 36, TAKE_DOWN
	db 42, BUG_BUZZ
	db 48, AMNESIA
	db 54, DOUBLE_EDGE
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, FLAIL
	db 15, TACKLE
	db 30, SEA_BLADE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, HYPNOSIS
	db 8, HAZE
	db 15, SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

BudewEvosAttacks:
	db EVOLVE_LEVEL, 18, ROSELIA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, HYPNOSIS
	db 23, ACID
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db EVOLVE_ITEM, PRETTYCHARM, SYLVEON
	db EVOLVE_STAT, 30, ATK_GT_DEF, CHAMPEON
	db EVOLVE_STAT, 30, ATK_LT_DEF, CRYSTALEON
	db EVOLVE_STAT, 30, ATK_EQ_DEF, WYVERNEON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_ITEM, ICYPENDANT, GLACEON
	db EVOLVE_ITEM, SUN_STONE, SANDEON
	db EVOLVE_ITEM, UP_GRADE, FUTUREON
	db EVOLVE_ITEM, SKY_STONE, BREEZEON
	db EVOLVE_ITEM, MOON_STONE, ARACHNEON
	db EVOLVE_ITEM, EERIE_RAG, SPECTREON
	db EVOLVE_ITEM, BITTER_BERRY, CONTAGEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, STUN_SPORE
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SHADOW_CLAW
	db 12, CONFUSE_RAY
	db 15, SHADOW_SNEAK
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 29, SHADOW_BALL
	db 36, PAIN_SPLIT
	db 38, HAUNT
	db 40, PHANTOMFORCE
	db 46, PERISH_SONG
	db 50, TERRIFY
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db EVOLVE_LEVEL, 35, ARCHEOPS
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, DEFENSE_CURL
	db 13, BITE
	db 19, WING_ATTACK
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, BRAVE_BIRD
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCALD
	db 1, DEFENSE_CURL
	db 40, WINGBEAT
	db 54, ANCIENTPOWER
	db 65, BRAVE_BIRD
	db 0 ; no more level-up moves

CubbiteEvosAttacks:
	db EVOLVE_LEVEL, 40, SMOLDERDON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 10, METAL_CLAW
	db 19, LEER
	db 28, SMOKESCREEN
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

SmolderdonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 28, SMOKESCREEN
	db 37, ENDURE
	db 40, SLASH
	db 51, FLAMETHROWER
	db 56, ROCK_SMASH
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db EVOLVE_LEVEL, 17, BRIONNE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 3, WATER_GUN
	db 6, FAIRY_WIND
	db 9, CHARM
	db 12, BUBBLEBEAM
	db 15, ICE_BEAM
	db 18, HYPNOSIS
	db 21, SCALD
	db 24, ENCORE
	db 33, MOONBLAST
	db 36, HYDRO_PUMP
	db 0 ; no more level-up moves

BrionneEvosAttacks:
	db EVOLVE_LEVEL, 36, PRIMARINA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ICY_WIND
	db 3, WATER_GUN
	db 15, ICE_BEAM
	db 18, HYPNOSIS
	db 21, SCALD
	db 24, ENCORE
	db 27, SWEET_STRIKE
	db 30, ATTRACT
	db 33, MOONBLAST
	db 36, HYDRO_PUMP
	db 0 ; no more level-up moves

GigatumbleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 1, TACKLE
	db 35, FLAIL
	db 36, ROLLOUT
	db 41, SCARY_FACE
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 53, POWERPUNCH
	db 55, LIGHT_SCREEN
	db 55, REFLECT
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

SerenoseEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CELESNOUT
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, DEFENSE_CURL
	db 4, SCRATCH
	db 8, FAIRY_WIND
	db 12, CHARM
	db 16, BONE_CLUB
	db 20, PIXIE_PUNCH
	db 24, SLASH
	db 28, ROCK_SLIDE
	db 32, DIG
	db 36, AMNESIA
	db 40, BONEMERANG
	db 44, EARTHQUAKE
	db 50, MOONBLAST
	db 0 ; no more level-up moves

CelesnoutEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, DEFENSE_CURL
	db 28, ROCK_SLIDE
	db 32, DIG
	db 34, BONEMERANG
	db 36, AMNESIA
	db 38, SWEET_STRIKE
	db 40, BONEMERANG
	db 44, EARTHQUAKE
	db 47, MOONLIGHT
	db 50, MOONBLAST
	db 53, PSYCHIC_M
	db 57, FUTURE_SIGHT
	db 0 ; no more level-up moves

OleandireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, STUN_SPORE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 32, LEAF_BLADE
	db 36, AGILITY
	db 43, SAFEGUARD
	db 47, PETAL_DANCE
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

RazorinkEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, TACKLE
	db 1, LEER
	db 1, QUICK_ATTACK
	db 10, LOW_KICK
	db 14, ICY_WIND
	db 16, TRIPLE_KICK
	db 20, SHARPEN
	db 25, SWORDS_DANCE
	db 28, ICE_PICK
	db 32, SWORDS_DANCE
	db 35, GLACIALBLADE
	db 40, ICE_BEAM
	db 43, SUBMISSION
	db 0 ; no more level-up moves

DiancieEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 11, BARRIER
	db 25, FAIRY_DUST
	db 33, FAIRY_WIND
	db 37, POWER_GEM
	db 44, MOONBLAST
	db 48, STONE_EDGE
	db 52, HAZE
	db 55, PSYCHIC_M
	db 57, AMNESIA
	db 60, RECOVER
	db 62, SAFEGUARD
	db 0 ; no more level-up moves

KarwaiiEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, RAZOR_LEAF
	db 25, FAIRY_DUST
	db 33, FAIRY_WIND
	db 44, MOONBLAST
	db 48, PLAY_ROUGH
	db 52, CHARM
	db 55, PSYCHIC_M
	db 57, PETAL_DANCE
	db 60, RECOVER
	db 62, SAFEGUARD
	db 0 ; no more level-up moves

KeirwEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, SCREECH
	db 1, FAINT_ATTACK
	db 25, OUTRAGE
	db 27, FLASH_CANNON
	db 37, NIGHT_SLASH
	db 40, APOPLEXY
	db 44, SWORDS_DANCE
	db 46, CONFUSE_RAY
	db 49, PSYCHIC_M
	db 53, AMNESIA
	db 56, NOCTURNE
	db 61, TERRIFY
	db 0 ; no more level-up moves

LullabearEvosAttacks:
	db EVOLVE_LEVEL, 16, TEDDYAWN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, PSYBEAM
	db 12, HYPNOSIS
	db 15, HEADBUTT
	db 22, MOONLIGHT
	db 29, SLAM
	db 36, DREAM_EATER
	db 43, SAFEGUARD
	db 50, AMNESIA
	db 0 ; no more level-up moves

TeddyawnEvosAttacks:
	db EVOLVE_LEVEL, 32, URSAMIMIR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, PSYBEAM
	db 1, HYPNOSIS
	db 8, HEADBUTT
	db 12, MOONLIGHT
	db 15, SLAM
	db 23, REST
	db 26, MIND_SPIKE
	db 31, SNORE
	db 39, AMNESIA
	db 47, DREAM_EATER
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

UrsamimirEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, PSYBEAM
	db 26, MIND_SPIKE
	db 31, SNORE
	db 35, REFLECT
	db 36, LIGHT_SCREEN
	db 41, DREAM_EATER
	db 47, PSYCHIC_M
	db 51, SAFEGUARD
	db 55, NIGHTMARE
	db 61, AMNESIA
	db 0 ; no more level-up moves

PupageEvosAttacks:
	db EVOLVE_LEVEL, 14, STAGUARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, TWINEEDLE
	db 10, QUICK_ATTACK
	db 12, FURY_ATTACK
	db 19, POWERPUNCH
	db 27, PROTECT
	db 36, SWIFT
	db 46, SLAM
	db 0 ; no more level-up moves

StaguardEvosAttacks:
	db EVOLVE_LEVEL, 36, MANDIBLADE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, FURY_ATTACK
	db 1, BUG_BUZZ
	db 6, METAL_CLAW
	db 12, PROTECT
	db 15, BARRIER
	db 17, METAL_CLAW
	db 18, DOUBLE_KICK
	db 25, POWERPUNCH
	db 31, HEADBUTT
	db 42, SKULL_BASH
	db 54, GUILLOTINE
	db 0 ; no more level-up moves

MandibladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, FURY_ATTACK
	db 1, METAL_CLAW
	db 6, LOW_KICK
	db 12, BARRIER
	db 18, DOUBLE_KICK
	db 21, HEADBUTT
	db 31, SKULL_BASH
	db 38, STEEL_WING
	db 43, SWORDS_DANCE
	db 47, ARMOUR_BREAK
	db 52, EARTHQUAKE
	db 60, TAKE_DOWN
	db 0 ; no more level-up moves

ReptripEvosAttacks:
	db EVOLVE_LEVEL, 16, RAVETILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, ACID
	db 13, POISONPOWDER
	db 20, BITE
	db 27, POISON_JAB
	db 35, SLUDGE
	db 43, SCREECH
	db 52, SLUDGE_BOMB
	db 0 ; no more level-up moves

RavetileEvosAttacks:
	db EVOLVE_LEVEL, 30, HALLUCIGON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, ACID
	db 7, ACID_ARMOR
	db 13, POISONPOWDER
	db 21, BITE
	db 28, SLUDGE
	db 32, POISON_JAB
	db 37, SUPER_FANG
	db 45, SCREECH
	db 55, SLUDGE_BOMB
	db 60, OOZE_STORM
	db 0 ; no more level-up moves

HallucigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, ACID
	db 1, ACID_ARMOR
	db 32, TWISTER
	db 38, CRUNCH
	db 41, POISON_JAB
	db 47, DRAGON_CLAW
	db 52, TWISTER
	db 58, SLUDGE_BOMB
	db 62, WYVERN_BEAM
	db 66, OUTRAGE
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, DOUBLESLAP
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, DOUBLESLAP
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 16, HYPNOSIS
	db 22, CONFUSION
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 38, PSYSTRIKE
	db 41, WINGBEAT
	db 46, PSYCHIC_M
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, CONFUSE_RAY
	db 15, DOUBLESLAP
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 29, BATON_PASS
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 19, BUG_BUZZ
	db 22, SWORDS_DANCE
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 24, METEOR_MASH
	db 29, HIVE_MIND
	db 33, BATON_PASS
	db 38, POWERPUNCH
	db 42, SWIFT
	db 46, X_SCISSOR
	db 51, AGILITY
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, BUG_BUZZ
	db 17, NIGHT_SHADE
	db 23, LEECH_LIFE
	db 30, DOUBLESLAP
	db 37, SPIDER_WEB
	db 45, AGILITY
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, BUG_BUZZ
	db 6, SCARY_FACE
	db 11, BUG_BUZZ
	db 17, NIGHT_SHADE
	db 25, LEECH_LIFE
	db 30, HIVE_MIND
	db 34, DOUBLESLAP
	db 43, SPIDER_WEB
	db 47, POISON_JAB
	db 53, AGILITY
	db 56, PESTILENCE
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

GarganaclEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 20, BARRIER
	db 25, RECOVER
	db 30, ROCK_SLIDE
	db 33, SPIKES
	db 36, ARMOUR_BREAK
	db 46, EARTHQUAKE
	db 49, STONE_EDGE
	db 52, POWERPUNCH
	db 56, DYNAMICPUNCH
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, STUN_SPORE
	db 5, CONFUSE_RAY
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, STUN_SPORE
	db 1, CONFUSE_RAY
	db 5, CONFUSE_RAY
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, STUN_SPORE
	db 11, HYPNOSIS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_LEVEL, 25, GUARDEN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, GROWTH
	db 8, VINE_WHIP
	db 13, ABSORB
	db 17, LEECH_SEED
	db 20, BONE_CLUB
	db 25, DIG
	db 30, SYNTHESIS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, BLOSSAROMA
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 1, FAIRY_WIND
	db 4, TAIL_WHIP
	db 9, TACKLE
	db 11, FAIRY_DUST
	db 14, VINE_WHIP
	db 18, ABSORB
	db 21, CUT
	db 26, PIXIE_PUNCH
	db 30, PLAY_ROUGH
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_LEVEL, 30, TOGEKISS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, HYPNOSIS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, EXTREMESPEED
	db 1, AURA_SPHERE
	db 1, METRONOME
	db 1, FAIRY_DUST
	db 1, DOUBLE_EDGE
	db 35, WINGBEAT
	db 38, LOVE_ARROW
	db 42, SKYDIVE
	db 45, MOONBLAST
	db 49, GALE_FORCE
	db 0 ; no more level-up moves

MeeksteryEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, MURKLOOM
	db 0 ; no more evolutions
	db 1, FAINT_ATTACK
	db 1, TELEPORT
	db 1, LEER
	db 5, SHADOW_SNEAK
	db 10, NIGHT_SHADE
	db 12, CONFUSION
	db 20, BITE
	db 30, FUTURE_SIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

MurkloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 22, SHADOW_SNEAK
	db 24, THIEF
	db 27, SWINDLE
	db 30, SHADOW_CLAW
	db 35, FUTURE_SIGHT
	db 39, SHADOW_BALL
	db 43, PHANTOMFORCE
	db 47, TERRIFY
	db 50, NOCTURNE
	db 65, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 27, PALLAZAP
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 3, BITE
	db 9, THUNDERSHOCK
	db 16, STUN_SPORE
	db 19, SPARK
	db 23, COTTON_SPORE
	db 26, TAKE_DOWN
	db 30, MEAN_LOOK
	db 37, THUNDER
	db 41, CRUNCH
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, SPARK
	db 10, BITE
	db 18, STUN_SPORE
	db 27, COTTON_SPORE
	db 30, THUNDERBOLT
	db 36, MEAN_LOOK
	db 40, CRUNCH
	db 45, THUNDER
	db 50, ZAP_CANNON
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, RAPID_SPIN
	db 11, FAINT_ATTACK
	db 14, DRAGON_RAGE
	db 18, QUICK_ATTACK
	db 24, SLASH
	db 27, DRAGON_CLAW
	db 30, IRON_TAIL
	db 35, DRAGON_PULSE
	db 40, OUTRAGE
	db 46, EXTREMESPEED
	db 50, WYVERN_BEAM
	db 0 ; no more level-up moves

EternitairEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SMOKESCREEN
	db 9, GUST
	db 13, STEEL_WING
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 26, FLASH_CANNON
	db 29, WING_ATTACK
	db 37, AGILITY
	db 47, MIRROR_MOVE
	db 50, ROCK_SMASH
	db 52, BRAVE_BIRD
	db 55, SKYDIVE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 28, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, RAIN_DANCE
	db 0 ; no more level-up moves

ChargeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, GLARE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 23, ICY_WIND
	db 26, SPARK
	db 33, THUNDERBOLT
	db 37, ICE_BEAM
	db 41, THUNDER
	db 48, SOLARBEAM
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 26, ATTRACT
	db 29, SAFEGUARD
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 42, WHIRLWIND
	db 45, FLY
	db 47, MOONBLAST
	db 50, TIDAL_CRASH
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, FAIRY_DUST
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, HYPNOSIS
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 30, MEGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, FAIRY_DUST
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, HYPNOSIS
	db 22, LEECH_SEED
	db 29, COTTON_SPORE
	db 36, MEGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_DUST
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, HYPNOSIS
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, MEGA_DRAIN
	db 0 ; no more level-up moves

AtmosphoxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 28, DOUBLE_KICK
	db 32, ICE_BEAM
	db 34, DOUBLESLAP
	db 36, SLASH
	db 38, WINGBEAT
	db 40, HAZE
	db 42, BRAVE_BIRD
	db 44, ICE_BEAM
	db 52, SKYDIVE
	db 60, GALE_FORCE
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, SONICBOOM
	db 25, PROTECT
	db 31, CONFUSE_RAY
	db 34, WINGBEAT
	db 37, WING_ATTACK
	db 43, SCREECH
	db 46, BUG_BUZZ
	db 50, DRAGON_PULSE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 5, METAL_CLAW
	db 9, DOUBLESLAP
	db 13, DOUBLE_KICK
	db 18, RECOVER
	db 25, IRON_TAIL
	db 30, BONE_CLUB
	db 35, ARMOUR_BREAK
	db 40, BARRIER
	db 45, ROCK_SMASH
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_LEVEL, 30, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, SONICBOOM
	db 25, PROTECT
	db 31, CONFUSE_RAY
	db 37, WING_ATTACK
	db 43, SCREECH
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, MUD_SLAP
	db 7, KARATE_CHOP
	db 11, SHADOW_SNEAK
	db 16, LOW_KICK
	db 20, POISON_JAB
	db 23, FAINT_ATTACK
	db 29, COUNTER
	db 33, PURSUIT
	db 36, SLUDGE_BOMB
	db 40, SUBMISSION
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, MUD_SLAP
	db 1, SLUDGE
	db 23, FAINT_ATTACK
	db 29, COUNTER
	db 33, PURSUIT
	db 36, SLUDGE_BOMB
	db 39, TOXIC
	db 40, SUBMISSION
	db 44, NIGHT_SLASH
	db 48, PESTILENCE
	db 51, HAZE
	db 60, OOZE_STORM
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYSTRIKE
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 0 ; no more level-up moves

VeluzaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, LEER
	db 15, WATER_GUN
	db 20, CONFUSION
	db 25, AGILITY
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, MIND_SPIKE
	db 43, SWAGGER
	db 46, WATERFALL
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, EERIE_RAG, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYSTRIKE
	db 6, SHADOW_CLAW
	db 9, HAUNT
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, EMBER
	db 11, LICK
	db 21, FLAME_WHEEL
	db 25, DOUBLE_KICK
	db 31, FIRE_SPIN
	db 41, SLAM
	db 51, FLAMETHROWER
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

MienshaoEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 31, VITAL_THROW
	db 35, JUMP_KICK
	db 37, POWERPUNCH
	db 43, SCARY_FACE
	db 46, AURA_SPHERE
	db 49, SUBMISSION
	db 51, HI_JUMP_KICK
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	db EVOLVE_ITEM, PRETTYCHARM, ROSERADE
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, HYPNOSIS
	db 24, ACID
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 24, ACID
	db 28, POISON_JAB
	db 35, MOONLIGHT
	db 37, OOZE_STORM
	db 44, PETAL_DANCE
	db 49, MOONBLAST
	db 0 ; no more level-up moves

WhizzelEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, WEAZARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, TAIL_WHIP
	db 9, PSYBEAM
	db 13, DOUBLESLAP
	db 16, FAIRY_DUST
	db 18, EMBER
	db 21, AURORA_BEAM
	db 24, SWEET_STRIKE
	db 26, PURSUIT
	db 30, SLAM
	db 34, DIZZY_PUNCH
	db 38, TAKE_DOWN
	db 42, TRI_ATTACK
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SMOKESCREEN
	db 13, DEFENSE_CURL
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 36, SLASH
	db 44, SCREECH
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, THUNDERPUNCH
	db 1, FIRE_PUNCH
	db 1, ICE_PUNCH
	db 5, KARATE_CHOP
	db 24, DIZZY_PUNCH
	db 28, MACH_PUNCH
	db 31, POWERPUNCH
	db 36, SUBMISSION
	db 40, DYNAMICPUNCH
	db 42, SWORDS_DANCE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 28, ROAR
	db 38, RAGE
	db 51, TAKE_DOWN
	db 0 ; no more level-up moves

RoarigamiEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, ROAR
	db 11, SLAM
	db 14, DRAGON_RAGE
	db 18, WING_ATTACK
	db 21, LEAF_BLADE
	db 24, SLASH
	db 27, DRAGON_CLAW
	db 30, NIGHT_SLASH
	db 35, DRAGON_PULSE
	db 40, OUTRAGE
	db 50, WYVERN_BEAM
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

SplashfulEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, BREAMING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 6, CONFUSE_RAY
	db 13, RAIN_DANCE
	db 17, GUST
	db 22, SCALD
	db 26, ATTRACT
	db 29, SAFEGUARD
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 42, SURF
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 44, REVERSAL
	db 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, FAINT_ATTACK
	db 33, DOUBLESLAP
	db 41, AGILITY
	db 49, SLASH
	db 57, BEAT_UP
	db 65, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 15, DOUBLESLAP
	db 22, FAINT_ATTACK
	db 29, REST
	db 36, SLASH
	db 43, SNORE
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, DOUBLESLAP
	db 8, LICK
	db 15, DOUBLESLAP
	db 22, FAINT_ATTACK
	db 29, REST
	db 39, SLASH
	db 49, SNORE
	db 59, THRASH
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, PURSUIT
	db 21, NIGHT_SHADE
	db 25, FAINT_ATTACK
	db 31, SWINDLE
	db 35, MEAN_LOOK
	db 38, DARK_PULSE
	db 41, WINGBEAT
	db 45, MIRROR_MOVE
	db 51, NIGHT_SLASH
	db 55, PERISH_SONG
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_PICK
	db 1, SLASH
	db 1, AGILITY
	db 16, TRIPLE_KICK
	db 20, SHARPEN
	db 22, METAL_CLAW
	db 25, SWORDS_DANCE
	db 28, PURSUIT
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 38, DARK_PULSE
	db 40, NOCTURNE
	db 43, GLACIALBLADE
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 23, QUICK_ATTACK
	db 30, HAZE
	db 36, POWDER_SNOW
	db 42, ICY_WIND
	db 47, BARRIER
	db 52, ICE_BEAM
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SMOKESCREEN
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, SYNTHESIS
	db 36, VINE_WHIP
	db 42, GIGA_DRAIN
	db 47, LEAF_BLADE
	db 52, PETAL_DANCE
	db 0 ; no more level-up moves

BreamingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 22, SCALD
	db 26, ATTRACT
	db 29, SAFEGUARD
	db 31, PLAY_ROUGH
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 42, SURF
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

BurrussetEvosAttacks:
	db EVOLVE_LEVEL, 32, DRUDDIGON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 3, MUD_SLAP
	db 8, STUN_SPORE
	db 11, RAGE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 31, DIG
	db 36, AGILITY
	db 43, EARTHQUAKE
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DruddigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DRAGON_CLAW
	db 29, SLAM
	db 31, DIG
	db 36, AGILITY
	db 43, BONE_RUSH
	db 46, DRAGON_PULSE
	db 48, ROCK_SMASH
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, ICE_PUNCH
	db 1, FIRE_PUNCH
	db 1, POISON_JAB
	db 27, NIGHT_SLASH
	db 32, WINGBEAT
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, SUBMISSION
	db 50, SWORDS_DANCE
	db 0 ; no more level-up moves

ArachneonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 30, SPIDER_WEB
	db 33, MEAN_LOOK
	db 36, BUG_BUZZ
	db 42, LEECH_LIFE
	db 47, X_SCISSOR
	db 52, PESTILENCE
	db 0 ; no more level-up moves

SandeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 30, MUD_SLAP
	db 36, BONEMERANG
	db 42, BONE_RUSH
	db 47, SANDSTORM
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FAINT_ATTACK
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, GROWL
	db 17, SWIFT
	db 20, PIXIE_PUNCH
	db 25, FAIRY_DUST
	db 33, ATTRACT
	db 37, MOONBLAST
	db 41, DOUBLE_EDGE
	db 45, PLAY_ROUGH
	db 0 ; no more level-up moves

ChampeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 30, FOCUS_ENERGY
	db 36, KARATE_CHOP
	db 42, ROLLING_KICK
	db 44, MACH_PUNCH
	db 47, POWERPUNCH
	db 52, SUBMISSION
	db 0 ; no more level-up moves

ChespinEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILLADIN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, VINE_WHIP
	db 8, ROLLOUT
	db 11, BITE
	db 15, LEECH_SEED
	db 18, PIN_MISSILE
	db 27, TAKE_DOWN
	db 32, LEAF_BLADE
	db 35, BONE_CLUB
	db 42, SLAM
	db 48, SUBMISSION
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAGE
	db 31, METAL_CLAW
	db 35, DRAGON_CLAW
	db 36, AGILITY
	db 43, SWORDS_DANCE
	db 50, OUTRAGE
	db 55, WYVERN_BEAM
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

SimisulkEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 5, BITE
	db 8, FAINT_ATTACK
	db 15, SCARY_FACE
	db 19, THIEF
	db 22, SWINDLE
	db 25, MEAN_LOOK
	db 34, CRUNCH
	db 43, NIGHT_SLASH
	db 52, SHADOW_BALL
	db 61, NOCTURNE
	db 0 ; no more level-up moves

MienfooEvosAttacks:
	db EVOLVE_LEVEL, 32, MIENSHAO
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 15, DOUBLESLAP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, POWERPUNCH
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

AvaluggEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, QUICK_ATTACK
	db 28, SLASH
	db 32, NIGHT_SLASH
	db 36, ICE_PICK
	db 39, LIGHT_SCREEN
	db 40, REFLECT
	db 48, ICE_BEAM
	db 52, ACID_ARMOR
	db 56, SOLARBEAM
	db 60, GUILLOTINE
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, ATTRACT
	db 1, FAIRY_WIND
	db 25, HEADBUTT
	db 31, SWEET_STRIKE
	db 35, AMNESIA
	db 36, LOVE_ARROW
	db 38, MOONBLAST
	db 40, PSYCHIC_M
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

CryogonalEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 4, CONFUSE_RAY
	db 8, RAPID_SPIN
	db 16, HAZE
	db 20, ANCIENTPOWER
	db 24, AURORA_BEAM
	db 28, SLASH
	db 32, NIGHT_SLASH
	db 39, LIGHT_SCREEN
	db 40, REFLECT
	db 44, RECOVER
	db 48, ICE_BEAM
	db 52, ACID_ARMOR
	db 56, SOLARBEAM
	db 60, GUILLOTINE
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, LEECH_LIFE
	db 1, FLAMETHROWER
	db 1, BUG_BUZZ
	db 1, AMNESIA
	db 1, DOUBLE_EDGE
	db 58, APOPLEXY
	db 62, GALE_FORCE
	db 70, FIRE_BLAST
	db 0 ; no more level-up moves

ChesnaughtEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, VINE_WHIP
	db 1, SPIKES
	db 27, TAKE_DOWN
	db 32, LEAF_BLADE
	db 33, PROTECT
	db 35, BONE_CLUB
	db 37, SPIKYSHIELD
	db 39, ARMOUR_BREAK
	db 42, SLAM
	db 44, POWERPUNCH
	db 48, SUBMISSION
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, SLAM
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, HAZE
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 56, EARTHQUAKE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

TylwishEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves
