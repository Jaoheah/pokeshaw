; $00-$17 are TX_* constants (see macros/scripts/text.asm)

; Control characters (see home/text.asm)

	charmap "<NULL>",    $00
	charmap "<PAGE>",    $49
	charmap "<PKMN>",    $4a ; "<PK><MN>"
	charmap "<_CONT>",   $4b ; implements "<CONT>"
	charmap "<SCROLL>",  $4c
	charmap "<NEXT>",    $4e
	charmap "<LINE>",    $4f
	charmap "@",         $50 ; string terminator
	charmap "<PARA>",    $51
	charmap "<PLAYER>",  $52 ; wPlayerName
	charmap "<RIVAL>",   $53 ; wRivalName
	charmap "#",         $54 ; "POKé"
	charmap "<CONT>",    $55
	charmap "<……>",      $56 ; "……"
	charmap "<DONE>",    $57
	charmap "<PROMPT>",  $58
	charmap "<TARGET>",  $59
	charmap "<USER>",    $5a
	charmap "<PC>",      $5b ; "PC"
	charmap "<TM>",      $5c ; "TM"
	charmap "<TRAINER>", $5d ; "TRAINER"
	charmap "<ROCKET>",  $5e ; "ROCKET"
	charmap "<DEXEND>",  $5f

; Actual characters (from gfx/font/font_extra.png)

	charmap "<BOLD_A>",  $60 ; unused
	charmap "<BOLD_B>",  $61 ; unused
	charmap "<BOLD_C>",  $62 ; unused
	charmap "<BOLD_D>",  $63 ; unused
	charmap "<BOLD_E>",  $64 ; unused
	charmap "<BOLD_F>",  $65 ; unused
	charmap "<BOLD_G>",  $66 ; unused
	charmap "<BOLD_H>",  $67 ; unused
	charmap "<BOLD_I>",  $68 ; unused
	charmap "<BOLD_V>",  $69
	charmap "<BOLD_S>",  $6a
	charmap "<BOLD_L>",  $6b ; unused
	charmap "<BOLD_M>",  $6c ; unused
	charmap "<COLON>",   $6d ; colon with tinier dots than ":"
	charmap "ぃ",         $6e ; hiragana small i, unused
	charmap "ぅ",         $6f ; hiragana small u, unused
	charmap "‘",         $70 ; opening single quote
	charmap "’",         $71 ; closing single quote
	charmap "“",         $72 ; opening quote
	charmap "”",         $73 ; closing quote
	;; charmap "·",         $74 ; middle dot, unused
	charmap "…",         $75 ; ellipsis
	charmap "ぁ",         $76 ; hiragana small a, unused
	charmap "ぇ",         $77 ; hiragana small e, unused
	charmap "ぉ",         $78 ; hiragana small o, unused

	charmap "┌",         $79
	charmap "─",         $7a
	charmap "┐",         $7b
	charmap "│",         $7c
	charmap "└",         $7d
	charmap "┘",         $7e
	charmap " ",         $7f

; Actual characters (from gfx/font/font_battle_extra.png)

	charmap "<LV>",      $6e

	charmap "<to>",      $70 ; narrow "to"

	charmap "『",         $72 ; Japanese opening quote, unused
	charmap "<ID>",      $73
	charmap "№",         $74

; Actual characters (from other graphics files)

	; needed for ShowPokedexDataInternal (see engine/menus/pokedex.asm)
	charmap "′",         $60 ; gfx/pokedex/pokedex.png
	charmap "″",         $61 ; gfx/pokedex/pokedex.png

	; needed for StatusScreen (see engine/pokemon/status_screen.asm)
	charmap "<BOLD_P>",  $72 ; gfx/font/P.1bpp

	; needed for LoadTownMap_Fly (see engine/items/town_map.asm)
	charmap "▲",         $ed ; gfx/town_map/up_arrow.1bpp

	; needed for PrintAlphabet (see engine/menus/naming_screen.asm)
	charmap "<ED>",      $f0 ; gfx/font/ED.1bpp

; Actual characters (from gfx/font/font.png)

	charmap "A",         $cb
	charmap "B",         $cc
	charmap "C",         $cd
	charmap "D",         $ce
	charmap "E",         $cf
	charmap "F",         $d0
	charmap "G",         $d1
	charmap "H",         $d2
	charmap "I",         $d3
	charmap "J",         $d4
	charmap "K",         $d5
	charmap "L",         $d6
	charmap "M",         $d7
	charmap "N",         $d8
	charmap "O",         $d9
	charmap "P",         $da
	charmap "Q",         $db
	charmap "R",         $dc
	charmap "S",         $dd
	charmap "T",         $de
	charmap "U",         $df
	charmap "V",         $e4
	charmap "W",         $e5
	charmap "X",         $e9
	charmap "Y",         $ea
	charmap "Z",         $eb

	charmap "(",         $9a
	charmap ")",         $9b
	charmap ":",         $9c
	charmap ";",         $9d
	charmap "[",         $9e
	charmap "]",         $9f

	charmap "a",         $cb
	charmap "b",         $cc
	charmap "c",         $cd
	charmap "d",         $ce
	charmap "e",         $cf
	charmap "f",         $d0
	charmap "g",         $d1
	charmap "h",         $d2
	charmap "i",         $d3
	charmap "j",         $d4
	charmap "k",         $d5
	charmap "l",         $d6
	charmap "m",         $d7
	charmap "n",         $d8
	charmap "o",         $d9
	charmap "p",         $da
	charmap "q",         $db
	charmap "r",         $dc
	charmap "s",         $dd
	charmap "t",         $de
	charmap "u",         $df
	charmap "v",         $e4
	charmap "w",         $e5
	charmap "x",         $e9
	charmap "y",         $ea
	charmap "z",         $eb

	charmap "é",         $ba
	charmap "'d",        $bb
	charmap "'l",        $bc
	charmap "'s",        $bd
	charmap "'t",        $be
	charmap "'v",        $bf

	charmap "'",         $e0
	charmap "<PK>",      $e1
	charmap "<MN>",      $e2
	charmap "-",         $e3

	charmap "'r",        $e4
	charmap "'m",        $e5

	charmap "?",         $e6
	charmap "!",         $e7
	charmap ".",         $e8

	charmap "ァ",         $e9 ; katakana small a, unused
	charmap "ゥ",         $ea ; katakana small u, unused
	charmap "ェ",         $eb ; katakana small e, unused

	charmap "▷",         $ec
	charmap "▶",         $ed
	charmap "▼",         $ee
	charmap "♂",         $ef
	charmap "¥",         $f0
	charmap "×",         $f1
	charmap "<DOT>",     $f2 ; decimal point; same as "." in English
	charmap "/",         $f3
	charmap ",",         $f4
	charmap "♀",         $f5

	charmap "0",         $f6
	charmap "1",         $f7
	charmap "2",         $f8
	charmap "3",         $f9
	charmap "4",         $fa
	charmap "5",         $fb
	charmap "6",         $fc
	charmap "7",         $fd
	charmap "8",         $fe
	charmap "9",         $ff


; Japanese kana, for those bits of text that were not translated to English

	charmap "ガ", $05
	charmap "ギ", $06
	charmap "グ", $07
	charmap "ゲ", $08
	charmap "ゴ", $09
	charmap "ザ", $0a
	charmap "ジ", $0b
	charmap "ズ", $0c
	charmap "ゼ", $0d
	charmap "ゾ", $0e
	charmap "ダ", $0f
	charmap "ヂ", $10
	charmap "ヅ", $11
	charmap "デ", $12
	charmap "ド", $13

	charmap "バ", $19
	charmap "ビ", $1a
	charmap "ブ", $1b
	charmap "ボ", $1c

	charmap "が", $26
	charmap "ぎ", $27
	charmap "ぐ", $28
	charmap "げ", $29
	charmap "ご", $2a
	charmap "ざ", $2b
	charmap "じ", $2c
	charmap "ず", $2d
	charmap "ぜ", $2e
	charmap "ぞ", $2f
	charmap "だ", $30
	charmap "ぢ", $31
	charmap "づ", $32
	charmap "で", $33
	charmap "ど", $34

	charmap "ば", $3a
	charmap "び", $3b
	charmap "ぶ", $3c
	charmap "べ", $3d
	charmap "ぼ", $3e

	charmap "パ", $40
	charmap "ピ", $41
	charmap "プ", $42
	charmap "ポ", $43
	charmap "ぱ", $44
	charmap "ぴ", $45
	charmap "ぷ", $46
	charmap "ぺ", $47
	charmap "ぽ", $48

	charmap "「", $70
	charmap "」", $71
	charmap "』", $73
	charmap "⋯", $75

	charmap "　", $7f

	charmap "ア", $80
	charmap "イ", $81
	charmap "ウ", $82
	charmap "エ", $83
	charmap "オ", $84
	charmap "カ", $85
	charmap "キ", $86
	charmap "ク", $87
	charmap "ケ", $88
	charmap "コ", $89
	charmap "サ", $8a
	charmap "シ", $8b
	charmap "ス", $8c
	charmap "セ", $8d
	charmap "ソ", $8e
	charmap "タ", $8f
	charmap "チ", $90
	charmap "ツ", $91
	charmap "テ", $92
	charmap "ト", $93
	charmap "ナ", $94
	charmap "ニ", $95
	charmap "ヌ", $96
	charmap "ネ", $97
	charmap "ノ", $98
	charmap "ハ", $99
	charmap "ヒ", $9a
	charmap "フ", $9b
	charmap "ホ", $9c
	charmap "マ", $9d
	charmap "ミ", $9e
	charmap "ム", $9f
	charmap "メ", $a0
	charmap "モ", $a1
	charmap "ヤ", $a2
	charmap "ユ", $a3
	charmap "ヨ", $a4
	charmap "ラ", $a5
	charmap "ル", $a6
	charmap "レ", $a7
	charmap "ロ", $a8
	charmap "ワ", $a9
	charmap "ヲ", $aa
	charmap "ン", $ab
	charmap "ッ", $ac
	charmap "ャ", $ad
	charmap "ュ", $ae
	charmap "ョ", $af
	charmap "ィ", $b0

	charmap "あ", $b1
	charmap "い", $b2
	charmap "う", $b3
	charmap "え", $b4
	charmap "お", $b5
	charmap "か", $b6
	charmap "き", $b7
	charmap "く", $b8
	charmap "け", $b9
	charmap "こ", $ba
	charmap "さ", $bb
	charmap "し", $bc
	charmap "す", $bd
	charmap "せ", $be
	charmap "そ", $bf
	charmap "た", $c0
	charmap "ち", $c1
	charmap "つ", $c2
	charmap "て", $c3
	charmap "と", $c4
	charmap "な", $c5
	charmap "に", $c6
	charmap "ぬ", $c7
	charmap "ね", $c8
	charmap "の", $c9
	charmap "は", $ca
	charmap "ひ", $cb
	charmap "ふ", $cc
	charmap "へ", $cd
	charmap "ほ", $ce
	charmap "ま", $cf
	charmap "み", $d0
	charmap "む", $d1
	charmap "め", $d2
	charmap "も", $d3
	charmap "や", $d4
	charmap "ゆ", $d5
	charmap "よ", $d6
	charmap "ら", $d7
	charmap "り", $d8
	charmap "る", $d9
	charmap "れ", $da
	charmap "ろ", $db
	charmap "わ", $dc
	charmap "を", $dd
	charmap "ん", $de
	charmap "っ", $df
	charmap "ゃ", $e0
	charmap "ゅ", $e1
	charmap "ょ", $e2

	charmap "ー", $e3
	charmap "ﾟ", $e4
	charmap "ﾞ", $e5

	charmap "？", $e6
	charmap "！", $e7
	charmap "。", $e8

	charmap "円", $f0

	charmap "．", $f2
	charmap "／", $f3

	charmap "ォ", $f4

	charmap "０", $f6
	charmap "１", $f7
	charmap "２", $f8
	charmap "３", $f9
	charmap "４", $fa
	charmap "５", $fb
	charmap "６", $fc
	charmap "７", $fd
	charmap "８", $fe
	charmap "９", $ff

        ;; Shavian punctuation
        charmap "·", $b6        ; namer dot
        charmap "⸰", $b7        ; accroring
        charmap "«", $b8
        charmap "»", $b9

        ;; Shavian letters
        charmap "𐑐", $80
        charmap "𐑑", $81
        charmap "𐑒", $82
        charmap "𐑓", $83
        charmap "𐑔", $84
        charmap "𐑕", $85
        charmap "𐑖", $86
        charmap "𐑗", $87
        charmap "𐑘", $88
        charmap "𐑙", $89
        charmap "𐑚", $8a
        charmap "𐑛", $8b
        charmap "𐑜", $8c
        charmap "𐑝", $8d
        charmap "𐑞", $8e
        charmap "𐑟", $8f
        charmap "𐑠", $90
        charmap "𐑡", $91
        charmap "𐑢", $92
        charmap "𐑣", $93
        charmap "𐑤", $94
        charmap "𐑥", $95
        charmap "𐑦", $96
        charmap "𐑧", $97
        charmap "𐑨", $98
        charmap "𐑩", $99
        charmap "𐑪", $a0
        charmap "𐑫", $a1
        charmap "𐑬", $a2
        charmap "𐑭", $a3
        charmap "𐑮", $a4
        charmap "𐑯", $a5
        charmap "𐑰", $a6
        charmap "𐑱", $a7
        charmap "𐑲", $a8
        charmap "𐑳", $a9
        charmap "𐑴", $aa
        charmap "𐑵", $ab
        charmap "𐑶", $ac
        charmap "𐑷", $ad
        charmap "𐑸", $ae
        charmap "𐑹", $af
        charmap "𐑺", $b0
        charmap "𐑻", $b1
        charmap "𐑼", $b2
        charmap "𐑽", $b3
        charmap "𐑾", $b4
        charmap "𐑿", $b5

        ;; Unofficial Shavian characters with no unicode entry
        charmap "<HALFAIR>", $ba
        charmap "<HALFERR>", $bb

        ;; Extra ligatures
        charmap "𐑦𐑑", $bc
        charmap "𐑦𐑓", $bd
        charmap "𐑦𐑕", $be
        charmap "𐑦𐑖", $bf
        charmap "𐑦𐑙", $c0
        charmap "𐑦𐑜", $c1
        charmap "𐑦𐑯", $c2
        charmap "𐑩𐑛", $c3
        charmap "𐑩𐑯", $c4
        charmap "𐑾𐑯", $c5
        charmap "𐑯𐑑", $c6
        charmap "'𐑑", $c7
        charmap "'𐑕", $c8
        charmap "'𐑛", $c9
        charmap "'𐑟", $ca

        charmap "<𐑐𐑒>", $e1
        charmap "<𐑥𐑯>", $e2
