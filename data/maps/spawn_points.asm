MACRO spawn
; map, y, x
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4

	spawn COLLUMITO_SHIP_CABINS,         5,  5
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
	spawn NEW_BARK_TOWN,                15,  6
	spawn BATTLE_TOWER_OUTSIDE, 	     8, 10

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
