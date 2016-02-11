#!/usr/bin/env python3
import webbrowser
from urllib.parse import quote

try:
    print(aylamao) # add your breaking code here
except Exception as e:
    url = 'http://stackoverflow.com/search?q=[python] ' +  quote(str(e))
    webbrowser.open(url, new=2, autoraise=True)
