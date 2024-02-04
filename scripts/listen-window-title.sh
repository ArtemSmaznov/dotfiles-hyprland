#!/usr/bin/env bash
/home/artem/.config/hypr/scripts/get-window-title.sh
socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - |
  stdbuf -o0 awk -F '>>|,' '/^activewindow>>/{print $3}'
