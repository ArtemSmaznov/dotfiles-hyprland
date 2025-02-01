#!/usr/bin/env bash
# environment variables ________________________________________________________
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# execution ********************************************************************
hyprctl dispatch submap reset

if [ "$(eww ping 2>/dev/null)" == "pong" ]; then
    "$XDG_CONFIG_HOME"/eww/scripts/which-key.sh -c
fi
