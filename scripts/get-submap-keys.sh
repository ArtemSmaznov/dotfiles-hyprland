#!/usr/bin/env bash
submap="$1"

# environment variables
#-------------------------------------------------------------------------------
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# variables
#-------------------------------------------------------------------------------
config_path="$XDG_CONFIG_HOME/hypr/hyprland.conf"

# execution
#===============================================================================
sed -n "/submap\s*=\s*$submap/,/^# reset submap$/p" "$config_path" |
    head --lines -2 |
    tail --lines +2 |
    sed s/#/,/ |
    awk -F, '{ print $2 "-" $5 }'
