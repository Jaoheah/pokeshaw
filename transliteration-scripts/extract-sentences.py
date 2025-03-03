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

def word_wrap(text):
    parts = []
    length = 0

    for word in text.split():
        for regex, replacement in REPLACEMENTS:
            md = regex.match(word)

            if md is not None:
                word = replacement + word[md.end():]
                break

        wl = pokemon.word_length(word)

        if length + wl + 1 > pokemon.MAX_LINE_LENGTH:
            yield " ".join(parts)
            parts.clear()
            length = 0

        parts.append(word)
        length += wl + 1

    if length > 0:
        yield " ".join(parts)

def transliterate_text(text, macro_start, is_pokedex):
    text = latin2shaw.latin2shaw(text)

    for line_num, line in enumerate(word_wrap(text)):
        if line_num == 0:
            macro = macro_start
        elif is_pokedex:
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

in_text = False
parts = []
macro_start = None
is_pokedex = False

def flush_paragraph():
    global in_text, parts, macro_start, is_pokedex

    if in_text:
        transliterate_text(" ".join(parts), macro_start, is_pokedex)
        in_text = False
        parts.clear()

for line in sys.stdin:
    line = line.rstrip()

    md = pokemon.TEXT_RE.match(line)

    if in_text:
        if md is None:
            flush_paragraph()
            print(line)
        else:
            if md.group("macro") == "next":
                is_pokedex = True
            parts.append(md.group("text"))
    elif md is None:
        print(line)
    else:
        macro_start = md.group("macro")
        is_pokedex = macro_start == "page"
        parts.append(md.group("text"))
        in_text = True
        
flush_paragraph()
