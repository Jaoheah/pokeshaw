#!/usr/bin/python3

import sys
import pokemon

def wordwrap_text(paragraph):
    words = []

    for line in paragraph.lines:
        words.extend(line.split())

    for line in pokemon.word_wrap(words, paragraph):
        print(line)

for part in pokemon.parse_lines(sys.stdin):
    if isinstance(part, pokemon.Paragraph):
        wordwrap_text(part)
    else:
        print(part)
