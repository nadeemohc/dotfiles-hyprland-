#!/bin/bash

# Get current workspace ID
current_ws=$(hyprctl activeworkspace -j | jq '.id')

# Set limits
min_ws=1
max_ws=9  # Change this if you have more workspaces

direction=$1  # either "up" or "down"

if [[ $direction == "up" && $current_ws -gt $min_ws ]]; then
    hyprctl dispatch workspace e-1
elif [[ $direction == "down" && $current_ws -lt $max_ws ]]; then
    hyprctl dispatch workspace e+1
fi
