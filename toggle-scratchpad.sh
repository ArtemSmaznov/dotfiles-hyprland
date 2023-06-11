#!/usr/bin/env bash
#
sp_name="$1"
sp_class="$2"
command="$3"

spIsSpawed=$(hyprctl -j clients | jq -c ".[] | select(.class | contains(\"$sp_class\"))")
spIsHidden=$(hyprctl -j workspaces | jq -c ".[] | select(.name == \"special:$sp_name\")")

if [[ ! $spIsSpawed ]]; then
    # hyprctl dispatch exec \[workspace special:"$sp_name"\] "$command"
    $command &
elif [[ ! $spIsHidden ]]; then
    hyprctl dispatch movetoworkspacesilent special:"$sp_name","$sp_class"
else
    hyprctl dispatch togglespecialworkspace "$sp_name"
fi
