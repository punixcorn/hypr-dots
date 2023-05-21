#!/usr/bin/env bash

cliphist_list=$(cliphist list)

cliphist_array=()
while read -r line; do
  cliphist_array+=("${line#*[[:blank:]]}")
done <<< "$cliphist_list"

rofi_options=$(printf "%s\n" "${cliphist_array[@]}")

chosen=$(echo -e "${rofi_options}" | rofi -dmenu -i -p "Clipboard:" -theme "$HOME"/.config/hypr/rofi/launchers/clipboard/launcher.rasi)

echo "$chosen" | tr -d '\n' | xclip -selection clipboard

