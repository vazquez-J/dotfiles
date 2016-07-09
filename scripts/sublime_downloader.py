#! /usr/bin/python3
import re
import urllib.request # Only used for dl .deb


"""
References:
http://docs.python-guide.org/en/latest/scenarios/scrape/
http://stackoverflow.com/questions/4289331/python-extract-numbers-from-a-string/4289415#4289415
"""

# TODO: Add error handling, threads, logging
# Assuming lots of things here, the version number is 4 digits
DEBUG = False

# Scraping - open website and read contents
response = urllib.request.urlopen('https://www.sublimetext.com/3')	
html = response.read().decode('utf-8')

# parse with RE
m = re.search('The latest build is [0-9]+',html)
build = m.group(0).split()[-1]
print('build {}'.format(build))

download_url = 'https://download.sublimetext.com/sublime-text_build-{}_amd64.deb'.format(build)
output = 'sublime_text_{}.deb'.format(build)

urllib.request.urlretrieve(download_url, output)
print('downloading subl to {}'.format(output) )
