#!/usr/bin/env bash
# options ----------------------------------------------------------------------
submap="$1"

# environment variables ________________________________________________________
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# variables ====================================================================
config_path="$XDG_CONFIG_HOME/hypr/hyprland.conf"

# execution ********************************************************************
sed -n "/submap\s*=\s*$submap/,/^$/p" "$config_path" |
    head --lines -1 |
    tail --lines +2 |
    sed -e 's/#/,/' \
        -e 's/^bind\w* *= *//' \
        -e 's/ *, */,/g' \
        -e 's/SUPER/S/' \
        -e 's/CTRL/C/' \
        -e 's/ALT/M/' \
        -e 's/SHIFT,minus/,_/' \
        -e 's/SHIFT,equal/,+/' \
        -e 's/SHIFT//' \
        -e 's/minus/-/' \
        -e 's/equal/=/' |
    awk -F, '$5!="" { print "[\"" $1 "\",\"" $2 "\",\"" $NF "\"]" }' |
    sort |
    jq -cs '.'
