#!/bin/bash
# wget -S -O - http://source.android.com/source/51-android.rules | sed "s/<username>/$USER/" | sudo tee > /dev/null /etc/udev/rules.d/51-android.rules
#
# sudo udevadm control --reload-rules


#  ##### FROM https://github.com/M0Rf30/android-udev-rules
# Clone this repository
# Copy rules file
# sudo cp -v files/51-android.rules /etc/udev/rules.d/51-android.rules

# OR create a sym-link to the rules file - choose this option if you'd like to update your udev rules using git.
sudo ln -sf ./files/51-android.rules /etc/udev/rules.d/51-android.rules

# Change file permissions
sudo chmod a+r /etc/udev/rules.d/51-android.rules

# If adbusers group already exists remove old adbusers group
# groupdel adbusers

# add the adbusers group if it's doesn't already exist
# sudo mkdir -p /usr/lib/sysusers.d/ && sudo cp android-udev.conf /usr/lib/sysusers.d/
# sudo systemd-sysusers # (1)

# Add your user to the adbusers group
# sudo usermod -a -G adbusers $(whoami)

# Restart UDEV
sudo udevadm control --reload-rules
# sudo systemctl  restart udev.

# OR on Fedora:
sudo systemctl restart systemd-udevd.service

# Restart the ADB server
# adb kill-server

# Replug your Android device and verify that USB debugging is enabled in developer options
# adb devices

# You should now see your device
