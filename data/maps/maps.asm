MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location sign: a SIGN_* constant
;\5: location: from constants/landmark_constants.asm
;\6: music: a MUSIC_* constant
;\7: phone service flag: TRUE to prevent phone calls
;\8: time of day: a PALETTE_* constant
	db \2
	dn \4, \3
	dw \1_MapAttributes
	db \5, \6
	dn \7, \8
ENDM

MapGroupPointers::
; pointers to the first map header of each map group
	table_width 2
	dw MapGroup1
	dw MapGroup2
	dw MapGroup3
	dw MapGroup4
	dw MapGroup5
	assert_table_length NUM_MAP_GROUPS

MapGroup1:
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, SIGN_BUILDING, BATTLE_TOWER, MUSIC_BATTLE_TOWER_LOBBY, 1, PALETTE_DAY
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, SIGN_BUILDING, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, 1, PALETTE_DAY
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, SIGN_BUILDING, BATTLE_TOWER, MUSIC_NONE, 1, PALETTE_DAY
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, SIGN_BUILDING, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, 1, PALETTE_DAY
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, SIGN_BUILDING, BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, 0, PALETTE_AUTO

MapGroup2:
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 0, PALETTE_DAY
	map WillsRoom, TILESET_GYM, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 1, PALETTE_DAY
	map KogasRoom, TILESET_GYM, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 1, PALETTE_DAY
	map BrunosRoom, TILESET_GYM, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 1, PALETTE_DAY
	map KarensRoom, TILESET_GYM, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 1, PALETTE_NITE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, 1, PALETTE_DAY
	map HallOfFame, TILESET_ICE_PATH, INDOOR, SIGN_BUILDING, INDIGO_PLATEAU, MUSIC_WALLY_ENCOUNTER_ORAS, 1, PALETTE_DAY
	
MapGroup3:
	map PokeCenter2F, TILESET_POKECENTER, INDOOR, SIGN_BUILDING, SPECIAL_MAP, MUSIC_POKEMON_CENTER, 1, PALETTE_DAY
	map TradeCenter, TILESET_GATE, INDOOR, SIGN_BUILDING, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, 1, PALETTE_DAY
	map Colosseum, TILESET_GATE, INDOOR, SIGN_BUILDING, SPECIAL_MAP, MUSIC_CHERRYGROVE_CITY, 1, PALETTE_DAY

MapGroup4:
	map NewBarkTown, TILESET_JOHTO_TRADITIONAL, TOWN, SIGN_WOOD, NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, 0, PALETTE_AUTO
	map PlayersHouse1F, TILESET_JOHTO_HOUSE, INDOOR, SIGN_BUILDING, NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, 0, PALETTE_DAY
	map PlayersHouse2F, TILESET_JOHTO_HOUSE, INDOOR, SIGN_BUILDING, NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, 0, PALETTE_DAY

MapGroup5:
	map CollumitoShipCabins, TILESET_LIGHTHOUSE, INDOOR, SIGN_BUILDING, NEW_BARK_TOWN, MUSIC_SURF_KANTO, 0, PALETTE_DAY
	map CollumitoShip, TILESET_LIGHTHOUSE, INDOOR, SIGN_BUILDING, NEW_BARK_TOWN, MUSIC_SURF_KANTO, 0, PALETTE_DAY
	map CollumitoShipKitchen, TILESET_LIGHTHOUSE, INDOOR, SIGN_BUILDING, NEW_BARK_TOWN, MUSIC_SURF_KANTO, 0, PALETTE_DAY
