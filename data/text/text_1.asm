_CardKeySuccessText1::
	text "𐑚𐑦𐑙𐑜𐑴!@"
	text_end

_CardKeySuccessText2::
	text_start
	line "𐑞 𐑒𐑸𐑛 𐑒𐑰"
	cont "𐑴𐑐𐑩𐑯𐑛 𐑞 𐑛𐑹!"
	done

_CardKeyFailText::
	text "𐑛𐑸𐑯! 𐑦𐑑 𐑯𐑰𐑛𐑟 𐑩"
	line "𐑒𐑸𐑛 𐑒𐑰!"
	done

_TrainerNameText::
	text_ram wNameBuffer
	text ": @"
	text_end

_NoNibbleText::
	text "𐑯𐑪𐑑 𐑰𐑝𐑩𐑯 𐑩 𐑯𐑦𐑚𐑩𐑤!"
	prompt

_NothingHereText::
	text "𐑤𐑫𐑒𐑕 𐑤𐑲𐑒 𐑞𐑺𐑟"
	line "𐑯𐑳𐑔𐑦𐑙 𐑣𐑽."
	prompt

_ItsABiteText::
	text "𐑴!"
	line "𐑦𐑑𐑕 𐑩 𐑚𐑲𐑑!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "𐑜𐑮𐑬𐑯𐑛 𐑮𐑴𐑟 𐑳𐑐"
	line "𐑕𐑳𐑥𐑢𐑺!"
	done

_BoulderText::
	text "𐑞𐑦𐑕 𐑮𐑦𐑒𐑢𐑲𐑼𐑟"
	line "«𐑕𐑑𐑮𐑧𐑙𐑔» 𐑑 𐑥𐑵𐑝!"
	done

_MartSignText::
	text "𐑷𐑤 𐑘𐑹 𐑲𐑑𐑩𐑥"
	line "𐑯𐑰𐑛𐑟 𐑓𐑫𐑤𐑓𐑦𐑤𐑛!"
	cont "#𐑥𐑪𐑯 𐑥𐑸𐑑"
	done

_PokeCenterSignText::
	text "𐑣𐑰𐑤 𐑘𐑹 #𐑥𐑪𐑯!"
	line "#𐑥𐑪𐑯 𐑕𐑧𐑯𐑑𐑼"
	done

_FoundItemText::
	text "<PLAYER> 𐑓𐑬𐑯𐑛"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_NoMoreRoomForItemText::
	text "𐑯𐑴 𐑥𐑹 𐑮𐑵𐑥 𐑓"
	line "𐑲𐑑𐑩𐑥𐑟!"
	done

_OaksAideHiText::
	text "𐑣𐑲! 𐑮𐑦𐑥𐑧𐑥𐑚𐑼 𐑥𐑰?"
	line "𐑲𐑥 𐑐𐑮𐑪𐑓. ·𐑴𐑒𐑕"
	cont "𐑱𐑛!"

	para "𐑦𐑓 𐑿 𐑒𐑷𐑑 @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "𐑒𐑲𐑯𐑛𐑟 𐑝 #𐑥𐑪𐑯,"
	cont "𐑲𐑥 𐑕𐑩𐑐𐑴𐑕𐑑 𐑑"
	cont "𐑜𐑦𐑝 𐑿 𐑩𐑯"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "!"

	para "𐑕𐑴, <PLAYER>! 𐑣𐑨𐑝"
	line "𐑿 𐑒𐑷𐑑 𐑨𐑑"
	cont "𐑤𐑰𐑕𐑑 @"
	text_decimal hOaksAideRequirement, 1, 3
	text " 𐑒𐑲𐑯𐑛𐑟 𐑝"
	cont "#𐑥𐑪𐑯?"
	done

_OaksAideUhOhText::
	text "𐑤𐑧𐑑𐑕 𐑕𐑰..."
	line "𐑳-𐑴! 𐑿 𐑣𐑨𐑝"
	cont "𐑒𐑷𐑑 𐑴𐑯𐑤𐑦 @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text_start
	cont "𐑒𐑲𐑯𐑛𐑟 𐑝 #𐑥𐑪𐑯!"

	para "𐑿 𐑯𐑰𐑛 @"
	text_decimal hOaksAideRequirement, 1, 3
	text " 𐑒𐑲𐑯𐑛𐑟"
	line "𐑦𐑓 𐑿 𐑢𐑪𐑯𐑑 𐑞"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "𐑴. 𐑲 𐑕𐑰."

	para "𐑢𐑧𐑯 𐑿 𐑜𐑧𐑑 @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "𐑒𐑲𐑯𐑛𐑟, 𐑒𐑳𐑥 𐑚𐑨𐑒"
	cont "𐑓 @"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "𐑜𐑮𐑱𐑑! 𐑿 𐑣𐑨𐑝"
	line "𐑒𐑷𐑑 @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text " 𐑒𐑲𐑯𐑛𐑟 "
	cont "𐑝 #𐑥𐑪𐑯!"
	cont "𐑒𐑩𐑯𐑜𐑮𐑨𐑗𐑩𐑤𐑱𐑖𐑩𐑯𐑟!"

	para "𐑣𐑽 𐑿 𐑜𐑴!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> 𐑜𐑪𐑑 𐑞"
	line "@"
	text_ram wOaksAideRewardItemName
	text "!@"
	text_end

_OaksAideNoRoomText::
	text "𐑴! 𐑲 𐑕𐑰 𐑿"
	line "𐑛𐑴𐑯𐑑 𐑣𐑨𐑝 𐑧𐑯𐑦"
	cont "𐑮𐑵𐑥 𐑓 𐑞"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done
