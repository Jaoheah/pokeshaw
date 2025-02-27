MACRO two_option_menu
	db \1, \2, \3
	dw \4
ENDM

TwoOptionMenuStrings:
; entries correspond to *_MENU constants
	table_width 5
	; width, height, blank line before first menu item?, text pointer
	two_option_menu 4, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthWestMenu
	two_option_menu 6, 3, FALSE, .SouthEastMenu
	two_option_menu 6, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthEastMenu
	two_option_menu 7, 3, FALSE, .TradeCancelMenu
	two_option_menu 7, 4, TRUE,  .HealCancelMenu
	two_option_menu 4, 3, FALSE, .NoYesMenu
	assert_table_length NUM_TWO_OPTION_MENUS

.NoYesMenu:
	db   "𐑯𐑴"
	next "𐑘𐑧𐑕@"

.YesNoMenu:
	db   "𐑘𐑧𐑕"
	next "𐑯𐑴@"

.NorthWestMenu:
	db   "𐑯𐑹𐑔"
	next "𐑢𐑧𐑕𐑑@"

.SouthEastMenu:
	db   "𐑕𐑬𐑔"
	next "𐑰𐑕𐑑@"

.NorthEastMenu:
	db   "𐑯𐑹𐑔"
	next "𐑰𐑕𐑑@"

.TradeCancelMenu:
	db   "𐑑𐑮𐑱𐑛"
	next "𐑒𐑨𐑯𐑕𐑩𐑤@"

.HealCancelMenu:
	db   "𐑣𐑰𐑤"
	next "𐑒𐑨𐑯𐑕𐑩𐑤@"
