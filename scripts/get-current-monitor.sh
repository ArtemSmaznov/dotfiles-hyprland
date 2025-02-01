#!/usr/bin/env bash
# options ----------------------------------------------------------------------
[ "$1" ] && param=$1 || param=name

# execution ********************************************************************
hyprctl monitors -j |
    jq -r ".[] |
        select(.focused) |
        .$param "
