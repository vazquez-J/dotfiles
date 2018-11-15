#!/usr/bin/env python3

import requests
from pprint import pprint
import argparse

BASE_URL = "https://api.github.com"

def delete_old_ssh_key(key_id: int):
	response = requests.delete("https://api.github.com/users/211217613/keys/{}".format(key_id))


def get_public_key_id():
	response = requests.get("https://api.github.com/users/211217613/keys")
	key_id = response.json()[0]['id']


def create_public_key():
	paylod = {'':''}
	requests.post("https://api.github.com/users/211217613/keys", data=payload)

def main():
	key_id = get_public_key_id()

	if delete_old_ssh_key:
		create_public_key()

if __name__ == '__main__':
	main()
