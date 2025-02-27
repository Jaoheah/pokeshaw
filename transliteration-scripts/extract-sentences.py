#!/usr/bin/python3

import latin2shaw
import os
import re
import sys
import pokemon

REPLACEMENTS = {
    "RHYDON": "𐑮𐑲𐑛𐑪𐑯",
    "KANGASKHAN": "𐑒𐑨𐑙𐑜𐑩𐑕𐑒𐑭𐑯",
    "NIDORAN♂": "𐑯𐑦𐑛𐑼𐑨𐑯♂",
    "CLEFAIRY": "𐑒𐑤𐑩𐑓𐑺𐑦",
    "SPEAROW": "𐑕𐑐𐑽𐑴",
    "VOLTORB": "𐑝𐑴𐑤𐑑𐑹𐑚",
    "NIDOKING": "𐑯𐑰𐑛𐑴𐑒𐑦𐑙",
    "SLOWBRO": "𐑕𐑤𐑴𐑚𐑮𐑴",
    "IVYSAUR": "𐑲𐑝𐑦𐑕𐑹",
    "EXEGGUTOR": "𐑦𐑜𐑟𐑧𐑒𐑘𐑩𐑑𐑹",
    "LICKITUNG": "𐑤𐑦𐑒𐑦𐑑𐑳𐑙",
    "EXEGGCUTE": "𐑧𐑜𐑟𐑩𐑒𐑿𐑑",
    "GRIMER": "𐑜𐑮𐑲𐑥𐑼",
    "GENGAR": "𐑜𐑧𐑙𐑜𐑸",
    "NIDORAN♀": "𐑯𐑦𐑛𐑼𐑨𐑯♀",
    "NIDOQUEEN": "𐑯𐑦𐑛𐑩𐑒𐑢𐑰𐑯",
    "CUBONE": "𐑒𐑿𐑚𐑴𐑯",
    "RHYHORN": "𐑮𐑲𐑣𐑹𐑯",
    "LAPRAS": "𐑤𐑨𐑐𐑮𐑩𐑕",
    "ARCANINE": "𐑸𐑒𐑩𐑯𐑲𐑯",
    "MEW": "𐑥𐑿",
    "GYARADOS": "𐑜𐑨𐑮𐑩𐑛𐑴𐑕",
    "SHELLDER": "𐑖𐑧𐑤𐑛𐑼",
    "TENTACOOL": "𐑑𐑧𐑯𐑑𐑩𐑒𐑵𐑤",
    "GASTLY": "𐑜𐑨𐑕𐑑𐑤𐑦",
    "SCYTHER": "𐑕𐑲𐑞𐑼",
    "STARYU": "𐑕𐑛𐑸𐑿",
    "BLASTOISE": "𐑚𐑤𐑨𐑕𐑑𐑶𐑕",
    "PINSIR": "𐑐𐑦𐑯𐑕𐑻",
    "TANGELA": "𐑑𐑨𐑙𐑜𐑩𐑤𐑩",
    "GROWLITHE": "𐑜𐑮𐑬𐑤𐑲𐑞",
    "ONIX": "𐑪𐑯𐑦𐑒𐑕",
    "FEAROW": "𐑓𐑽𐑴",
    "PIDGEY": "𐑐𐑦𐑡𐑦",
    "SLOWPOKE": "𐑕𐑤𐑴𐑐𐑴𐑒",
    "KADABRA": "𐑒𐑩𐑛𐑨𐑚𐑮𐑩",
    "GRAVELER": "𐑜𐑮𐑨𐑝𐑩𐑤𐑼",
    "CHANSEY": "𐑗𐑨𐑯𐑕𐑦",
    "MACHOKE": "𐑥𐑭𐑗𐑴𐑒",
    "MR.MIME": "𐑥𐑼. 𐑥𐑲𐑥",
    "HITMONLEE": "𐑣𐑦𐑑𐑥𐑩𐑯𐑤𐑰",
    "HITMONCHAN": "𐑣𐑦𐑑𐑥𐑩𐑯𐑗𐑨𐑯",
    "ARBOK": "𐑸𐑚𐑪𐑒",
    "PARASECT": "𐑐𐑨𐑮𐑩𐑕𐑧𐑒𐑑",
    "PSYDUCK": "𐑕𐑲𐑛𐑳𐑒",
    "DROWZEE": "𐑛𐑮𐑬𐑟𐑦",
    "GOLEM": "𐑜𐑪𐑤𐑩𐑥",
    "MAGMAR": "𐑥𐑨𐑜𐑥𐑸",
    "ELECTABUZZ": "𐑦𐑤𐑧𐑒𐑑𐑩𐑚𐑳𐑟",
    "MAGNETON": "𐑥𐑨𐑜𐑯𐑩𐑑𐑪𐑯",
    "KOFFING": "𐑒𐑪𐑓𐑦𐑙",
    "MANKEY": "𐑥𐑨𐑙𐑒𐑦",
    "SEEL": "𐑕𐑰𐑤",
    "DIGLETT": "𐑛𐑦𐑜𐑤𐑩𐑑",
    "TAUROS": "𐑑𐑹𐑴𐑕",
    "FARFETCH'D": "𐑓𐑸𐑓𐑧𐑗𐑑",
    "VENONAT": "𐑝𐑧𐑯𐑩𐑯𐑨𐑑",
    "DRAGONITE": "𐑛𐑮𐑨𐑜𐑩𐑯𐑲𐑑",
    "DODUO": "𐑛𐑴𐑛𐑿𐑴",
    "POLIWAG": "𐑐𐑪𐑤𐑦𐑢𐑨𐑜",
    "JYNX": "𐑡𐑦𐑙𐑒𐑕",
    "MOLTRES": "𐑥𐑴𐑤𐑑𐑮𐑱𐑕",
    "ARTICUNO": "𐑸𐑑𐑦𐑒𐑵𐑯𐑴",
    "ZAPDOS": "𐑟𐑨𐑐𐑛𐑴𐑕",
    "DITTO": "𐑛𐑦𐑑𐑴",
    "MEOWTH": "𐑥𐑰𐑬𐑔",
    "KRABBY": "𐑒𐑮𐑨𐑚𐑦",
    "VULPIX": "𐑝𐑳𐑤𐑐𐑦𐑒𐑕",
    "NINETALES": "𐑯𐑲𐑯𐑑𐑱𐑤𐑟",
    "PIKACHU": "𐑐𐑰𐑒𐑩𐑗𐑵",
    "RAICHU": "𐑮𐑲𐑗𐑵",
    "DRATINI": "𐑛𐑮𐑩𐑑𐑰𐑯𐑦",
    "DRAGONAIR": "𐑛𐑮𐑨𐑜𐑩𐑯𐑺",
    "KABUTO": "𐑒𐑩𐑚𐑵𐑑𐑴",
    "KABUTOPS": "𐑒𐑩𐑚𐑵𐑑𐑪𐑐𐑕",
    "HORSEA": "𐑣𐑹𐑕𐑰",
    "SEADRA": "𐑕𐑰𐑛𐑮𐑩",
    "SANDSHREW": "𐑕𐑨𐑯𐑛𐑖𐑮𐑵",
    "SANDSLASH": "𐑕𐑨𐑯𐑛𐑕𐑤𐑨𐑖",
    "OMANYTE": "𐑪𐑥𐑩𐑯𐑲𐑑",
    "OMASTAR": "𐑪𐑥𐑩𐑕𐑑𐑸",
    "JIGGLYPUFF": "𐑡𐑦𐑜𐑤𐑦𐑐𐑳𐑓",
    "WIGGLYTUFF": "𐑢𐑦𐑜𐑤𐑦𐑑𐑳𐑓",
    "EEVEE": "𐑰𐑝𐑦",
    "FLAREON": "𐑓𐑤𐑺𐑦𐑪𐑯",
    "JOLTEON": "𐑡𐑴𐑤𐑑𐑦𐑪𐑯",
    "VAPOREON": "𐑝𐑩𐑐𐑹𐑦𐑪𐑯",
    "MACHOP": "𐑥𐑭𐑗𐑪𐑐",
    "ZUBAT": "𐑟𐑵𐑚𐑨𐑑",
    "EKANS": "𐑧𐑒𐑩𐑯𐑟",
    "PARAS": "𐑐𐑨𐑮𐑩𐑕",
    "POLIWHIRL": "𐑐𐑪𐑤𐑦𐑢𐑻𐑤",
    "POLIWRATH": "𐑐𐑪𐑤𐑦𐑮𐑨𐑔",
    "WEEDLE": "𐑢𐑰𐑛𐑩𐑤",
    "KAKUNA": "𐑒𐑩𐑒𐑵𐑯𐑩",
    "BEEDRILL": "𐑚𐑰𐑛𐑮𐑦𐑤",
    "DODRIO": "𐑛𐑴𐑛𐑮𐑦𐑴",
    "PRIMEAPE": "𐑐𐑮𐑲𐑥𐑱𐑐",
    "DUGTRIO": "𐑛𐑳𐑜𐑑𐑮𐑰𐑴",
    "VENOMOTH": "𐑝𐑧𐑯𐑩𐑥𐑪𐑔",
    "DEWGONG": "𐑛𐑿𐑜𐑪𐑙",
    "CATERPIE": "𐑒𐑨𐑑𐑼𐑐𐑦",
    "METAPOD": "𐑥𐑧𐑑𐑩𐑐𐑪𐑛",
    "BUTTERFREE": "𐑚𐑳𐑑𐑼𐑓𐑮𐑰",
    "MACHAMP": "𐑥𐑭𐑗𐑨𐑥𐑐",
    "GOLDUCK": "𐑜𐑴𐑤𐑛𐑳𐑒",
    "HYPNO": "𐑣𐑦𐑐𐑯𐑴",
    "GOLBAT": "𐑜𐑴𐑤𐑚𐑨𐑑",
    "MEWTWO": "𐑥𐑿𐑑𐑵",
    "SNORLAX": "𐑕𐑯𐑹𐑤𐑨𐑒𐑕",
    "MAGIKARP": "𐑥𐑨𐑡𐑦𐑒𐑸𐑐",
    "MUK": "𐑥𐑳𐑒",
    "KINGLER": "𐑒𐑦𐑙𐑤𐑼",
    "CLOYSTER": "𐑒𐑤𐑶𐑕𐑑𐑼",
    "ELECTRODE": "𐑦𐑤𐑧𐑒𐑑𐑮𐑴𐑛",
    "CLEFABLE": "𐑒𐑤𐑩𐑓𐑱𐑚𐑩𐑤",
    "WEEZING": "𐑢𐑰𐑟𐑦𐑙",
    "PERSIAN": "𐑐𐑻𐑠𐑩𐑯",
    "MAROWAK": "𐑥𐑨𐑮𐑩𐑢𐑨𐑒",
    "HAUNTER": "𐑣𐑷𐑯𐑑𐑼",
    "ABRA": "𐑨𐑚𐑮𐑩",
    "ALAKAZAM": "𐑩𐑤𐑨𐑒𐑩𐑟𐑨𐑥",
    "PIDGEOTTO": "𐑐𐑦𐑡𐑦𐑪𐑑𐑴",
    "PIDGEOT": "𐑐𐑦𐑡𐑦𐑪𐑑",
    "STARMIE": "𐑕𐑑𐑸𐑥𐑰",
    "BULBASAUR": "𐑚𐑳𐑤𐑚𐑩𐑕𐑹",
    "VENUSAUR": "𐑝𐑰𐑯𐑩𐑕𐑹",
    "TENTACRUEL": "𐑑𐑧𐑯𐑑𐑩𐑒𐑮𐑵𐑤",
    "GOLDEEN": "𐑜𐑴𐑤𐑛𐑰𐑯",
    "SEAKING": "𐑕𐑰𐑒𐑦𐑙",
    "PONYTA": "𐑐𐑴𐑯𐑦𐑑𐑩",
    "RAPIDASH": "𐑮𐑨𐑐𐑦𐑛𐑨𐑖",
    "RATTATA": "𐑮𐑨𐑑𐑩𐑑𐑭",
    "RATICATE": "𐑮𐑨𐑑𐑦𐑒𐑱𐑑",
    "NIDORINO": "𐑯𐑰𐑛𐑴𐑮𐑰𐑯𐑴",
    "NIDORINA": "𐑯𐑦𐑛𐑼𐑰𐑯𐑩",
    "GEODUDE": "𐑡𐑰𐑴𐑛𐑿𐑛",
    "PORYGON": "𐑐𐑪𐑮𐑦𐑜𐑪𐑯",
    "AERODACTYL": "𐑺𐑴𐑛𐑨𐑒𐑑𐑤",
    "MAGNEMITE": "𐑥𐑨𐑜𐑯𐑩𐑥𐑲𐑑",
    "CHARMANDER": "𐑗𐑸𐑥𐑨𐑯𐑛𐑼",
    "SQUIRTLE": "𐑕𐑒𐑢𐑻𐑑𐑩𐑤",
    "CHARMELEON": "𐑗𐑸𐑥𐑰𐑤𐑾𐑯",
    "WARTORTLE": "𐑢𐑹𐑑𐑹𐑑𐑩𐑤",
    "CHARIZARD": "𐑗𐑸𐑦𐑟𐑸𐑛",
    "ODDISH": "𐑪𐑛𐑦𐑖",
    "GLOOM": "𐑜𐑤𐑵𐑥",
    "VILEPLUME": "𐑝𐑲𐑤𐑐𐑤𐑵𐑥",
    "BELLSPROUT": "𐑚𐑧𐑤𐑕𐑐𐑮𐑬𐑑",
    "WEEPINBELL": "𐑢𐑰𐑐𐑦𐑯𐑚𐑧𐑤",
    "VICTREEBEL": "𐑝𐑦𐑒𐑑𐑮𐑦𐑚𐑧𐑤",
}

def word_wrap(text):
    parts = []
    length = 0

    for word in text.split():
        marker_pos = word.find("✢")

        if marker_pos >= 0:
            bad_word = word[0:marker_pos]

            if bad_word in REPLACEMENTS:
                word = REPLACEMENTS[bad_word] + word[marker_pos + 1:]

        wl = pokemon.word_length(word)

        if length + wl + 1 > pokemon.MAX_LINE_LENGTH:
            yield " ".join(parts)
            parts.clear()
            length = 0

        parts.append(word)
        length += wl + 1

    if length > 0:
        yield " ".join(parts)

def transliterate_text(text):
    text = latin2shaw.latin2shaw(text)

    for line_num, line in enumerate(word_wrap(text)):
        if line_num > 0 and line_num % 3 == 0:
            print()

        if line_num == 0:
            macro = "text"
        elif line_num % 3 == 0:
            macro = "page"
        else:
            macro = "next"

        print(f"\t{macro} \"{line}\"")

try:
    os.symlink(os.path.dirname(latin2shaw.__file__), "static", True)
except FileExistsError:
    pass

in_text = False
parts = []

for line in sys.stdin:
    line = line.rstrip()

    md = pokemon.TEXT_RE.match(line)

    if in_text:
        if md is None:
            if len(line) > 0:
                transliterate_text(" ".join(parts))
                in_text = False
                parts.clear()
                print(line)
        else:
            parts.append(md.group(1))
    elif md is None:
        print(line)
    else:
        parts.append(md.group(1))
        in_text = True
        
