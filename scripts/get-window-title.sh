#!/usr/bin/env bash
hyprctl activewindow -j | jq --raw-output .title
