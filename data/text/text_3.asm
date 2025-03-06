_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<PKMN> BOX.@"
	text_end

_EvolvedText::
	text_ram wStringBuffer
	text " evolved"
	done

_IntoText::
	text_start
	line "into @"
	text_ram wNameBuffer
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	text_ram wStringBuffer
	text_start
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	text_ram wStringBuffer
	text_start
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "𐑓𐑧𐑤 𐑩𐑕𐑤𐑰𐑐!"
	prompt

_AlreadyAsleepText::
	text "<TARGET><POS>"
	line "𐑷𐑤𐑮𐑧𐑛𐑦 𐑩𐑕𐑤𐑰𐑐!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "𐑢𐑪𐑟 𐑐𐑶𐑟𐑩𐑯𐑛!"
	prompt

_BadlyPoisonedText::
	text "<TARGET><POS>"
	line "𐑚𐑨𐑛𐑤𐑦 𐑐𐑶𐑟𐑩𐑯𐑛!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "𐑢𐑪𐑟 𐑚𐑻𐑯𐑛!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "𐑢𐑪𐑟 𐑓𐑮𐑴𐑟𐑩𐑯 𐑕𐑪𐑤𐑦𐑛!"
	prompt

_FireDefrostedText::
	text "𐑓𐑲𐑼 𐑛𐑰𐑓𐑮𐑪𐑕𐑑𐑩𐑛"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER><POS>"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyRoseText::
	text "<SCROLL>𐑜𐑮𐑱𐑑𐑤𐑦@"
	text_end

_RoseText::
	text " 𐑮𐑴𐑟!"
	prompt

_MonsStatsFellText::
	text "<TARGET><POS>"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyFellText::
	text "<SCROLL>𐑜𐑮𐑱𐑑𐑤𐑦@"
	text_end

_FellText::
	text " 𐑓𐑧𐑤!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "𐑮𐑨𐑯 𐑓𐑮𐑪𐑥 𐑚𐑨𐑑𐑩𐑤!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "𐑮𐑨𐑯 𐑩𐑢𐑱 𐑕𐑒𐑺𐑛!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "𐑢𐑪𐑟 𐑚𐑤𐑴𐑯 𐑩𐑢𐑱!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@"
	text_end

_MadeWhirlwindText::
	text_start
	line "𐑥𐑱𐑛 𐑩 𐑢𐑻𐑤𐑢𐑦𐑯𐑛!"
	prompt

_TookInSunlightText::
	text_start
	line "𐑑𐑫𐑒 𐑦𐑯 𐑕𐑳𐑯𐑤𐑲𐑑!"
	prompt

_LoweredItsHeadText::
	text_start
	line "𐑤𐑴𐑼𐑛 𐑦𐑑𐑕 𐑣𐑧𐑛!"
	prompt

_SkyAttackGlowingText::
	text_start
	line "𐑦𐑟 𐑜𐑤𐑴𐑦𐑙!"
	prompt

_FlewUpHighText::
	text_start
	line "𐑓𐑤𐑵 𐑳𐑐 𐑣𐑲!"
	prompt

_DugAHoleText::
	text_start
	line "𐑛𐑳𐑜 𐑩 𐑣𐑴𐑤!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "𐑚𐑦𐑒𐑱𐑥 𐑒𐑩𐑯𐑓𐑿𐑟𐑛!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "𐑤𐑻𐑯𐑛"
	cont "@"
	text_ram wNameBuffer
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET><POS>"
	line "@"
	text_ram wNameBuffer
	text " 𐑢𐑪𐑟"
	cont "𐑛𐑦𐑕𐑱𐑚𐑩𐑤𐑛!"
	prompt

_NothingHappenedText::
	text "𐑯𐑳𐑔𐑦𐑙 𐑣𐑨𐑐𐑩𐑯𐑛!"
	prompt

_NoEffectText::
	text "𐑯𐑴 𐑦𐑓𐑧𐑒𐑑!"
	prompt

_ButItFailedText::
	text "𐑚𐑳𐑑, 𐑦𐑑 𐑓𐑱𐑤𐑛! "
	prompt

_DidntAffectText::
	text "𐑦𐑑 𐑛𐑦𐑛𐑩𐑯𐑑 𐑩𐑓𐑧𐑒𐑑"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "𐑦𐑟 𐑳𐑯𐑩𐑓𐑧𐑒𐑑𐑩𐑛!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET><POS>"
	line "𐑐𐑨𐑮𐑩𐑤𐑲𐑟𐑛! 𐑦𐑑 𐑥𐑱"
	cont "𐑯𐑪𐑑 𐑩𐑑𐑨𐑒!"
	prompt

_SubstituteText::
	text "𐑦𐑑 𐑒𐑮𐑦𐑱𐑑𐑩𐑛 𐑩"
	line "𐑕𐑳𐑚𐑕𐑑𐑦𐑑𐑿𐑑!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "𐑣𐑨𐑟 𐑩 𐑕𐑳𐑚𐑕𐑑𐑦𐑑𐑿𐑑!"
	prompt

_TooWeakSubstituteText::
	text "𐑑𐑵 𐑢𐑰𐑒 𐑑 𐑥𐑱𐑒 𐑩"
	line "𐑕𐑳𐑚𐑕𐑑𐑦𐑑𐑿𐑑!"
	prompt

_CoinsScatteredText::
	text "𐑒𐑶𐑯𐑟 𐑕𐑒𐑨𐑑𐑼𐑛"
	line "𐑧𐑝𐑮𐑦𐑢𐑺!"
	prompt

_GettingPumpedText::
	text "<USER><POS>"
	line "𐑜𐑧𐑑𐑦𐑙 𐑐𐑳𐑥𐑐𐑑!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "𐑢𐑪𐑟 𐑕𐑰𐑛𐑩𐑛!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "𐑦𐑝𐑱𐑛𐑩𐑛 𐑩𐑑𐑨𐑒!"
	prompt

_HitWithRecoilText::
	text "<USER><POS>"
	line "𐑣𐑦𐑑 𐑢𐑦𐑞 𐑮𐑦𐑒𐑶𐑤!"
	prompt

_ConvertedTypeText::
	text "𐑒𐑩𐑯𐑝𐑻𐑑𐑩𐑛 𐑑𐑲𐑐 𐑑"
	line "<TARGET><POS>!"
	prompt

_StatusChangesEliminatedText::
	text "𐑷𐑤 𐑕𐑑𐑱𐑑𐑩𐑕 𐑗𐑱𐑯𐑡𐑩𐑟 𐑸"
	line "𐑦𐑤𐑦𐑥𐑦𐑯𐑱𐑑𐑩𐑛!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "𐑕𐑑𐑸𐑑𐑩𐑛 𐑕𐑤𐑰𐑐𐑦𐑙!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "𐑓𐑧𐑤 𐑩𐑕𐑤𐑰𐑐 𐑯 𐑚𐑦𐑒𐑱𐑥"
	line "𐑣𐑧𐑤𐑔𐑦!"
	done

_RegainedHealthText::
	text "<USER>"
	line "𐑮𐑦𐑜𐑱𐑯𐑛 𐑣𐑧𐑤𐑔!"
	prompt

_TransformedText::
	text "<USER>"
	line "𐑑𐑮𐑨𐑯𐑕𐑓𐑹𐑥𐑛 𐑦𐑯𐑑𐑵"
	cont "@"
	text_ram wNameBuffer
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER><POS>"
	line "𐑐𐑮𐑩𐑑𐑧𐑒𐑑𐑩𐑛 𐑩𐑜𐑧𐑯𐑕𐑑"
	line "𐑕𐑐𐑧𐑖𐑩𐑤 𐑩𐑑𐑨𐑒𐑕!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "𐑜𐑱𐑯𐑛 𐑸𐑥𐑼!"
	prompt

_ShroudedInMistText::
	text "<USER><POS>"
	line "𐑖𐑮𐑬𐑛𐑩𐑛 𐑦𐑯 𐑥𐑦𐑕𐑑!"
	prompt

_SuckedHealthText::
	text "𐑕𐑳𐑒𐑑 𐑣𐑧𐑤𐑔 𐑓𐑮𐑪𐑥"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET><POS>"
	line "𐑛𐑮𐑰𐑥 𐑢𐑪𐑟 𐑰𐑑𐑩𐑯!"
	prompt

_TradeCenterOpponentText::
	text "!"
	done

_ColosseumOpponentText::
	text "!"
	done
