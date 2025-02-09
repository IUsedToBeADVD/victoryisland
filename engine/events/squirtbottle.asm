_Squirtbottle:
	ld hl, .SquirtbottleScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	refreshmap
	special UpdateTimePals
	callasm .CheckCanUseSquirtbottle
	iffalsefwd .NothingHappenedScript
; TODO: Define WateredWeirdTreeScript on the map of the Squirtbottle Sudowoodo.
	farsjump ObjectEvent ; WateredWeirdTreeScript

.NothingHappenedScript:
	farjumptext _SquirtbottleNothingText

.CheckCanUseSquirtbottle:
; TODO: Replace GROUP_NONE and MAP_NONE with the map of the Squirtbottle Sudowoodo.
	ld a, [wMapGroup]
	cp GROUP_NONE ; ROUTE_36
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_NONE ; ROUTE_36
	jr nz, .nope

	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_SUDOWOODO
	jr nz, .nope

	ld a, $1
	ldh [hScriptVar], a
	ret

.nope
	xor a
	ldh [hScriptVar], a
	ret
