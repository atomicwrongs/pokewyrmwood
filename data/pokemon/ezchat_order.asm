; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db TRUBBISH, GARBODOR, CRAWDAUNT, ARIADOS, RAVETILE, UNOWN, -1
.i:        db EEVEE, CUBTERRA, SPINARAK, LEAFEON, PUGILHISS, -1
.u:        db ARCANINE, CHARGETIC, WEEPINBELL, VICTREEBEL, CROAGUNK, GLACEON, -1
.e:        db SANDEON, ATMOSPHOX, ESPEON, SIMISEER, SWOOBAT, AXEW, ENTEI, -1
.o:        db HALLUCIGON, FURRET, DRUDDIGON, PRIMEAPE, SENTRET, AZURILL, CHERUBI, CHERRIM, ARCHEOPS, ARCHEN, -1
.ka_ga:    db GROWLITHE, PANSULK, DIANCIE, CHARGETIC, BRIONNE, CUBBITE, SMOLDERDON, MIENFOO, FUMBLIL, TUMBLOT, CANDYCE, CUBONE, MAROWAK, WYVERNEON, -1
.ki_gi:    db AUDINO, CATERPIE, GYARADOS, CONTAGEON, NINETALES, MIENSHAO, ETERNITAIR, KINGDRA, KINGLER, -1
.ku_gu:    db PEEKABOX, ROSELIA, GLIGAR, KRABBY, GRANBULL, GARGANACL, -1
.ke_ge:    db VOLCANNY, MANECTRIC, LARVESTA, -1
.ko_go:    db MAGIKARP, KLINK, WEAZARD, ELECTRIKE, SIMISTRIKE, MINERAT, DREADBARE, SYLVEON, BUNEARY, CIRCUSHEET, NACLSTACK, URSTEEL, BEARROW, VENONAT, -1
.sa_za:    db BREEZEON, PUPITAR, BREAMING, PANSEER, SERENOSE, JOLTEON, SANDSHREW, SANDSLASH, -1 ; RUMBLEBEE should lead this list
.shi_ji:   db SEADRA, SHELLDER, VAPOREON, CATNIPPY, -1
.su_zu:    db SUICUNE, STARMIE, SCYTHER, NACLI, GEODENT, BROWSERAPH, SIGILYPH, -1
.se_ze:    db GARCHOMP, TYLWISH, -1
.so_zo:    db HEATMOR, -1
.ta_da:    db CAPOEIROO, HORSEA, MUTTSCRAP, -1
.chi_dhi:  db LULLABEAR, CHINCHOU, -1
.tsu_du:   db SPLASHFUL, -1
.te_de:    db WALLOPY, BURRUSSET, GLISCOR, HOUNDOUR, CYCLIZAR, -1
.to_do:    db CRYSTALEON, FUTUREON, HAXORUS, DRILBUR, KILOWATREL, TOGETIC, TOGEPI, CORPHISH, METAPOD, CHAMPEON, -1
.na:       db SQUEAKABOO, JUNKANINE, -1
.ni:       db NIDOKING, NIDOQUEEN, NIDORAN_M, NIDORAN_F, NIDORINA, NIDORINO, THREADLY, SNEASEL, CATERPEBBL, LUMINEON, FINNEON, UMBRAELLA, -1
.nu:       db TOXICROAK, -1
.ne:       db MEEKSTERY, MURKLOOM, -1
.no:       db WHIZZEL, -1
.ha_ba_pa: db MEWLT, MOGGIBOX, MANDIBLADE, RAZORINK, BUTTERFREE, SCIZOR, HOPPIP, CHESNAUGHT, PARASOUL, UMBRAELLA, ROARIGAMI, FRAXURE, SIMISULK, CLOYSTER, TYRANITAR, -1
.hi_bi_pi: db COMPHOST, SQUEAKRAG, PIKACHU, MARACTUS, HARLYENA, MIGHTYENA, PICHU, GUARDEN, KOMMO_O, STARYU, PUPAGE, YANMEGA, TEDDIURSA, KLINGKLANG, -1
.fu_bu_pu: db CELESNOUT, FLAREON, BUNDERVOLT, BERGMITE, ROSERADE, TOGEKISS, JANGMO_O, PRIMARINA, HAKAMO_O, POPPLIO, CRYOGONAL, BOUQUTE, UMBREON, GIGATUMBLE, BLOSSAROMA, SNUBBULL, -1
.he_be_pe: db TEDDYAWN, GRIMER, MUK, HERACROSS, HOUNDOOM, THREDLESS, ABOMINYABL, -1
.ho_bo_po: db HO_OH, HOOTHOOT, POOCHYENA, SPECTREON, SKIPLOOM, MISMAGIUS, CHESPIN, -1
.ma:       db WEAVILE, HONCHKROW, STAGUARD, BELLSPROUT, EXCADRILL, MARILL, AZUMARILL, SHIVERKIT, MANKEY, CHAMPEON, -1
.mi:       db OLEANDIRE, KEIRW, KARWAII, VOLCARONA, -1
.mu:       db MISDREAVUS, AVALUGG, -1
.me:       db URSAMIMIR, BUDEW, WATTREL, PALLAZIP, -1
.mo:       db PALLAZAP, VENOMOTH, KITEKAT, -1
.ya:       db VELUZA, FLOATZEL, BUIZEL, MURKROW, YANMA, -1
.yu:       db MAGMEANIE, -1
.yo:       db LARVITAR, NOCTOWL, -1
.ra:       db RAIKOU, RAICHU, QUILLADIN, LOPUNNY, LAPRAS, MOMENTAIRY, LANTURN, -1
.ri:       db GIBLE, GABITE, URSARING, -1
.ru:       db WOOBAT, LUGIA, -1
.re:       db KLANG, LEDIAN, LEDYBA, -1
.ro:       db VULPIX, -1
.wa:       db JUMPLUFF, REPTRIP, PANSTRIKE ;, -1
.end:      db -1
