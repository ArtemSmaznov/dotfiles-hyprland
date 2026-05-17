#!/usr/bin/env bash
# options ----------------------------------------------------------------------
workspace_name="$1"
app_class="$2"
app_command="$3"

# variables ====================================================================
workspace_is_spawed=$(
    hyprctl -j clients |
        jq -c ".[] |
            select(.class |
            contains(\"$app_class\"))"
)
workspace_is_hidden=$(
    hyprctl -j workspaces |
        jq -c ".[] |
            select(.name == \"special:$workspace_name\")"
)

# setup ________________________________________________________________________
# spawn app on the given special workspace
if [[ ! $workspace_is_spawed ]]; then
    hyprctl dispatch "hl.dsp.exec_cmd('$app_command', { workspace = 'special:$workspace_name' })"
    exit 0
fi

# rip the app back into special workspace if it is empty
if [[ ! $workspace_is_hidden ]]; then
    hyprctl dispatch "hl.dsp.window.move({ workspace = 'special:$workspace_name', window = 'class:$app_class' })"
    exit 0
fi

# execution ********************************************************************
# show the special workspace
hyprctl dispatch "hl.dsp.workspace.toggle_special('$workspace_name')"
