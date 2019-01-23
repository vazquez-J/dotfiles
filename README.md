This repo holds the secret for quick rebound time after a fresh install of Ubuntu/Linux. The purpose is to not be scared to install the latest and greatest in Ubuntu and have no fear of having to spend hours getting your system to your liking. Listed below are the plays. The package installation instructions are sourced from their respective websites.

# How to run:
From project root:
- To run the entire playbook
`ansible-playbook --connection=local -K install.yml`

-K ask sudo password

To install with tags use `--tags "k8s"`


## list of apt packages to install and delete
-  This is defined in `tasks/apt_packages.yml` file

### This playbook does the following
- install docker-ce from the official docker website
- install docker-compose
- install minikube -> using the k8s tag
- install sublime-text
- install adb and android-tools
- install awscli
- install aws-shell
- add awscli autocompletion [7]
- install apt packages
- install python specific apt packages
- uninstall apt packages
- setup udev rules for android usb
- setup git
- setup vim
- configure sublimepackages
- configure gnome
- optimize ssd [3][4][5]
- power management
- gen github ssh keys
- set swappines -> TODO

### Optional:

- Vagrant install
- Vbox install

### Firefox Settings
- Set up firefox settings to minimize disk writes [1]
   - Need to automate this
   - about:config
   - browser.sessionstore.interval. Default set to 15 seconds change to 30m
   - 30m = 1800000 = 15000ms * 4 * 30
   - 1d = 86400000 ms

### gsettings
- gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
- gsettings set org.gnome.desktop.interface text-scaling-factor 1.5
- gsettings set org.gnome.nautilus.icon-view default-zoom-level standard
- gsettings set org.gnome.desktop.interface cursor-size 32
- gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
- gsettings set org.gnome.desktop.wm.keybindings switch-applications  [8]


### Things to do:
- figure out how to run individual plays and not the entire playbook
- SSD optimization
- Security
- Turn off services
- firefox user.js
- Sublimetext-3 settings linking
- generate ssh keys

## References
- [1] https://www.servethehome.com/firefox-is-eating-your-ssd-here-is-how-to-fix-it/
- [2] http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
- [3] https://sites.google.com/site/easylinuxtipsproject/ssd
- [4] https://medium.com/@dardovaldez/fine-tunning-a-ssd-for-a-t470-ubuntu-18-04-b504dceaef50
- [5] https://slimbook.es/tutoriales/linux/93-optimizar-nuestro-ssd-en-linux
- [6] https://www.linuxtechi.com/top10-things-after-installing-ubuntu-18-04/
- ansible tags -> look this up
- https://mensfeld.pl/2018/05/lenovo-thinkpad-x1-carbon-6th-gen-2018-ubuntu-18-04-tweaks/
- [7] https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html
- [8] https://superuser.com/questions/394376/how-to-prevent-gnome-shells-alttab-from-grouping-windows-from-similar-apps/860001
