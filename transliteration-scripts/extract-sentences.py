#!/usr/bin/python3

import latin2shaw
import os
import re
import sys
import pokemon

REPLACEMENTS = [
    (re.compile(r'#·?𐑥𐑳𐑯𐑛𐑱\b'), "#𐑥𐑪𐑯"), # latin2shaw translates MON as monday
    (re.compile(r'#·𐑛𐑰𐑧𐑒𐑕⚠️'), "#𐑛𐑧𐑒𐑕"), # POKéDEX

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

def word_wrap(text, paragraph):
    parts = []
    length = 0
    line_num = 0

    words = text.split()

    for word_num, word in enumerate(words):
        for regex, replacement in REPLACEMENTS:
            md = regex.match(word)

            if md is not None:
                word = replacement + word[md.end():]
                break

        word_length = pokemon.word_length(word)
        to_add = word_length

        if len(parts) > 0:
            to_add += 1 # account for the space character

        max_len = paragraph.max_length(line_num, word_num == len(words) - 1)

        if length + to_add > max_len:
            yield " ".join(parts)
            line_num += 1
            parts.clear()
            length = 0
            to_add = word_length

        parts.append(word)
        length += to_add

    if length > 0:
        yield " ".join(parts)

def transliterate_text(paragraph):
    text = latin2shaw.latin2shaw(" ".join(paragraph.lines))

    for line_num, line in enumerate(word_wrap(text, paragraph)):
        if line_num == 0:
            macro = paragraph.macro_start
        elif paragraph.is_pokedex:
            macro = "next"
        elif line_num == 1:
            macro = "line"
        else:
            macro = "cont"

        print(f"\t{macro} \"{line}\"")

try:
    os.symlink(os.path.dirname(latin2shaw.__file__), "static", True)
except FileExistsError:
    pass

for part in pokemon.parse_lines(sys.stdin):
    if isinstance(part, pokemon.Paragraph):
        transliterate_text(part)
    else:
        print(part)
