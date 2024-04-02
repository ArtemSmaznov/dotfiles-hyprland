#!/usr/bin/env bash
# options ----------------------------------------------------------------------
default_borders="$1"
default_corners="$2"
default_gaps="$3"

# environment variables ________________________________________________________
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# variables ====================================================================
borders=$(hyprctl getoption general:border_size | grep int | awk '{print $NF}' | tr -d '"')
corners=$(hyprctl getoption decoration:rounding | grep int | awk '{print $NF}' | tr -d '"')
gaps=$(hyprctl getoption general:gaps_in | grep type | awk '{print $NF}' | tr -d '"')

# setup ________________________________________________________________________
if [[ $borders = 0 && $corners = 0 && $gaps = 0 ]]; then
    bar_action="open"
    border_size="$default_borders"
    rounding="$default_corners"
    gap_size="$default_gaps"
else
    bar_action="close"
    border_size=0
    rounding=0
    gap_size=0
fi

# execution ********************************************************************
hyprctl --batch "\
    keyword general:border_size $border_size ; \
    keyword decoration:rounding $rounding ; \
    keyword general:gaps_in $gap_size ; \
    keyword general:gaps_out $((gap_size *= 2)) "

"$XDG_CONFIG_HOME"/hypr/scripts/toggle-status-bar.sh "$bar_action"
