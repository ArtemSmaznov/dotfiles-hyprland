#!/usr/bin/env bash
# options ----------------------------------------------------------------------
default_value=$1

# variables ====================================================================
option="decoration:rounding"
type="int"

current_value=$(
    hyprctl getoption "$option" |
        grep "$type" |
        awk '{print $NF}' |
        tr -d '"'
)

# setup ________________________________________________________________________
if [ "$current_value" = 0 ]; then
    value=$default_value
else
    value=0
fi

# execution ********************************************************************
hyprctl keyword "$option" "$value"
