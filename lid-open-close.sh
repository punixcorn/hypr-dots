#!/usr/bin/env bash

if [ "$(hyprctl monitors | grep "DP-1")" = "DP-1" ]; then
    hyprctl keyword monitor "eDP-1, disable"
elif [ "$(hyprctl monitors | grep "HDMI-A-1")" = "HDMI-A-1" ]; then
    hyprctl keyword monitor "eDP-1, disable"
else
    hyprctl keyword monitor "eDP-1, 1440x900, 0x0, 1"
    sh ~/.config/swaylock/lock-session.sh
fi
