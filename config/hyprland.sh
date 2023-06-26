#!/bin/sh

#If hyprland is already running, do not create another instance.
pgrep "Hyprland" && exit 0

# [ ! -f /run/udev/data/+drm:card0-eDP-1 ] \
# && sudo systemctl restart systemd-udev-trigger > /dev/null

exec Hyprland > /tmp/hyprland.log 2> /tmp/hyprland.err
