#!/bin/bash

#live wallpaper
LiveWallpaper="$HOME/.config/hypr/wallpaper/sasuke.gif"
swww img ${LiveWallpaper}

#clipman >> clipboard
exec wl-paste -p -t text --watch clipman store -P --histpath="~/.local/share/clipman-primary.json"
