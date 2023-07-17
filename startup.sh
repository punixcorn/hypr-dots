#!/bin/bash

# convert to GIF
# ffmpeg -i input.mp4 -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 10 -loop 0 - output.gif

# -- live wallpaper [ Needs gif ]-- #
# -- Sww -- #
# LiveWallpaper="$HOME/.config/hypr/wallpaper/sasuke.gif"
LiveWallpaper="$HOME/Videos/ethel_1.mp4"
swww img ${LiveWallpaper}

# -- normal wallpaper -- #
# -- swaybg -- #
# swaybg -i <path-to-img> --mode tile
#clipman >> clipboard
exec wl-paste -p -t text --watch clipman store -P --histpath="~/.local/share/clipman-primary.json"
