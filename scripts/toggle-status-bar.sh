#!/usr/bin/env bash
[ -z "$1" ] && action="toggle" || action="$1"

# environment variables
#-------------------------------------------------------------------------------
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# variables
#-------------------------------------------------------------------------------

# functions
#-------------------------------------------------------------------------------

# setup
#-------------------------------------------------------------------------------
focused_monitor_id=$("$HOME"/.local/bin/get-current-monitor.sh id)

# execution
#===============================================================================
"$XDG_CONFIG_HOME"/eww/scripts/toggle-status-bar.sh "$action" "$focused_monitor_id"
