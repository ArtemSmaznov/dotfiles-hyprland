#!/usr/bin/env bash
action="$1"
layout="$2"

option="general:layout"
type="str"

function setValue() {
    current_value=$(hyprctl getoption "$option" | grep "$type" | awk '{print $NF}' | tr -d '"')

    case "$1" in
    toggle) [ "$current_value" = "dwindle" ] && value="master" || value="dwindle" ;;
    set) value="$layout" ;;
    *)
        echo "error: unrecognized option '$1'"
        exit 1
        ;;
    esac
}

setValue "$action"

hyprctl keyword "$option" "$value"
