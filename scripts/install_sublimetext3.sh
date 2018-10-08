#!/bin/bash

echo -e 'Installing sublime gpg keys'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo -e 'Adding sources'
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

echo -e 'Installing sublime text'
sudo apt-get -qq update
sudo apt-get install -yqq sublime-text

