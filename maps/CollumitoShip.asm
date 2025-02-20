CollumitoShip_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  8, COLLUMITO_SHIP_CABINS, 1
    warp_event 11,  8, COLLUMITO_SHIP_CABINS, 2
    warp_event 15,  8, COLLUMITO_SHIP_CABINS, 3
    warp_event  5, 15, COLLUMITO_SHIP_KITCHEN, 1
    warp_event 15, 15, COLLUMITO_SHIP_KITCHEN, 4
	warp_event  9,  1, COLLUMITO_BEACH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 12, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CollumitoShipHallwaySailorText, -1


CollumitoShipHallwaySailorText:
    text "I wish we"
	line "would dock"
    cont "a while longer."

	para "Collumito Beach"
	line "is beautiful."
	done