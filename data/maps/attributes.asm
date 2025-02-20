MACRO map_attributes
; label, map, border block, connections
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3, \2_HEIGHT, \2_WIDTH
	dba \1_BlockData, \1_MapScriptHeader
	db \4
ENDM
	map_attributes CollumitoBeach, COLLUMITO_BEACH, $5, NORTH
	connection north, Route1, ROUTE_1, 5

	map_attributes Route1, ROUTE_1, $5, NORTH | SOUTH
	connection north, GulleyTown, GULLEY_TOWN, 7
	connection south, CollumitoBeach, COLLUMITO_BEACH, -5

	map_attributes GulleyTown, GULLEY_TOWN, $5, SOUTH | EAST
	connection south, Route1, ROUTE_1, -7
	connection east, Route2, ROUTE_2, -8

	map_attributes Route2, ROUTE_2, $5, WEST
	connection west, GulleyTown, GULLEY_TOWN, 8

	; no connection maps
	map_attributes NewBarkTown, NEW_BARK_TOWN, $5, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $0, 0
	map_attributes WillsRoom, WILLS_ROOM, $0, 0
	map_attributes KogasRoom, KOGAS_ROOM, $0, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $0, 0
	map_attributes KarensRoom, KARENS_ROOM, $0, 0
	map_attributes LancesRoom, LANCES_ROOM, $0, 0
	map_attributes HallOfFame, HALL_OF_FAME, $0, 0
	map_attributes PokeCenter2F, POKECENTER_2F, $0, 0
	map_attributes TradeCenter, TRADE_CENTER, $0, 0
	map_attributes Colosseum, COLOSSEUM, $0, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $0, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $0, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $0, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $0, 0
	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $5, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $0, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $0, 0
	; Victory Island maps
	map_attributes CollumitoShipCabins, COLLUMITO_SHIP_CABINS, $0, 0
	map_attributes CollumitoShip, COLLUMITO_SHIP, $0, 0
	map_attributes CollumitoShipKitchen, COLLUMITO_SHIP_KITCHEN, $0, 0
	
	
	
	
