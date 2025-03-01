#!/usr/bin/python3

import re
import pokemon
import sys

STRING_RE = re.compile(r'(\s*db\s+")([^"@]+)@*(".*)')

for line in sys.stdin:
    line = line.rstrip()

    md = STRING_RE.match(line)

    if md is not None:
        pokemon_name = md.group(2)
        length = pokemon.word_length(pokemon_name)
        filler = "@" * (10 - length)
        line = md.group(1) + pokemon_name + filler + md.group(3)

    print(line)
