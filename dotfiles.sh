#!/bin/bash
#/home/$USER/.config/sublime-text3/Packages/User -> This is where 'Python3.sublime-build' goes
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $BASEDIR

#vim
echo "linking .vimrc"
ln -s -f ${BASEDIR}/.vimrc ~/.vimrc

#git
echo "linking glob gitconfig and gitignore"
ln -s -f ${BASEDIR}/.gitignore ~/.gitignore
ln -s -f ${BASEDIR}/.gitconfig ~/.gitconfig

#subl
echo "linking subl"
ln -s -f ${BASEDIR}/Python3.sublime-build /home/$USER/.config/sublime-text3/Packages/User/Python3.sublime-build

# ln -s -f ${BASEDIR}/
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
# ln -s -f ${BASEDIR}
