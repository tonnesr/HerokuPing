# HerokuPing
A shell script that "pings" a Heroku dyno using curl. The script runs every 15 minutes between 6am and 12pm.

This script is for circumnavigation Heroku's free tier sleeping (and max 18 hour uptime a day), and ICMP block.
