#!/usr/bin/env bash
# arguments
case $1 in
    'current') monitor=$(./get-current-monitor.sh id);;
    '') monitor=$(./get-current-monitor.sh id);;
    *) monitor=$1;;
esac
case $2 in
    '') param=name ;;
    *) param=$2 ;;
esac

# execution
hyprctl monitors -j | jq -r ".[] | select(.id==$monitor) | .activeWorkspace.$param"
