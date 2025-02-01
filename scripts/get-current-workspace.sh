#!/usr/bin/env bash
# options ----------------------------------------------------------------------
case $1 in
'current') monitor=$(~/.config/hypr/scripts/get-current-monitor.sh id) ;;
'') monitor=$(~/.config/hypr/scripts/get-current-monitor.sh id) ;;
*) monitor=$1 ;;
esac

case $2 in
'') param=name ;;
*) param=$2 ;;
esac

# execution ********************************************************************
hyprctl monitors -j |
    jq -r ".[] |
        select(.id==$monitor) |
        .activeWorkspace.$param "
