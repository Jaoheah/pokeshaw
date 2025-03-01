#!/usr/bin/python3

import re
import pokemon
import sys

for filename in sys.argv[1:]:
    with open(filename, "r", encoding="utf-8") as f:
        for line_number, line in enumerate(f):
            md = pokemon.TEXT_RE.match(line)

            if md is None:
                continue

            text = md.group("text")

            length = pokemon.word_length(text)

            if length > pokemon.MAX_LINE_LENGTH:
                print(f"{filename}:{line_number + 1}: ({length}) {text}")
