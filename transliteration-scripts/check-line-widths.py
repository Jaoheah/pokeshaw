#!/usr/bin/python3

import pokemon
import sys

def handle_paragraph(paragraph, filename, start_line_number):
    for line_num, line in enumerate(paragraph.lines):
        length = pokemon.word_length(line)

        max_len = paragraph.max_length(line_num,
                                       line_num == len(paragraph.lines) - 1)

        if length > max_len:
            print(f"{filename}:{start_line_number + line_num + 1}: "
                  f"({length}/{max_len}) {line}")

for filename in sys.argv[1:]:
    with open(filename, "r", encoding="utf-8") as f:
        line_number = 0

        for part in pokemon.parse_lines(f):
            if isinstance(part, pokemon.Paragraph):
                handle_paragraph(part, filename, line_number)
                line_number += len(part.lines)
            else:
                line_number += 1
