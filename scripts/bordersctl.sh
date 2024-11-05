#!/usr/bin/env bash
default_value=$1
action="$2"
step="$3"

option="general:border_size"
type="int"

current_value=$(hyprctl getoption "$option" | grep "$type" | awk '{print $NF}' | tr -d '"')

case "$action" in
reset) value=$default_value ;;
toggle) [ "$current_value" = 0 ] && value=$default_value || value=0 ;;
increase) value=$(("$current_value" + "$step")) ;;
decrease)
    [ "$current_value" -eq 0 ] && exit 0
    value=$(("$current_value" - "$step"))
    ;;
disable) value=0 ;;
double) value=$(("$default_value" * 2)) ;;
*)
    echo "error: unrecognized option '$action'"
    exit 1
    ;;
esac

hyprctl keyword "$option" "$value"
