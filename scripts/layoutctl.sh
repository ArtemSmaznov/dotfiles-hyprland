#!/usr/bin/env bash
layout="$1"

# TODO align with gaps/borders-ctl scripts
if [ ! "$layout" ]; then
    current_layout=$(hyprctl getoption general:layout | grep str | awk '{print $2}' | tr -d '"')
    if [ "$current_layout" = "dwindle" ]; then
        layout="master"
    else
        layout="dwindle"
    fi
fi

hyprctl keyword general:layout "$layout"
