#!/usr/bin/python3
# https://bbs.archlinux.org/viewtopic.php?pid=1329375#p1329375
# https://gist.github.com/sweenzor/1782457
# import os
import subprocess
# import logging
# from logging.handlers import SysLogHandler
# logger = logging.getLogger(__name__)
# logger.setLevel(logging.DEBUG)
# syslog = SysLogHandler(address = '/dev/log')
# logger.addHandler(syslog)

home_dual 		= "/home/vazquez/.screenlayout/i3_home_dual.sh"
home_single 	= "/home/vazquez/.screenlayout/i3_home_single.sh"
# monitor_toggle  = "/home/vazquez/bin/monitor_toggle.py"


def main():
	# logger.debug("In Main")
	card = "/sys/class/drm/card0-DP-1"
	# logger.debug("Checking status of mDP")
	status = subprocess.check_output(["cat","/sys/class/drm/card0-DP-1/status"] )
	status = status.decode( 'ascii' )
	# logger.debug("status: {0}".format(status))

	# If the mDP is disconnected run home_single
	if 'disconnected' in status:
		# ret = subprocess.check_output(monitor_toggle)
		# logger.debug("montor")
		
		subprocess.check_output(["sh", home_single])

	# else the mDP is connect, run home_dual	
	else:
		# logger.debug("In else")
		# logger.debug("connecting external monitor")
		# ret = subprocess.check_output(monitor_toggle)
		beef = subprocess.check_output(["sh", home_dual])


if __name__=="__main__":
	main()

