CollumitoShipKitchen_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
    warp_event  2, 13, COLLUMITO_SHIP, 4
    warp_event  3, 13, COLLUMITO_SHIP, 4
	warp_event 10, 13, COLLUMITO_SHIP, 5
    warp_event 11, 13, COLLUMITO_SHIP, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CollumitoShipLeftoversSailorText, -1


CollumitoShipLeftoversSailorText:
    text "Sorry kiddo."

	para "The food is all"
	line "gone."

    para "We're cleaning"
    line "and preparing for"
    cont "our next voyage."
	done