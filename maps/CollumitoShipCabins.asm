CollumitoShipCabins_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  0, COLLUMITO_SHIP, 1
    warp_event  20, 0, COLLUMITO_SHIP, 2
    warp_event  30, 0, COLLUMITO_SHIP, 3

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPTEXT, CabinIslandBrochureText
    bg_event  6,  1, BGEVENT_UP, SettingsPC
    bg_event 33,  1, BGEVENT_JUMPTEXT, CabinIslandBrochure2Text
	bg_event  7,  6, BGEVENT_JUMPTEXT, CabinPlayersBedText
    bg_event  7,  7, BGEVENT_JUMPTEXT, CabinPlayersBedText
    bg_event 35,  7, BGEVENT_ITEM + ORAN_BERRY, EVENT_COLLUMITO_SHIP_HIDDEN_BERRY

	def_object_events
    pokemon_event 21, 5, MARILL, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_BLUE, CollumitoShipMarillText, -1
	object_event 19,  6, SPRITE_LADY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_COMMAND, jumptextfaceplayer, CollumitoShipCleaningLadyText, -1


SettingsPC:

if DEF(DEBUG)

	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, 1, NUM_KEY_ITEMS + 1
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr
	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem ICE_STONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem ODD_SOUVENIR, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem MULCH, 99
	giveitem SWEET_HONEY, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem MINT_LEAF, 99
	giveitem BOTTLE_CAP, 99
	giveitem BIG_NUGGET, 99
	giveitem ARMOR_SUIT, 1
	; all decorations except Diploma
for x, EVENT_DECO_BED_1, EVENT_DECO_BIG_LAPRAS_DOLL + 1
	setevent x
endr
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	givecoins 50000
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_BEAT_ELITE_FOUR_AGAIN
	setevent EVENT_BATTLE_TOWER_OPEN
	clearevent EVENT_BATTLE_TOWER_CLOSED
	; fly anywhere
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	; magnet train works
	setevent EVENT_RESTORED_POWER_TO_KANTO
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	; good party
	givepoke MEWTWO, PLAIN_FORM, 100, BRIGHTPOWDER
	loadmem wPartyMon1EVs+0, 252
	loadmem wPartyMon1EVs+1, 252
	loadmem wPartyMon1EVs+2, 252
	loadmem wPartyMon1EVs+3, 252
	loadmem wPartyMon1EVs+4, 252
	loadmem wPartyMon1EVs+5, 252
	loadmem wPartyMon1DVs+0, $ff
	loadmem wPartyMon1DVs+1, $ff
	loadmem wPartyMon1DVs+2, $ff
	loadmem wPartyMon1Personality, ABILITY_2 | NAT_SATK_UP_ATK_DOWN
	loadmem wPartyMon1Stats+0, HIGH(999)
	loadmem wPartyMon1Stats+1, LOW(999)
	loadmem wPartyMon1Stats+2, HIGH(999)
	loadmem wPartyMon1Stats+3, LOW(999)
	loadmem wPartyMon1Stats+4, HIGH(999)
	loadmem wPartyMon1Stats+5, LOW(999)
	loadmem wPartyMon1Stats+6, HIGH(999)
	loadmem wPartyMon1Stats+7, LOW(999)
	loadmem wPartyMon1Stats+8, HIGH(999)
	loadmem wPartyMon1Stats+9, LOW(999)
	; hm slave
	givepoke MEW, PLAIN_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, FLY
	loadmem wPartyMon2Moves+1, HEADBUTT
	loadmem wPartyMon2Moves+2, DIG
	loadmem wPartyMon2Moves+3, FRESH_SNACK
	loadmem wPartyMon2PP+0, 15
	loadmem wPartyMon2PP+1, 15
	loadmem wPartyMon2PP+2, 10
	loadmem wPartyMon2PP+3, 10
	; variant form test
	givepoke TYPHLOSION, HISUIAN_FORM, 50
	loadmem wPartyMon3Shiny, SHINY_MASK
	; ext species test
	givepoke WYRDEER, 50
	givepoke DUDUNSPARCE, DUDUNSPARCE_THREE_SEGMENT_FORM, 50
	; evolve during battle
	givepoke PUPITAR, 54
	loadmem wPartyMon6Exp+2, LOW(207967)
	loadmem wPartyMon6Exp+1, HIGH(207967)
	loadmem wPartyMon6Exp+0, 207967 >> 16
	; fill pokedex
	callasm FillPokedex
;	; new bark events
	addcellnum PHONE_MOM
	setmapscene PLAYERS_HOUSE_1F, $1
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	addcellnum PHONE_ELM
;	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
;	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
;	setevent EVENT_GOT_A_POKEMON_FROM_ELM
;	setevent EVENT_RIVAL_CHERRYGROVE_CITY
;	setevent EVENT_LYRA_IN_ELMS_LAB
;	setmapscene ELMS_LAB, $5
;	setmapscene NEW_BARK_TOWN, $2
	; cherrygrove events
	setevent EVENT_GUIDE_GENT_IN_HIS_HOUSE
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	; route 31 events
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	setevent EVENT_INTRODUCED_ROUTE_LEADERS
	; azalea events
	setevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	setevent EVENT_KURTS_HOUSE_KURT_1
	; goldenrod events
	setevent EVENT_BEAT_CAMPER_TODD
	addcellnum PHONE_LYRA
	setevent EVENT_LYRA_DAYCARE
	setevent EVENT_NURSE_SAW_TRAINER_STAR
	setevent EVENT_INTRODUCED_TEALA
	addcellnum PHONE_BILL
	setevent EVENT_BEAT_PICNICKER_KIM
	setevent EVENT_BEAT_BREEDER_THERESA
	; ecruteak events
	setevent EVENT_RIVAL_BURNED_TOWER
	setevent EVENT_HOLE_IN_BURNED_TOWER
	; olivine events
	setevent EVENT_RIVAL_OLIVINE_CITY
	; blackthorn events
	setevent EVENT_BEAT_DRAGON_TAMER_DARIN
	; vermilion events
	closetext
	end

FillPokedex:
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, NUM_UNIQUE_POKEMON / 8
	rst ByteFill
if NUM_UNIQUE_POKEMON % 8
	ld [hl], 2**(NUM_UNIQUE_POKEMON % 8) - 1
endc
	ret

else
; TODO : Special_SetInitialOptions
    opentext
    writetext ShipCabinSetInitalOptionsText
    waitbutton
    closetext
    end

endc


ShipCabinSetInitalOptionsText:
	text "TODO:"

	para "Make this where"
	line "you can set the"
	cont "initial options."

	para "I.E."
	line "Physical Special"
	cont "Split,"
    cont "Natures,"
    cont "Abilities…"

    para "Etcetera."
	done

CabinIslandBrochureText:
    text "Calling all"
	line "#mon trainers!"

	para "Victory Island"
	line "will be hosting"
    cont "this year's"
    cont "Regional"
    cont "Championships."

    para "Only the greatest"
	line "trainers of Kanto,"
    cont "Johto,"
    cont "Hoenn,"
    cont "and Sinnoh will"
    cont "stand a chance!"
	done

CabinIslandBrochure2Text:
    text "Shrouded in"
	line "mystery…"

	para "Ripe with"
	line "Adventure…"

    para "Victory Island"
	line "awaits the boldest"
    cont "of trainers!"
	done

CabinPlayersBedText:
    text "No time to"
	line "sleep now."
	done

CollumitoShipMarillText:
    text "Marill, Mar!"
	done

CollumitoShipCleaningLadyText:
    text "Cleaning rooms"
	line "can be dull work."

	para "But having Mari"
	line "here makes it"
    cont "easier."
	done