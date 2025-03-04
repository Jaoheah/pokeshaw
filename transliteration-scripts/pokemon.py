import re

TEXT_RE = re.compile(r'^[\t ]*(?P<macro>text|next|page|line|cont|para) *'
                     r'"(?P<text>[^"]*)" *$')
DONE_RE = re.compile(r'^[\t ]*done *$')
MAX_LINE_LENGTH = 18

# These sequences end up with a different length when assembled
REPLACEMENT_LENGTHS = {
    # Unofficial Shavian characters
    "<HALFAIR>": 1,
    "<HALFERR>": 1,

    # Ligatures
    "𐑦𐑑": 1,
    "𐑦𐑓": 1,
    "𐑦𐑕": 1,
    "𐑦𐑖": 1,
    "𐑦𐑙": 1,
    "𐑦𐑜": 1,
    "𐑦𐑯": 1,
    "𐑯𐑑": 1,
    "'𐑑": 1,
    "'𐑕": 1,
    "'𐑛": 1,
    "'𐑟": 1,

    "#": 4, # 𐑐𐑴𐑒𐑱
    "<PLAYER>": 7 + 1, # maximum player name length + 1 for the namer dot
    "<RIVAL>": 7 + 1, # same for the rival
    "<POS>": 1, # '𐑕 or '𐑟 (both ligatures)

    # Pokemon names. It looks like the maximum length is 10?
    "<USER>": 10,
    "<TARGET>": 10,
}

_replacements = list(REPLACEMENT_LENGTHS.keys())
_replacements.sort(key=lambda x: 1000 - len(x))

REPLACEMENT_LENGTHS_RE = re.compile("|".join(map(re.escape, _replacements)) +
                                    "|.")
def word_length(word):
    def match_length(md):
        try:
            return REPLACEMENT_LENGTHS[md.group(0)]
        except KeyError:
            return 1

    return sum(map(match_length, REPLACEMENT_LENGTHS_RE.finditer(word)))

class Paragraph:
    def __init__(self, lines, macro_start, is_pokedex, has_done):
        self.lines = lines
        self.macro_start = macro_start
        self.is_pokedex = is_pokedex
        self.has_done = has_done

    def max_length(self, line_num, is_end):
        # All of the pokedex lines, the first line of a paragraph and
        # any line followed by “done” can use the full width. Any
        # other lines will have one less character so that the game
        # can draw the little continuation arrow.
        if (line_num == 0 or
            (self.has_done and is_end) or
            self.is_pokedex):
            return MAX_LINE_LENGTH
        else:
            return MAX_LINE_LENGTH - 1

def parse_lines(lines):
    in_text = False
    parts = []
    result = []
    macro_start = None
    is_pokedex = False
    has_done = False

    def flush_paragraph():
        nonlocal in_text, parts, result, macro_start, is_pokedex, has_done

        if in_text:
            result.append(Paragraph(parts, macro_start, is_pokedex, has_done))
            in_text = False
            has_done = False
            parts = []

    for line in lines:
        line = line.rstrip()

        md = TEXT_RE.match(line)

        if in_text:
            if md is None:
                if DONE_RE.match(line):
                    has_done = True
                flush_paragraph()
                result.append(line)
            else:
                if md.group("macro") == "next":
                    is_pokedex = True
                parts.append(md.group("text"))
        elif md is None:
            result.append(line)
        else:
            macro_start = md.group("macro")
            is_pokedex = macro_start == "page"
            parts.append(md.group("text"))
            in_text = True

    flush_paragraph()

    return result
