Transitioning from bash script to all ansible based laptop setup.

# list of apt packages to install and delete
-  This is defined in `tasks/apt_packages.yml` file
-  This is defined in `tasks/apt_packages.yml` file

1. change firefoxs in about:config - layout.css.devPixelsPerPx

2. Install grafana http://docs.grafana.org/installation/debian/

3. Add udev rules for android usb devices -> $ wget -S -O - http://source.android.com/source/51-android.rules | sed "s/<username>/$USER/" | sudo tee >/dev/null /etc/udev/rules.d/51-android.rules; sudo udevadm control --reload-rules

4. Set up firefox settings to minimize disk writes
   - Need to automate this
   - about:config
   - browser.sessionstore.interval. Default set to 15 seconds change to 30m
   - 30m = 1800000 = 15000ms * 4 * 30
   - 1d = 86400000 ms

5. Wireshark - http://askubuntu.com/questions/74059/how-do-i-run-wireshark-with-root-privileges

6. Add vundle and vimr rc

7. gdb init in dotfiles directory, is it properly linked?


# VS code setup

# Things to do after a fresh install
1. install docker-ce
2. install docker-compose
3. install sublime-text
4. install adb and android-tools
5. setup udev rules for android usb
6. setup git
7. setup vim
8. install golang
9. install awscli
10. install aws-shell
11. configure awscli
12. optimize ssd
13. power management
14. gen github ssh keys
15.



## References
- https://www.servethehome.com/firefox-is-eating-your-ssd-here-is-how-to-fix-it/
- http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
- https://sites.google.com/site/easylinuxtipsproject/ssd
- https://medium.com/@dardovaldez/fine-tunning-a-ssd-for-a-t470-ubuntu-18-04-b504dceaef50
- https://slimbook.es/tutoriales/linux/93-optimizar-nuestro-ssd-en-linux
