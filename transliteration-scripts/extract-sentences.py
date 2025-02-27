#!/usr/bin/python3

import latin2shaw
import os
import re
import sys

TEXT_RE = re.compile(r'^[\t ]*(?:text|next|page) "([^"]*)" *$')
MAX_LINE_LENGTH = 17
SINGLE_CHARACTER_RE = re.compile(r'𐑦𐑑|𐑦𐑓|𐑦𐑕|𐑦𐑖|𐑦𐑟|𐑦𐑯|𐑩𐑯|𐑾𐑯|𐑩𐑤|𐑾c|𐑦𐑙|𐑩𐑑|𐑯𐑑|.')

def word_length(word):
    # Count the known ligatures as a single character
    return sum(1 for _ in SINGLE_CHARACTER_RE.finditer(word))

def word_wrap(text):
    parts = []
    length = 0

    for word in text.split():
        wl = word_length(word)

        if length + wl + 1 > MAX_LINE_LENGTH:
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

    md = TEXT_RE.match(line)

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
        
