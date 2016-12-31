#!/bin/bash
#REF: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
#REF: https://realpython.com/blog/python/setting-up-sublime-text-3-for-full-stack-python-development/
# TODO: Add a 'DO ALL  option'

show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} Install APT packages ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} Install Python packages ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} Remove packages ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} Link vimrc ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} Link gdb init ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU} Link ackrc ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6)${MENU} Link git configs ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7)${MENU} Link bashrc ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 8)${MENU} Link atom config ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 9)${MENU} Link Python Subl Build ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 11)${MENU} Link  redshift config ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 12)${MENU} Spotify ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 13)${MENU} Link  Python Subl Settings${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    echo -e "${ENTER_LINE}Press q to exit ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}

function vundle(){
	echo 'Installing vundle'
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
}

function vbox_install(){
	sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian xenial contrib' > /etc/apt/sources.list.d/virtualbox.list" && \
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - && \
	sudo apt-get update && \
	sudo apt-get install virtualbox-5.1
}

function apt_packages(){
    echo 'Installing packages...'
    sleep 2
    sudo apt install -qq -y  zip xbacklight redshift git vim spotify-client meld build-essential ack-grep geoclue-2.0
	
}


function py_packages(){
    echo 'Installing python specific packages...'
    sudo apt install -qq -y --force-yes python-tk python-wheel python-dev python-pip python3-pip python-setuptools python3-setuptools python3-wheel python3-dev
    sleep 2
}


function remove_packages(){
    echo 'Removing unneeded packages...'
    sudo apt purge -y --force-yes pidgin thunderbird brasero
}

function download_sublime() {
    if test -e /home/user/Dev/dotfiles/bin/sublime_text_*.deb; then
        echo "Sublime text already installed" >&2
    else
        echo "Running sublime text installer " >&2
        python3 /home/$USER/Dev/dotfiles/scripts/sublime_downloader.py && sudo gdebi ./bin/*.deb
        exit 1
    fi
}

function remove_packages(){
    echo 'Removing unneeded packages...'
    sudo apt purge -y --force-yes pidgin thunderbird brasero
}

function vimrc(){
    ln -sv -f "${BASEDIR}/.vimrc" ~/.vimrc
    sleep 5
    echo 'Cloning vundle'
    vundle;
}

function venv(){
    echo "Still need to do this"
}

function gdb_init(){
    echo " Linking gdbinit"
    ln -svf "${BASEDIR}/gdb/.gdbinit" ~
    sleep 4
}

function ackrc(){
    #ack https://www.digitalocean.com/community/tutorials/how-to-install-and-use-ack-a-grep-replacement-for-developers-on-ubuntu-14-04
    echo " Linking ackrc"
    ln -sv -f "${BASEDIR}/ack/.ackrc" ~
    sleep 5
}

function git_configs(){
    echo " Linking glob gitconfig and gitignore"
    ln -sv -f "${BASEDIR}/git/.gitignore" ~/.gitignore
    ln -sv -f "${BASEDIR}/git/.gitconfig" ~/.gitconfig
    sleep 5
}

function bashrc(){
    #bashrc
    echo " Linking bashrc"
    ln -svf "${BASEDIR}/bash/.bashrc" ~/.bashrc
}

function divert_ack() {
	sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
	# to remove diversion sudo dpkg-divert --remove /usr/bin/ack-grep
}

function atom(){
    echo " Linking atom directory"
    ln -svf "${}BASEDIR}/atom" "/home/$USER/.atom"
}

function py_subllime_build(){
    echo " Linking Python3 sublime build"
    ln -sv -f "${BASEDIR}/subl/Python3.sublime-build" "/home/$USER/.config/sublime-text-3/Packages/User/Python3.sublime-build"
    sleep 4
}

function py_sublime_settings(){
    echo " Linking Python sublime settings"
    ln -svf "${BASEDIR}/subl/Python.sublime-settings" "/home/$USER/.config/sublime-text-3/Packages/User/Python.sublime-settings"
    sleep 4
}

function redshift_config() {
    ln -svf "${BASEDIR}/redshift/redshift.conf" ~/.config/redshift.conf
    sleep 5
}

function geoclue() {
    echo " Linking geoclue.conf"
    sudo ln -svf "${BASEDIR}/geoclue.conf" /etc/geoclue/geoclue.conf
    sleep 5
}

# function spotify() {
# # sudo ln -svf spotify.desktop /usr/share/applications/spotify.desktop
# # ln -s -f ${BASEDIR}
# #i3-wm i3Pystatus
# # ln -sv -f ${B}ASEDIR}/i3/config /home/$USER/.config/i3/config
# }

function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

function init_function() {
clear
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "$BASEDIR"
show_menu
while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then
            exit;
    else
        case $opt in

        1) clear;
    		option_picked "Installing Apt Packages";
		apt_packages;
		option_picked "Operation Done!";
		option_picked "Now fixing ack";
		divert_ack;
		option_picked "Done!"
      		exit;
        	;;

        2) clear;
		option_picked "Installing Python Packages";
        	py_packages;
		option_picked "Operation Done!";
		exit;
            	;;

        3) clear;
		option_picked "Linking vimrc";
        	vimrc;
		option_picked "Operation Done!";
		exit;
            	;;

        4) clear;
		option_picked "Linking GDB init";
        	gdb_init
		option_picked "Operation Done!";
		exit;
        	;;

    	5) clear;
		option_picked "Linking ackrc";
        	ackrc;
		option_picked "Operation Done!";
		exit;
		;;

    	6) clear;
		option_picked "Linking git configs";
        	git_configs;
		option_picked "Operation Done!";
		exit;
	    	;;

	7) clear;
		option_picked "Linking GeoClue config"
		geoclue;
		option_picked "Operation Done!";
		exit;
		;;

	8) clear;
		option_picked "Linking bashrc"
		bashrc;
		option_picked "Operation Done!";
		exit;
		;;

	9) clear;
		;;

        x)
		exit;
        	;;

	q)clear;
		exit;
		;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
done
}


init_function;
