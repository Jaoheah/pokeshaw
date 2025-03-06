TypeNames:
	table_width 2

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Bird
	dw .Bug
	dw .Ghost

REPT UNUSED_TYPES_END - UNUSED_TYPES
	dw .Normal
ENDR

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon

	assert_table_length NUM_TYPES

.Normal:   db "𐑯𐑹𐑥𐑩𐑤@"
.Fighting: db "𐑓𐑲𐑑𐑦𐑙@"
.Flying:   db "𐑓𐑤𐑲𐑦𐑙@"
.Poison:   db "𐑐𐑶𐑟𐑩𐑯@"
.Fire:     db "𐑓𐑲𐑼@"
.Water:    db "𐑢𐑷𐑑𐑼@"
.Grass:    db "𐑜𐑮𐑭𐑕@"
.Electric: db "𐑦𐑤𐑧𐑒𐑑𐑮𐑦𐑒@"
.Psychic:  db "𐑕𐑲𐑒𐑦𐑒@"
.Ice:      db "𐑲𐑕@"
.Ground:   db "𐑜𐑮𐑬𐑯𐑛@"
.Rock:     db "𐑮𐑪𐑒@"
.Bird:     db "𐑚𐑻𐑛@"
.Bug:      db "𐑚𐑳𐑜@"
.Ghost:    db "𐑜𐑴𐑕𐑑@"
.Dragon:   db "𐑛𐑮𐑨𐑜𐑩𐑯@"
