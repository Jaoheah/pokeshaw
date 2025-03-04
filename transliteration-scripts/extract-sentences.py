#!/usr/bin/python3

import latin2shaw
import os
import re
import sys
import pokemon

REPLACEMENTS = [
    (re.compile(r'#·?𐑥𐑳𐑯𐑛𐑱\b'), "#𐑥𐑪𐑯"), # latin2shaw translates MON as monday
    (re.compile(r'#·𐑛𐑰𐑧𐑒𐑕⚠️'), "#𐑛𐑧𐑒𐑕"), # POKéDEX
    (re.compile(r'VIRIDIAN✢'), "·𐑝𐑦𐑮𐑦𐑛𐑾𐑯"),
    # Get rid of the WORD JOINER character that latin2shaw adds after
    # the accroring
    (re.compile(r'⸰\u2060'), "⸰"),
    (re.compile(r'·𐑐𐑱𐑡𐑩𐑟\b'), "⸰𐑐𐑐"),

    (re.compile(r'&lt;𐑐𐑤𐑱𐑼&gt;'), "<PLAYER>"),
    (re.compile(r'&lt;𐑮𐑲𐑝𐑩𐑤&gt;'), "<RIVAL>"),
]

# Add replacements for the Pokémon names by automatically extracting
# them from the list in the source code
def extract_pokemon_names():
    regexp = re.compile(r'^\s*pokemon_name\s+"([^"]+)"\s*;\s*(\S+)')

    names_asm = os.path.join(os.path.dirname(__file__),
                             "..",
                             "data",
                             "pokemon",
                             "names.asm")
    names = {}

    with open(names_asm, "r", encoding='utf-8') as f:
        for line in f:
            md = regexp.match(line)
            if md is None:
                continue

            names[md.group(1)] = md.group(2)

    return names

for shavian, latin in extract_pokemon_names().items():
    REPLACEMENTS.append((re.compile(re.escape(latin) + "(✢|\b)"), shavian))

def replace_word(word):
    for regex, replacement in REPLACEMENTS:
        md = regex.match(word)

        if md is not None:
            return replacement + word[md.end():]

    return word

def transliterate_text(paragraph):
    words = [replace_word(word) for word
             in latin2shaw.latin2shaw(" ".join(paragraph.lines)).split()]

    for line in pokemon.word_wrap(words, paragraph):
        print(line)

try:
    os.symlink(os.path.dirname(latin2shaw.__file__), "static", True)
except FileExistsError:
    pass

for part in pokemon.parse_lines(sys.stdin):
    if isinstance(part, pokemon.Paragraph):
        transliterate_text(part)
    else:
        print(part)
