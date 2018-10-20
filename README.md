This repo holds the secret for quick rebound time after a fresh install of Ubuntu/Linux. The purpose is to not be scared to install the latest and greatest in Ubuntu and have no fear of having to spend hours getting your system to your liking. Listed below are the plays. The package installation instructions are sourced from their respective websites.

# How to run:
From project root:
- To run the entire playbook
`ansible-playbook --connection=local -k install.yml`

I still need to figure out how to run individual plays and not the entire playbook

## list of apt packages to install and delete
-  This is defined in `tasks/apt_packages.yml` file


- install docker-ce
- install docker-compose
- install sublime-text
- install adb and android-tools
- install awscli, aws-shell
- install apt packages
- install python specific apt packages
- uninstall apt packages
- install aws-shell
- setup udev rules for android usb
- setup git
- setup vim
- configure awscli
- configure sublimepackages
- configure gnome
- optimize ssd [3][4][5]
- power management
- gen github ssh keys

### Optional:

- Vagrant install
- Vbox install

### Firefox Settings
- Set up firefox settings to minimize disk writes
   - Need to automate this
   - about:config
   - browser.sessionstore.interval. Default set to 15 seconds change to 30m
   - 30m = 1800000 = 15000ms * 4 * 30
   - 1d = 86400000 ms

## References
- [1] https://www.servethehome.com/firefox-is-eating-your-ssd-here-is-how-to-fix-it/
- [2] http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
- [3] https://sites.google.com/site/easylinuxtipsproject/ssd
- [4] https://medium.com/@dardovaldez/fine-tunning-a-ssd-for-a-t470-ubuntu-18-04-b504dceaef50
- [5] https://slimbook.es/tutoriales/linux/93-optimizar-nuestro-ssd-en-linux
- [6] https://www.linuxtechi.com/top10-things-after-installing-ubuntu-18-04/
- ansible tags -> look this up
