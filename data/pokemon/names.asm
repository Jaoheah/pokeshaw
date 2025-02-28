MACRO pokemon_name
        assert CHARLEN(\1) <= CURRENT_TABLE_WIDTH
        db \1
        ds CURRENT_TABLE_WIDTH - CHARLEN(\1), "@"
ENDM

MonsterNames::
	table_width NAME_LENGTH - 1
	pokemon_name "𐑮𐑲𐑛𐑪𐑯"       ; RHYDON
	pokemon_name "𐑒𐑨𐑙𐑩𐑕𐑒𐑭𐑯"    ; KANGASKHAN
	pokemon_name "𐑯𐑦𐑛𐑼𐑨𐑯♂"     ; NIDORAN♂
	pokemon_name "𐑒𐑤𐑩𐑓𐑺𐑦"      ; CLEFAIRY
	pokemon_name "𐑕𐑐𐑽𐑴"        ; SPEAROW
	pokemon_name "𐑝𐑴𐑤𐑑𐑹𐑚"      ; VOLTORB
	pokemon_name "𐑯𐑰𐑛𐑴𐑒𐑦𐑙"     ; NIDOKING
	pokemon_name "𐑕𐑤𐑴𐑚𐑮𐑴"      ; SLOWBRO
	pokemon_name "𐑲𐑝𐑦𐑕𐑹"       ; IVYSAUR
	pokemon_name "𐑦𐑜𐑟𐑧𐑒𐑘𐑩𐑑𐑹"   ; EXEGGUTOR
	pokemon_name "𐑤𐑦𐑒𐑦𐑑𐑳𐑙"     ; LICKITUNG
	pokemon_name "𐑧𐑜𐑟𐑩𐑜𐑒𐑿𐑑"    ; EXEGGCUTE
	pokemon_name "𐑜𐑮𐑲𐑥𐑼"       ; GRIMER
	pokemon_name "𐑜𐑧𐑙𐑜𐑸"       ; GENGAR
	pokemon_name "𐑯𐑦𐑛𐑼𐑨𐑯♀"     ; NIDORAN♀
	pokemon_name "𐑯𐑦𐑛𐑴𐑒𐑢𐑰𐑯"    ; NIDOQUEEN
	pokemon_name "𐑒𐑿𐑚𐑴𐑯"       ; CUBONE
	pokemon_name "𐑮𐑲𐑣𐑹𐑯"       ; RHYHORN
	pokemon_name "𐑤𐑨𐑐𐑮𐑩𐑕"      ; LAPRAS
	pokemon_name "𐑸𐑒𐑩𐑯𐑲𐑯"      ; ARCANINE
	pokemon_name "𐑥𐑿"          ; MEW
	pokemon_name "𐑜𐑨𐑮𐑩𐑛𐑴𐑕"     ; GYARADOS
	pokemon_name "𐑖𐑧𐑤𐑛𐑼"       ; SHELLDER
	pokemon_name "𐑑𐑧𐑯𐑑𐑩𐑒𐑵𐑤"    ; TENTACOOL
	pokemon_name "𐑜𐑨𐑕𐑑𐑤𐑦"      ; GASTLY
	pokemon_name "𐑕𐑲𐑞𐑼"        ; SCYTHER
	pokemon_name "𐑕𐑑𐑸𐑿"        ; STARYU
	pokemon_name "𐑚𐑤𐑨𐑕𐑑𐑶𐑕"     ; BLASTOISE
	pokemon_name "𐑐𐑦𐑯𐑕𐑻"       ; PINSIR
	pokemon_name "𐑑𐑨𐑙𐑜𐑩𐑤𐑩"     ; TANGELA
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑜𐑮𐑬𐑤𐑲𐑞"      ; GROWLITHE
	pokemon_name "𐑪𐑯𐑦𐑒𐑕"       ; ONIX
	pokemon_name "𐑓𐑽𐑴"         ; FEAROW
	pokemon_name "𐑐𐑦𐑡𐑦"        ; PIDGEY
	pokemon_name "𐑕𐑤𐑴𐑐𐑴𐑒"      ; SLOWPOKE
	pokemon_name "𐑒𐑩𐑛𐑨𐑚𐑮𐑩"     ; KADABRA
	pokemon_name "𐑜𐑮𐑨𐑝𐑩𐑤𐑼"     ; GRAVELER
	pokemon_name "𐑗𐑨𐑯𐑕𐑦"       ; CHANSEY
	pokemon_name "𐑥𐑭𐑗𐑴𐑒"       ; MACHOKE
	pokemon_name "𐑥𐑼. 𐑥𐑲𐑥"     ; MR.MIME
	pokemon_name "𐑣𐑦𐑑𐑥𐑩𐑯𐑤𐑰"    ; HITMONLEE
	pokemon_name "𐑣𐑦𐑑𐑥𐑩𐑯𐑗𐑨𐑯"   ; HITMONCHAN
	pokemon_name "𐑸𐑚𐑪𐑒"        ; ARBOK
	pokemon_name "𐑐𐑨𐑮𐑩𐑕𐑧𐑒𐑑"    ; PARASECT
	pokemon_name "𐑕𐑲𐑛𐑳𐑒"       ; PSYDUCK
	pokemon_name "𐑛𐑮𐑬𐑟𐑦"       ; DROWZEE
	pokemon_name "𐑜𐑪𐑤𐑩𐑥"       ; GOLEM
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑨𐑜𐑥𐑸"       ; MAGMAR
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑦𐑤𐑧𐑒𐑑𐑩𐑚𐑳𐑟"   ; ELECTABUZZ
	pokemon_name "𐑥𐑨𐑜𐑯𐑩𐑑𐑪𐑯"    ; MAGNETON
	pokemon_name "𐑒𐑪𐑓𐑦𐑙"       ; KOFFING
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑨𐑙𐑒𐑦"       ; MANKEY
	pokemon_name "𐑕𐑰𐑤"         ; SEEL
	pokemon_name "𐑛𐑦𐑜𐑤𐑩𐑑"      ; DIGLETT
	pokemon_name "𐑑𐑹𐑴𐑕"        ; TAUROS
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑓𐑸𐑓𐑧𐑗𐑑"      ; FARFETCH'D
	pokemon_name "𐑝𐑧𐑯𐑩𐑯𐑨𐑑"     ; VENONAT
	pokemon_name "𐑛𐑮𐑨𐑜𐑩𐑯𐑲𐑑"    ; DRAGONITE
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑛𐑴𐑛𐑵𐑴"       ; DODUO
	pokemon_name "𐑐𐑪𐑤𐑦𐑢𐑨𐑜"     ; POLIWAG
	pokemon_name "𐑡𐑦𐑙𐑒𐑕"       ; JYNX
	pokemon_name "𐑥𐑴𐑤𐑑𐑮𐑱𐑕"     ; MOLTRES
	pokemon_name "𐑸𐑑𐑦𐑒𐑵𐑯𐑴"     ; ARTICUNO
	pokemon_name "𐑟𐑨𐑐𐑛𐑴𐑕"      ; ZAPDOS
	pokemon_name "𐑛𐑦𐑑𐑴"        ; DITTO
	pokemon_name "𐑥𐑰𐑬𐑔"        ; MEOWTH
	pokemon_name "𐑒𐑮𐑨𐑚𐑦"       ; KRABBY
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑝𐑳𐑤𐑐𐑦𐑒𐑕"     ; VULPIX
	pokemon_name "𐑯𐑲𐑯𐑑𐑱𐑤𐑟"     ; NINETALES
	pokemon_name "𐑐𐑰𐑒𐑩𐑗𐑵"      ; PIKACHU
	pokemon_name "𐑮𐑲𐑗𐑵"        ; RAICHU
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑛𐑮𐑩𐑑𐑰𐑯𐑦"     ; DRATINI
	pokemon_name "𐑛𐑮𐑨𐑜𐑩𐑯𐑺"     ; DRAGONAIR
	pokemon_name "𐑒𐑩𐑚𐑵𐑑𐑴"      ; KABUTO
	pokemon_name "𐑒𐑩𐑚𐑵𐑑𐑪𐑐𐑕"    ; KABUTOPS
	pokemon_name "𐑣𐑹𐑕𐑰"        ; HORSEA
	pokemon_name "𐑕𐑰𐑛𐑮𐑩"       ; SEADRA
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑕𐑨𐑯𐑛𐑖𐑮𐑵"     ; SANDSHREW
	pokemon_name "𐑕𐑨𐑯𐑛𐑕𐑤𐑨𐑖"    ; SANDSLASH
	pokemon_name "𐑪𐑥𐑩𐑯𐑲𐑑"      ; OMANYTE
	pokemon_name "𐑪𐑥𐑩𐑕𐑑𐑸"      ; OMASTAR
	pokemon_name "𐑡𐑦𐑜𐑤𐑦𐑐𐑳𐑓"    ; JIGGLYPUFF
	pokemon_name "𐑢𐑦𐑜𐑤𐑦𐑑𐑳𐑓"    ; WIGGLYTUFF
	pokemon_name "𐑰𐑝𐑦"         ; EEVEE
	pokemon_name "𐑓𐑤𐑺𐑦𐑪𐑯"      ; FLAREON
	pokemon_name "𐑡𐑴𐑤𐑑𐑦𐑪𐑯"     ; JOLTEON
	pokemon_name "𐑝𐑩𐑐𐑹𐑦𐑪𐑯"     ; VAPOREON
	pokemon_name "𐑥𐑭𐑗𐑪𐑐"       ; MACHOP
	pokemon_name "𐑟𐑵𐑚𐑨𐑑"       ; ZUBAT
	pokemon_name "𐑧𐑒𐑩𐑯𐑟"       ; EKANS
	pokemon_name "𐑐𐑨𐑮𐑩𐑕"       ; PARAS
	pokemon_name "𐑐𐑪𐑤𐑦𐑢𐑻𐑤"     ; POLIWHIRL
	pokemon_name "𐑐𐑪𐑤𐑦𐑮𐑨𐑔"     ; POLIWRATH
	pokemon_name "𐑢𐑰𐑛𐑩𐑤"       ; WEEDLE
	pokemon_name "𐑒𐑩𐑒𐑵𐑯𐑩"      ; KAKUNA
	pokemon_name "𐑚𐑰𐑛𐑮𐑦𐑤"      ; BEEDRILL
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑛𐑴𐑛𐑮𐑦𐑴"      ; DODRIO
	pokemon_name "𐑐𐑮𐑲𐑥𐑱𐑐"      ; PRIMEAPE
	pokemon_name "𐑛𐑳𐑜𐑑𐑮𐑰𐑴"     ; DUGTRIO
	pokemon_name "𐑝𐑧𐑯𐑩𐑥𐑪𐑔"     ; VENOMOTH
	pokemon_name "𐑛𐑵𐑜𐑪𐑙"       ; DEWGONG
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑒𐑨𐑑𐑼𐑐𐑦"      ; CATERPIE
	pokemon_name "𐑥𐑧𐑑𐑩𐑐𐑪𐑛"     ; METAPOD
	pokemon_name "𐑚𐑳𐑑𐑼𐑓𐑮𐑰"     ; BUTTERFREE
	pokemon_name "𐑥𐑭𐑗𐑨𐑥𐑐"      ; MACHAMP
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑜𐑴𐑤𐑛𐑳𐑒"      ; GOLDUCK
	pokemon_name "𐑣𐑦𐑐𐑯𐑴"       ; HYPNO
	pokemon_name "𐑜𐑴𐑤𐑚𐑨𐑑"      ; GOLBAT
	pokemon_name "𐑥𐑿𐑑𐑵"        ; MEWTWO
	pokemon_name "𐑕𐑯𐑹𐑤𐑨𐑒𐑕"     ; SNORLAX
	pokemon_name "𐑥𐑨𐑡𐑦𐑒𐑸𐑐"     ; MAGIKARP
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑳𐑒"         ; MUK
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑒𐑦𐑙𐑤𐑼"       ; KINGLER
	pokemon_name "𐑒𐑤𐑶𐑕𐑑𐑼"      ; CLOYSTER
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑦𐑤𐑧𐑒𐑑𐑮𐑴𐑛"    ; ELECTRODE
	pokemon_name "𐑒𐑤𐑩𐑓𐑱𐑚𐑩𐑤"    ; CLEFABLE
	pokemon_name "𐑢𐑰𐑟𐑦𐑙"       ; WEEZING
	pokemon_name "𐑐𐑻𐑠𐑩𐑯"       ; PERSIAN
	pokemon_name "𐑥𐑨𐑮𐑩𐑢𐑨𐑒"     ; MAROWAK
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑣𐑷𐑯𐑑𐑼"       ; HAUNTER
	pokemon_name "𐑨𐑚𐑮𐑩"        ; ABRA
	pokemon_name "𐑨𐑤𐑩𐑒𐑩𐑟𐑨𐑥"    ; ALAKAZAM
	pokemon_name "𐑐𐑦𐑡𐑦𐑪𐑑𐑴"     ; PIDGEOTTO
	pokemon_name "𐑐𐑦𐑡𐑦𐑪𐑑"      ; PIDGEOT
	pokemon_name "𐑕𐑑𐑸𐑥𐑰"       ; STARMIE
	pokemon_name "𐑚𐑳𐑤𐑚𐑩𐑕𐑹"     ; BULBASAUR
	pokemon_name "𐑝𐑰𐑯𐑩𐑕𐑹"      ; VENUSAUR
	pokemon_name "𐑑𐑧𐑯𐑑𐑩𐑒𐑮𐑵𐑤"   ; TENTACRUEL
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑜𐑴𐑤𐑛𐑰𐑯"      ; GOLDEEN
	pokemon_name "𐑕𐑰𐑒𐑦𐑙"       ; SEAKING
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑐𐑴𐑯𐑦𐑑𐑩"      ; PONYTA
	pokemon_name "𐑮𐑨𐑐𐑦𐑛𐑨𐑖"     ; RAPIDASH
	pokemon_name "𐑮𐑨𐑑𐑩𐑑𐑭"      ; RATTATA
	pokemon_name "𐑮𐑨𐑑𐑦𐑒𐑱𐑑"     ; RATICATE
	pokemon_name "𐑯𐑰𐑛𐑼𐑰𐑯𐑴"     ; NIDORINO
	pokemon_name "𐑯𐑦𐑛𐑼𐑰𐑯𐑩"     ; NIDORINA
	pokemon_name "𐑡𐑰𐑴𐑛𐑵𐑛"      ; GEODUDE
	pokemon_name "𐑐𐑪𐑮𐑦𐑜𐑪𐑯"     ; PORYGON
	pokemon_name "𐑺𐑴𐑛𐑨𐑒𐑑𐑤"     ; AERODACTYL
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑨𐑜𐑯𐑩𐑥𐑲𐑑"    ; MAGNEMITE
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑗𐑸𐑥𐑨𐑯𐑛𐑼"     ; CHARMANDER
	pokemon_name "𐑕𐑒𐑢𐑻𐑑𐑩𐑤"     ; SQUIRTLE
	pokemon_name "𐑗𐑸𐑥𐑰𐑤𐑾𐑯"     ; CHARMELEON
	pokemon_name "𐑢𐑹𐑑𐑹𐑑𐑩𐑤"     ; WARTORTLE
	pokemon_name "𐑗𐑸𐑦𐑟𐑸𐑛"      ; CHARIZARD
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑥𐑦𐑕𐑦𐑙 𐑯𐑳𐑥𐑚𐑼" ; MISSINGNO.
	pokemon_name "𐑪𐑛𐑦𐑖"        ; ODDISH
	pokemon_name "𐑜𐑤𐑵𐑥"        ; GLOOM
	pokemon_name "𐑝𐑲𐑤𐑐𐑤𐑵𐑥"     ; VILEPLUME
	pokemon_name "𐑚𐑧𐑤𐑕𐑐𐑮𐑬𐑑"    ; BELLSPROUT
	pokemon_name "𐑢𐑰𐑐𐑦𐑯𐑚𐑧𐑤"    ; WEEPINBELL
	pokemon_name "𐑝𐑦𐑒𐑑𐑮𐑦𐑚𐑧𐑤"   ; VICTREEBEL
	assert_table_length NUM_POKEMON_INDEXES
