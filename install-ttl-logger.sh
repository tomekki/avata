#!/bin/bash
set -e

grabserial --version 2> /dev/null || echo "Plese install grabserial (e.g. sudo apt install grabserial)"

mkdir -p /home/pi/.config/systemd/user/
cp ttl-logger.service  /home/pi/.config/systemd/user/

