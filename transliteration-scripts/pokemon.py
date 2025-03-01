import re

TEXT_RE = re.compile(r'^[\t ]*(?:text|next|page) "([^"]*)" *$')
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
    "𐑩𐑛": 1,
    "𐑩𐑯": 1,
    "𐑾𐑯": 1,
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
