#!/usr/bin/env bash
# environment variables ________________________________________________________
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# execution ********************************************************************
"$XDG_CONFIG_HOME"/hypr/scripts/get-window-title.sh
socat -u UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" - |
    stdbuf -o0 awk -F '>>|,' '/^activewindow>>/{print $3}'
