#!/usr/bin/env bash
workspace_name="$1"
app_class="$2"
app_command="$3"

workspace_is_spawed=$(hyprctl -j clients | jq -c ".[] | select(.class | contains(\"$app_class\"))")
workspace_is_hidden=$(hyprctl -j workspaces | jq -c ".[] | select(.name == \"special:$workspace_name\")")

# spawn app on the given special workspace
if [[ ! $workspace_is_spawed ]]; then
    hyprctl dispatch exec \[workspace special:"$workspace_name"\] "$app_command"
    exit 0
fi

# rip the app back into special workspace if it is empty
if [[ ! $workspace_is_hidden ]]; then
    hyprctl dispatch movetoworkspacesilent special:"$workspace_name","$app_class"
fi

# show the special workspace
hyprctl dispatch togglespecialworkspace "$workspace_name"
