MapGroupRoofs:
; entries correspond to map groups
; values are indexes for LoadMapGroupRoof.Roofs
	table_width 1
	db -1			 ; 0
	db ROOF_OLIVINE  ; 1 (Battle Tower Outside)
	db -1            ; 2
	db -1            ; 3
	db ROOF_NEW_BARK ; 4 (New Bark Town)
	db ROOF_NEW_BARK ; 5 (Collumito Beach)
	assert_table_length NUM_MAP_GROUPS + 1
