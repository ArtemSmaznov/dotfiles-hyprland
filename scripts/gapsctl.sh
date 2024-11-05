#!/usr/bin/env bash
default_value=$1
action="$2"
step="$3"

option="general:gaps_in"
option2="general:gaps_out"
type="custom type"

function setValue() {
    current_value=$(hyprctl getoption "$option" | grep "$type" | awk '{print $NF}' | tr -d '"')

    case "$1" in
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
        echo "error: unrecognized option '$1'"
        exit 1
        ;;
    esac
}

setValue "$action"

hyprctl keyword "$option" "$value"
hyprctl keyword "$option2" $((value * 2))
