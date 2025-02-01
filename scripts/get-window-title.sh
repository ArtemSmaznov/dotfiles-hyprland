#!/usr/bin/env bash
# execution ********************************************************************
hyprctl activewindow -j |
    jq --raw-output .title
