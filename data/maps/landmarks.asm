MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark 76, 52, SpecialMapName
	landmark 108, 28, NepetaGroveName
	landmark 52, 50, MtGojiName
	landmark 52, 44, JuniperCaveName
	landmark 36, 36, GinsengTowerName
	landmark 28, 44, GoldensealCityName
	landmark 28, 60, Route6Name
	landmark 28, 108, PersimmonCityName
	landmark 36, 84, LycopusCopseName
	landmark 28, 92, Route5Name
	landmark 28, 100, WitchhazelWoodsName
	landmark 28, 76, HibiscusCityName
	landmark 44, 108, RagweedSwampName
	landmark 68, 76, LiquoriceFallsName
	landmark 60, 84, PassifloraTownName
	landmark 60, 100, Route4Name
	landmark 60, 108, CamphorCapeName
	landmark 68, 116, MagnoliaIsletName
	landmark 68, 108, Route3Name
	landmark 84, 116, JacarandaTownName
	landmark 92, 92, ValerianPassName
	landmark 140, 100, MtGingerName
	landmark 124, 100, TauricTownName
	landmark 108, 100, Route2Name
	landmark 108, 76, ChamomileCityName
	landmark 124, 76, BilberryWoodsName
	landmark 140, 76, TarragonTownName
	landmark 140, 60, Route1Name
	landmark 140, 44, LittlesageTownName
	assert_table_length KANTO_LANDMARK        
	landmark 1, 1, PalletTownName
	landmark 1, 1, KantoName1
	landmark 1, 1, KantoName2
	landmark  28,  36, IndigoPlateauName         ;19
	landmark 140, 116, FastShipName         ;20
	assert_table_length NUM_LANDMARKS


SpecialMapName:      db "--------@"
NepetaGroveName:     db "NEPETA¯GROVE@"
MtGojiName:          db "MT. GOJI@"
JuniperCaveName:     db "JUNIPER¯CAVE@"
GinsengTowerName:    db "GINSENG¯TOWER@"
GoldensealCityName:  db "GOLDENSEAL¯CITY@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
BilberryWoodsName:   db "BILBERRY¯WOODS@"
ChamomileCityName:   db "CHAMOMILE¯CITY@"
CamphorCapeName:     db "CAMPHOR¯CAPE@"
HibiscusCityName:    db "HIBISCUS¯CITY@"
JacarandaTownName:   db "JACARANDA¯TOWN@"
LiquoriceFallsName:  db "LIQUORICE¯FALLS@"
LittlesageTownName:  db "LITTLESAGE¯TOWN@"
LycopusCopseName:    db "LYCOPUS¯COPSE@"
MagnoliaIsletName:   db "MAGNOLIA¯ISLET@"
MtGingerName:        db "MT GINGER@"
PassifloraTownName:  db "PASSIFLORA¯TOWN@"
PersimmonCityName:   db "PERSIMMON¯CITY@"
RagweedSwampName:    db "RAGWEED¯SWAMP@"
TarragonTownName:    db "TARRAGON¯TOWN@"
TauricTownName:      db "TAURIC¯TOWN@"
ValerianPassName:    db "VALERIAN¯PASS@"
WitchhazelWoodsName: db "WITCHHAZEL¯WOODS@"
;kanto placeholders
FastShipName:        db "FAST SHIP@"           ;21
PalletTownName:      db "PALLET@"
KantoName1:          db "W@"
KantoName2:          db "W@"
IndigoPlateauName:   db "INDIGO@"