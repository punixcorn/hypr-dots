#!/usr/bin/env bash

dir="$HOME/.config/hypr/rofi/launchers/launcher"
theme='launcher-hyprland'

## Run
rofi -show drun -theme "${dir}"/${theme}.rasi
