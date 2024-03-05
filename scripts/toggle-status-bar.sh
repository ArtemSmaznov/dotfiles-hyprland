#!/usr/bin/env bash
# environment variables
#-------------------------------------------------------------------------------
[ ! "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

# variables
#-------------------------------------------------------------------------------

# functions
#-------------------------------------------------------------------------------

# setup
#-------------------------------------------------------------------------------
focused_monitor_id=$(get-current-monitor.sh id)

# execution
#===============================================================================
"$XDG_CONFIG_HOME"/eww/scripts/toggle-status-bar.sh toggle "$focused_monitor_id"
