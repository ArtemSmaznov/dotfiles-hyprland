#!/usr/bin/env bash
# variables ====================================================================
# focused_monitor_id=$(./get-current-monitor.sh id)

workspace_ids=$(
    hyprctl workspaces -j |
        jq -r '.[] |
            select(.name |
                contains("special") |
                not ) |
            .id ' |
        sort
)

# functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function getWorkspaceName() {
    id=$1
    hyprctl workspaces -j |
        jq -r ".[] |
            select(.id==$id) |
            .name "
}

function getWorkspaceWindows() {
    id=$1
    hyprctl workspaces -j |
        jq -r ".[] |
            select(.id==$id) |
            .windows "
}

function workspaceIsEmpty() {
    id=$1
    num_windows=$(
        hyprctl workspaces -j |
            jq -r ".[] |
                select(.id==$id) |
                .windows "
    )
    [ "$num_windows" -eq 0 ] && echo true || echo false
}

function workspaceActiveOn() {
    id=$1
    mon_0_workspace_id=$(~/.config/hypr/scripts/get-current-workspace.sh 0)
    mon_1_workspace_id=$(~/.config/hypr/scripts/get-current-workspace.sh 1)

    if [ "$id" -eq "$mon_0_workspace_id" ]; then
        echo 0
    elif [ "$id" -eq "$mon_1_workspace_id" ]; then
        echo 1
    else
        echo 2
    fi
}

# setup ________________________________________________________________________
output="["
for id in ${workspace_ids[@]}; do
    output+="{""\
\"id\":$id,""\
\"name\":\"$(getWorkspaceName $id)\",""\
\"windows\":$(getWorkspaceWindows $id),""\
\"monitor\":$(workspaceActiveOn $id $1)""\
},"
done

# execution ********************************************************************
echo "${output%,}]"
