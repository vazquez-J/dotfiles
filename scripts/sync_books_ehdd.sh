#!/bin/bash

if [ -d /media/$USER/My\ Passport/Books/ ]; then
	echo 'running rsync'
	rsync --delete -avsh  "/home/$USER/Books/" /media/rvazquez/My\ Passport/Books/
else
	echo 'Drive not mounted.... skipping operation!'
fi
