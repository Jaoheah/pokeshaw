PrintStatusAilment::
	ld a, [de]
	bit PSN, a
	jr nz, .psn
	bit BRN, a
	jr nz, .brn
	bit FRZ, a
	jr nz, .frz
	bit PAR, a
	jr nz, .par
	and SLP_MASK
	ret z
	ld a, "𐑕"
	ld [hli], a
	ld a, "𐑤"
	ld [hli], a
	ld [hl], "𐑐"
	ret
.psn
	ld a, "𐑐"
	ld [hli], a
	ld a, "𐑟"
	ld [hli], a
	ld [hl], "𐑯"
	ret
.brn
	ld a, "𐑚"
	ld [hli], a
	ld a, "𐑻"
	ld [hli], a
	ld [hl], "𐑯"
	ret
.frz
	ld a, "𐑓"
	ld [hli], a
	ld a, "𐑮"
	ld [hli], a
	ld [hl], "𐑟"
	ret
.par
	ld a, "𐑐"
	ld [hli], a
	ld a, "𐑼"
	ld [hli], a
	ld [hl], "𐑨"
	ret
