#!/usr/bin/env bash
default_value=$1

option="decoration:rounding"
type="int"

current_value=$(hyprctl getoption "$option" | grep "$type" | awk '{print $2}' | tr -d '"')
if [ $current_value = 0 ]; then
    value=$default_value
else
    value=0
fi

hyprctl keyword "$option" $value
