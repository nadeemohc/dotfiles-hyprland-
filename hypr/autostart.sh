#!/bin/bash

# Start Waybar
waybar &

# Start Hyprpaper for wallpapers
hyprpaper &

# Start Rofi for application launcher
rofi -show drun &

# Other utilities
nm-applet &
blueman-applet &
pavucontrol &
dunst &
