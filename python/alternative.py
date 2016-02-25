#!/usr/bin/env python
"""
Handle exceptions in a 'with'-block.
Usage:
    with handle_exceptions():
        # Breaking code here.
"""


import webbrowser
import sys

if sys.version_info[0] < 3:
    from urllib import quote
else:
    from urllib.parse import quote
from contextlib import contextmanager


@contextmanager
def handle_exceptions():
    """Handle exceptions in a 'with'-block."""
    try: yield
    except Exception as e:
        url = 'http://stackoverflow.com/search?q=[python] ' + quote(str(e))
        webbrowser.open(url, new=2, autoraise=True)

with handle_exceptions():
    print(s)
