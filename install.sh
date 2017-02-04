#!/bin/sh
#
## run as root
#

# Die on errors

set -e

echo "Installing additional packages now..."

pacman -S --needed $(<packages.lst)

echo "Downloading Configuration files..."

# wget blah

echo "Enabling Services..."

ln -sf "/usr/lib/systemd/system/lighttpd.service" "/etc/systemd/system/multi-user.target.wants/lighttpd.service"
