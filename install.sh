#!/bin/bash
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
<<<<<<< HEAD
#REF: https://realpython.com/blog/python/setting-up-sublime-text-3-for-full-stack-python-development/
=======


>>>>>>> 441bd994b3d6634de9b27af98720f7de39e09e5d
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $BASEDIR

#ack 
echo "*** linking ackrc***"
ln -sv -f ${BASEDIR}/ack/.ackrc ~
echo ""

#vim
echo "***linking .vimrc***"
ln -sv -f ${BASEDIR}/.vimrc ~/.vimrc
echo ""

#git
echo "***linking glob gitconfig and gitignore***"
ln -sv -f ${BASEDIR}/git/.gitignore ~/.gitignore
ln -sv -f ${BASEDIR}/git/.gitconfig ~/.gitconfig
echo ""

#bashrc
echo "***linking bashrc***"
ln -sv -f ${BASEDIR}/bash/.bashrc ~/.bashrc
echo ""

#subl
echo "***linking subl***"
ln -sv -f ${BASEDIR}/subl/Python3.sublime-build /home/$USER/.config/sublime-text-3/Packages/User/Python3.sublime-build
ln -svf   ${BASEDIR}/subl/Python.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings
echo ""

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
sudo apt install xbacklight rofi

#i3-wm i3Pystatus
ln -sv -f ${BASEDIR}/i3/config /home/$USER/.config/i3/config
# ln -sv -f ${BASEDIR}/i3Pystatus/config.py --> can run directly from dotfiles dir

#spotify.desktop --> /usr/share/applications/spotify.desktop


# Add UDEV
# Android udev rules

# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
