#!/usr/bin/env bash

# execution ********************************************************************
hyprctl dispatch submap reset

if [ "$(eww ping 2> /dev/null)" == "pong" ]; then
    eww close which-key
fi
