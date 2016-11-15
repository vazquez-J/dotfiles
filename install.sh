#!/bin/bash
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
#REF: https://realpython.com/blog/python/setting-up-sublime-text-3-for-full-stack-python-development/

echo 'Installing python specific packages...'
sudo apt install -qq -y python-dev python-pip python3-pip python-setuptools
sleep 2

echo 'Installing packages...'
sleep 2
sudo apt install -qq -y  zip xbacklight redshift git vim spotify-client meld build-essential ack-grep geoclue-2.0

echo 'Removing packages...'
sudo apt purge -y pidgeon thunderbird brasero

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $BASEDIR


# TODO: virtualenv setup
# if directoy not present create directory
# ln -sv -f ${BASEDIR}/ack/.ackrc ~
# sleep 5
# echo ""

# Linking GDB 
echo " Linking gdbinit"
ln -svf ${BASEDIR}/gdb/.gdbinit ~
sleep 4
echo ""

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

#atom
echo " Linking atom directory"
ln -svf ${BASEDIR}/atom /home/$user/.atom

#subl
echo " Linking Python3 sublime build"
ln -sv -f ${BASEDIR}/subl/Python3.sublime-build /home/$USER/.config/sublime-text-3/Packages/User/Python3.sublime-build
sleep 5
echo ""

echo " Linking Python sublime settings"
ln -svf   ${BASEDIR}/subl/Python.sublime-settings /home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings
sleep 5
echo ""

echo " Linking redshift.conf"
sudo ln -svf   ${BASEDIR}/redshift/redshift.conf ~/.config/redshift.conf
sleep 5
echo ""

echo " Linking geoclue.conf"
sudo ln -svf   ${BASEDIR}/geoclue.conf /etc/geoclue/geoclue.conf
sleep 5
echo ""
# sudo ln -svf spotify.desktop /usr/share/applications/spotify.desktop
# ln -s -f ${BASEDIR}
#i3-wm i3Pystatus
# ln -sv -f ${BASEDIR}/i3/config /home/$USER/.config/i3/config

#Install subl
if test -e /home/user/Dev/dotfiles/bin/sublime_text_*.deb; then
  echo "Sublime text already installed" >&2
else
  echo "Running sublime text installer " >&2
  python3 /home/user/Dev/dotfiles/scripts/sublime_downloader.py && sudo gdebi ./bin/*.deb
  exit 1
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
# Android udev rules wget -S -O - http://source.android.com/source/51-android.rules | sed "s/<username>/$USER/" | sudo tee >/dev/null /etc/udev/rules.d/51-android.rules; sudo udevadm control --reload-rules

# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}

# TODO:
# 1. Add package control to SUBL
