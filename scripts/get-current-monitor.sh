#!/usr/bin/env bash
[ $1 ] && param=$1 || param=name

hyprctl monitors -j | jq -r ".[] | select(.focused) | .$param"
