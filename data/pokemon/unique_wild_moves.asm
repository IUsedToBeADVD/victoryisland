MACRO unique_moves
	db \1 ; landmark
	dp \2 ; species
	db \3 ; move
ENDM

; TODO: finish unique moves
UniqueWildMoves:
	; event mons (100% chance, see engine/battle/unique_wild_moves.asm)

	; wild mons
	
	db -1
