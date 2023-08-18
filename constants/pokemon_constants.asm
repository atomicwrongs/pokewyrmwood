; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const PRIMARINA  ; 01
	const JANGMO_O    ; 02
	const HAKAMO_O   ; 03
	const KOMMO_O ; 04
	const GIBLE ; 05
	const GABITE  ; 06
	const GARCHOMP   ; 07
	const FUMBLIL  ; 08
	const TUMBLOT  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const SQUEAKRAG     ; 0d
	const MINERAT     ; 0e
	const GEODENT   ; 0f
	const POOCHYENA  ; 10
	const MIGHTYENA  ; 11
	const HARLYENA   ; 12
	const BUNEARY    ; 13
	const LOPUNNY    ; 14
	const CHERUBI    ; 15
	const CHERRIM    ; 16
	const TRUBBISH      ; 17
	const GARBODOR      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const GUARDEN   ; 23
	const MARACTUS   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const BLOSSAROMA ; 27
	const TOGEPI ; 28
	const NACLI      ; 29
	const NACLSTACK     ; 2a
	const SQUEAKABOO     ; 2b
	const PEEKABOX      ; 2c
	const MOMENTAIRY  ; 2d
	const PARASOUL      ; 2e
	const UMBRAELLA   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const WALLOPY    ; 32
	const CAPOEIROO    ; 33
	const THREADLY     ; 34
	const THREDLESS    ; 35
	const DREADBARE    ; 36
	const CIRCUSHEET    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const PEBBOWL    ; 3c
	const CATERPEBBL  ; 3d
	const FINNEON  ; 3e
	const VOLCANNY       ; 3f
	const MAGMEANIE    ; 40
	const BUNDERVOLT   ; 41
	const PANSTRIKE     ; 42
	const SIMISTRIKE    ; 43
	const PANSULK    ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const WATTREL  ; 48
	const KILOWATREL ; 49
	const CUBTERRA    ; 4a
	const BEARROW   ; 4b
	const URSTEEL      ; 4c
	const SPECTREON     ; 4d
	const CONTAGEON   ; 4e
	const BUIZEL   ; 4f
	const FLOATZEL    ; 50
	const KLINK  ; 51
	const KLANG   ; 52
	const CANDYCE ; 53
	const CRYSTALEON      ; 54
	const FUTUREON     ; 55
	const MEWLT       ; 56
	const CATNIPPY    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const WEAZARD     ; 5c
	const ELECTRIKE    ; 5d
	const MANECTRIC     ; 5e
	const PUGILHISS      ; 5f
	const SIGILYPH    ; 60
	const BROWSERAPH      ; 61
	const KRABBY     ; 62
	const KINGLER    ; 63
	const KLINGKLANG    ; 64
	const SHIVERKIT  ; 65
	const MUTTSCRAP  ; 66
	const JUNKANINE  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const PANSEER  ; 6a
	const SIMISEER ; 6b
	const ABOMINYABL  ; 6c
	const DRILBUR    ; 6d
	const EXCADRILL    ; 6e
	const BREEZEON    ; 6f
	const RUMBLEBEE     ; 70
	const QUILLADIN    ; 71
	const KITEKAT    ; 72
	const WYVERNEON ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const CORPHISH    ; 76
	const CRAWDAUNT    ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const FRAXURE   ; 7a
	const SCYTHER    ; 7b
	const WOOBAT       ; 7c
	const AXEW ; 7d
	const BERGMITE     ; 7e
	const ABSOL    ; 7f
	const LARVESTA     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const BUDEW      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const MISMAGIUS    ; 89
	const ARCHEN    ; 8a
	const ARCHEOPS    ; 8b
	const CUBBITE     ; 8c
	const SMOLDERDON   ; 8d
	const POPPLIO ; 8e
	const BRIONNE    ; 8f
	const GIGATUMBLE   ; 90
	const SERENOSE     ; 91
	const CELESNOUT    ; 92
	const OLEANDIRE    ; 93
	const RAZORINK  ; 94
	const DIANCIE  ; 95
	const KARWAII     ; 96
	const KEIRW        ; 97
DEF JOHTO_POKEMON EQU const_value
	const LULLABEAR  ; 98
	const TEDDYAWN    ; 99
	const URSAMIMIR   ; 9a
	const PUPAGE  ; 9b
	const STAGUARD    ; 9c
	const MANDIBLADE ; 9d
	const REPTRIP   ; 9e
	const RAVETILE   ; 9f
	const HALLUCIGON ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const LEDYBA     ; a5
	const LEDIAN     ; a6
	const SPINARAK   ; a7
	const ARIADOS    ; a8
	const GARGANACL     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const COMPHOST     ; ad
	const BOUQUTE  ; ae
	const TOGETIC     ; af
	const TOGEKISS    ; b0
	const MEEKSTERY       ; b1
	const MURKLOOM       ; b2
	const PALLAZIP   ; b3
	const PALLAZAP    ; b4
	const CYCLIZAR   ; b5
	const ETERNITAIR  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const CHARGETIC  ; b9
	const LUMINEON   ; ba
	const HOPPIP     ; bb
	const SKIPLOOM   ; bc
	const JUMPLUFF   ; bd
	const ATMOSPHOX      ; be
	const YANMEGA    ; bf
	const AUDINO   ; c0
	const YANMA      ; c1
	const CROAGUNK    ; c2
	const TOXICROAK   ; c3
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const VELUZA   ; c7
	const MISDREAVUS ; c8
	const UNOWN      ; c9
	const HEATMOR  ; ca
	const MIENSHAO  ; cb
	const ROSELIA     ; cc
	const ROSERADE ; cd
	const WHIZZEL  ; ce
	const GLIGAR     ; cf
	const MOGGIBOX   ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const ROARIGAMI   ; d3
	const SCIZOR     ; d4
	const SPLASHFUL    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const HONCHKROW     ; da
	const WEAVILE   ; db
	const GLACEON     ; dc
	const LEAFEON  ; dd
	const BREAMING    ; de
	const BURRUSSET   ; df
	const DRUDDIGON  ; e0
	const GLISCOR   ; e1
	const ARACHNEON  ; e2
	const SANDEON   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const SYLVEON     ; e7
	const CHAMPEON    ; e8
	const CHESPIN   ; e9
	const AZURILL   ; ea
	const HAXORUS   ; eb
	const SIMISULK    ; ec
	const MIENFOO  ; ed
	const AVALUGG   ; ee
	const SWOOBAT     ; ef
	const CRYOGONAL      ; f0
	const VOLCARONA    ; f1
	const CHESNAUGHT    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const TYLWISH     ; fb
DEF NUM_POKEMON EQU const_value - 1
	const_skip       ; fc
	const EGG        ; fd

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
DEF NUM_UNOWN EQU const_value - 1 ; 26
