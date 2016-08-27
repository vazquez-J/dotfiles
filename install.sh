#!/bin/bash
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
#REF: https://realpython.com/blog/python/setting-up-sublime-text-3-for-full-stack-python-development/

echo 'Installing packages...'
sleep 2
sudo apt install -qq -y  xbacklight redshift git vim spotify-client meld build-essential ack-grep

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $BASEDIR

#ack https://www.digitalocean.com/community/tutorials/how-to-install-and-use-ack-a-grep-replacement-for-developers-on-ubuntu-14-04
echo " Linking ackrc"
ln -sv -f ${BASEDIR}/ack/.ackrc ~
sleep 5
echo ""

#vim
echo " Linking .vimrc"
ln -sv -f ${BASEDIR}/.vimrc ~/.vimrc
sleep 5
echo ""

#git
echo " Linking glob gitconfig and gitignore"
ln -sv -f ${BASEDIR}/git/.gitignore ~/.gitignore
ln -sv -f ${BASEDIR}/git/.gitconfig ~/.gitconfig
sleep 5
echo ""

#bashrc
echo " Linking bashrc"
ln -sv -f ${BASEDIR}/bash/.bashrc ~/.bashrc
echo ""

#subl
echo " Linking Python3 sublime build"
ln -sv -f ${BASEDIR}/subl/Python3.sublime-build /home/$USER/.config/sublime-text-3/Packages/User/Python3.sublime-build
ln -svf   ${BASEDIR}/subl/Python.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings
sleep 5
echo ""

echo " Linking Python sublime settings"
ln -svf   ${BASEDIR}/subl/Python.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings
sleep 5
echo ""
# sudo ln -svf spotify.desktop /usr/share/applications/spotify.desktop
#i3-wm i3Pystatus
# ln -sv -f ${BASEDIR}/i3/config /home/$USER/.config/i3/config

#Install subl
# create bin dire
if [ -f ${BASEDIR}/bin/sublime_text_*.deb ]; then
	echo "deb file found"
	gdebi ${BASEDIR}/bin/sublime_text_*.deb
else
	echo "deb not found"
fi

#Check for deb package
#If deb package downloaded dpkg -i it
#Else call python script

#ADD
#/home/rvazquez/.config/sublime-text-3/Packages/User/C++11.sublime-build

# Install with apt this is for i3 stuff 

# echo "Diverting ack exe"
# sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
# to remove diversion sudo dpkg-divert --remove /usr/bin/ack-grep

# Install for i3 stuff
# sudo apt install -qq  rofi 

# ln -sv -f ${BASEDIR}/i3Pystatus/config.py --> can run directly from dotfiles dir

# Add UDEV
# Android udev rules

# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
