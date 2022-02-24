#!/bin/bash
set -e

grabserial --version 2> /dev/null || echo "Plese install grabserial (e.g. sudo apt install grabserial)"

mkdir -p /home/pi/.config/systemd/user/

cp ttl-logger.service  /home/pi/.config/systemd/user/
cp ttl-logger.sh  /home/pi/.config/systemd/user/
systemctl --user enable ttl-logger.service
systemctl --user daemon-reload

sudo loginctl enable-linger pi

mkdir /home/pi/stick
sudo chown pi:pi /home/pi/stick

# get usb stick PARTUUID
blkid

# for /etc/fstab (adjust PARTUUID)
# PARTUUID=XXX /media/pi/stick vfat rw,nosuid,nodev,relatime,uid=1000,gid=1000,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,showexec,utf8,flush,errors=remount-ro,uhelper=udisks2        0 0