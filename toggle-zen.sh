#!/usr/bin/env bash
default_borders="$1"
default_corners="$2"
default_gaps="$3"

borders=$(hyprctl getoption general:border_size | grep int | awk '{print $2}' | tr -d '"')
corners=$(hyprctl getoption decoration:rounding | grep int | awk '{print $2}' | tr -d '"')
gaps=$(hyprctl getoption general:gaps_in | grep int | awk '{print $2}' | tr -d '"')

if [[ $borders = 0 && $corners = 0 && $gaps = 0 ]]; then
    hyprctl keyword general:border_size $default_borders
    hyprctl keyword decoration:rounding $default_corners
    hyprctl keyword general:gaps_in $default_gaps
    hyprctl keyword general:gaps_out $((default_gaps *= 2))
else
    hyprctl keyword general:border_size 0
    hyprctl keyword decoration:rounding 0
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
fi
