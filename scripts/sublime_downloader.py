#! /usr/bin/python3
import re
import urllib.request # Only used for dl .deb
import logging
import getpass


logging.basicConfig(level=logging.INFO)
logging.getLogger(__name__)
USER = getpass.getuser()
"""
References:
http://docs.python-guide.org/en/latest/scenarios/scrape/
http://stackoverflow.com/questions/4289331/python-extract-numbers-from-a-string/4289415#4289415
"""

# TODO: Add error handling, threads, logging
# TODO: Set debug status on command line with arg parse?? or just argv[]
# Assuming lots of things here, the version number is 4 digits
DEBUG = False

# Scraping - open website and read contents
response = urllib.request.urlopen('https://www.sublimetext.com/3')	
html = response.read().decode('utf-8')

# parse with RE
m = re.search('The latest build is [0-9]+',html)
build = m.group(0).split()[-1]
print('build {}'.format(build))

# download deb 
download_url = 'https://download.sublimetext.com/sublime-text_build-{}_amd64.deb'.format(build)
output = 'sublime_text_{}.deb'.format(build)

# TODO: this directory needs to be already there
output_dir = '/home/{}/Dev/dotfiles/bin/{}'.format(USER, output)
if not DEBUG:
	urllib.request.urlretrieve(download_url, output_dir)
	print('downloading subl to {}'.format(output) )
