#!/bin/bash
#/home/$USER/.config/sublime-text3/Packages/User -> This is where 'Python3.sublime-build' goes
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $BASEDIR

#ack 
echo "*** linking ackrc***"
echo ""
ln -sv -f ${BASEDIR}/ack/.ackrc ~

#vim
echo "linking .vimrc"
ln -sv -f ${BASEDIR}/.vimrc ~/.vimrc

#git
echo "linking glob gitconfig and gitignore"
ln -sv -f ${BASEDIR}/git/.gitignore ~/.gitignore
ln -sv -f ${BASEDIR}/git/.gitconfig ~/.gitconfig

#bashrc
echo "linking bashrc"
ln -sv -f ${BASEDIR}/bash/.bashrc ~/.bashrc

#subl
echo "***linking subl***"
ln -sv -f ${BASEDIR}/subl/Python3.sublime-build /home/$USER/.config/sublime-text3/Packages/User/Python3.sublime-build

#Install subl
#Check for deb package
#If deb package downloaded dpkg -i it
#Else call python script

#ADD
#/home/rvazquez/.config/sublime-text-3/Packages/User/C++11.sublime-build
#i3-wm
# ln -s -f ${BASEDIR}/.i3/config /home/$USER/.config/

#spotify.desktop --> /usr/share/applications/spotify.desktop

# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
