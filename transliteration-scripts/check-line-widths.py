#!/usr/bin/python3

import pokemon
import sys

for filename in sys.argv[1:]:
    with open(filename, "r", encoding="utf-8") as f:
        line_number = 0

        for part in pokemon.parse_lines(f):
            if isinstance(part, pokemon.Paragraph):
                for line in part.lines:
                    length = pokemon.word_length(line)

                    if length > pokemon.MAX_LINE_LENGTH:
                        print(f"{filename}:{line_number + 1}: "
                              f"({length}) {line}")

                    line_number += 1
            else:
                line_number += 1
