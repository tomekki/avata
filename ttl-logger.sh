#!/bin/bash
echo "ttl-logger started using logfile: $1"
grabserial -v -d /dev/ttyUSB0 -b 115200 -Q -o "/media/pi/stick/$1"
echo "ttl-llogger ended"