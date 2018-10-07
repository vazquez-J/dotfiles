#!/bin/bash

echo "create a sym-link to /etc/udev/rules.d/51-android.rules"
sudo ln -sf ./files/51-android.rules /etc/udev/rules.d/51-android.rules

echo "Change file permissions"
sudo chmod a+r /etc/udev/rules.d/51-android.rules

echo "Reload udev rules"
sudo udevadm control --reload-rules

echo "Restart systemd-udevd"
sudo systemctl restart systemd-udevd.service
