#!/usr/bin/env bash
# options ----------------------------------------------------------------------
[ -z "$1" ] && action="toggle" || action="$1"

# environment variables ________________________________________________________
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# setup ________________________________________________________________________
focused_monitor_id=$("$HOME"/.local/bin/get-current-monitor.sh id)

# execution ********************************************************************
"$XDG_CONFIG_HOME"/eww/scripts/toggle-status-bar.sh "$action" "$focused_monitor_id"
