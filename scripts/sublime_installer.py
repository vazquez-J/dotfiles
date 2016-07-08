#! /usr/bin/python3
import requests # much easier to use then urllib2
import sys
from lxml import html
import urllib.request # Only used for dl .deb
import logging

"""
References:
http://docs.python-guide.org/en/latest/scenarios/scrape/
http://stackoverflow.com/questions/4289331/python-extract-numbers-from-a-string/4289415#4289415
"""

# TODO: Add error handling, threads, logging
# Assuming lots of things here, the version number is 4 digits
DEBUG = False

	
def main():
	res = requests.get('https://www.sublimetext.com/3')
	webpage = html.fromstring(res.content) # Contains whole HTML file in a tree structure
	href = webpage.xpath('//a/@href')
	for links in href:
		if 'amd64' in links:
			sublime_download = links
	print(sublime_download)
	# dl sublime text .deb file 
	# Either install from python or from bash script
	if not DEBUG:
		try:
			local_fn, headers = urllib.request.urlretrieve(sublime_download, './sublime_text.deb')
			
		except Exception :
			raise URLError

if __name__ == '__main__':
	main()