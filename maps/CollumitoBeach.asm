CollumitoBeach_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 16, 25, COLLUMITO_SHIP, 6
    warp_event 17, 25, COLLUMITO_SHIP, 6

	def_coord_events

	def_bg_events

	def_object_events
    object_event 16, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CollumitoBoatText, -1
	object_event 16, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptext, CollumitoBoatText, -1

CollumitoBoatText:
    text "It's the boat that"
    line "brought you here."
    done