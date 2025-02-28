import re

TEXT_RE = re.compile(r'^[\t ]*(?:text|next|page) "([^"]*)" *$')
MAX_LINE_LENGTH = 18
SINGLE_CHARACTER_RE = re.compile(r'𐑦𐑑|𐑦𐑓|𐑦𐑕|𐑦𐑖|𐑦𐑟|𐑦𐑯|𐑩𐑯|𐑾𐑯|𐑦𐑙|𐑩𐑑|𐑯𐑑|.')

def word_length(word):
    # Count the known ligatures as a single character
    return sum(1 for _ in SINGLE_CHARACTER_RE.finditer(word))

