#!/usr/bin/env bash
# options ----------------------------------------------------------------------
action="$1"
layout="$2"

# variables ====================================================================
option="general:layout"
type="str"

# functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function setValue() {
    current_value=$(
        hyprctl getoption "$option" |
            grep "$type" |
            awk '{print $NF}' |
            tr -d '"'
    )

    case "$1" in
    toggle) [ "$current_value" = "dwindle" ] && value="master" || value="dwindle" ;;
    set) value="$layout" ;;
    *)
        echo "error: unrecognized option '$1'"
        exit 1
        ;;
    esac
}

# setup ________________________________________________________________________
setValue "$action"

# execution ********************************************************************
hyprctl keyword "$option" "$value"
