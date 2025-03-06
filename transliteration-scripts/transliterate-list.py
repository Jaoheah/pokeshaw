#!/usr/bin/python3

import latin2shaw
import os
import re
import sys
import tempfile

LI_RE = re.compile(r'^(?P<prefix>\s*li\s+")(?P<name>[^@"]*)'
                   r'(?P<postfix>@?")\s*$')

with tempfile.TemporaryDirectory() as dir:
    os.chdir(dir)

    try:
        os.symlink(os.path.dirname(latin2shaw.__file__), "static", True)
    except FileExistsError:
        pass

    for line in sys.stdin:
        md = LI_RE.match(line)

        if md is None:
            print(line, end='')
            continue

        prefix = md.group("prefix")
        original_name = md.group("name")
        new_name = latin2shaw.latin2shaw(original_name).rstrip()
        postfix = md.group("postfix")

        print(f"{prefix}{new_name}{postfix} ; {original_name}")
