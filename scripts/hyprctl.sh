#!/usr/bin/env bash

# functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function getClientsByClass() {
    hyprctl clients -j |
        jq ".[] |
            select( .class | contains(\"$1\") )
        "
}

function getIdleInhibitStatus() {
    hyprctl clients |
        grep -e inhibitingIdle |
        grep 1 &>/dev/null &&
        echo true ||
        echo false
}

function moveFloatingWindow() {
    window='current'
    x=84
    y=61
    width=1200
    height=645
    step=$1
    direction="$2"

    echo $x,$y

    case "$direction" in
    l) [ $x -le $step ] && x=0 || x=$(($x - $step)) ;;
    r) [ $x -le $step ] && x=0 || x=$(($x + $step)) ;;
    u) [ $y -le $step ] && y=0 || y=$(($y - $step)) ;;
    d) [ $y -le $step ] && y=0 || y=$(($y + $step)) ;;
    *) echo "error: invalid direction, $direction" && exit 1 ;;
    esac

    echo $x,$y
}

function unlock() {
    hyprctl \
        --instance 0 \
        --batch '''
            keyword misc:allow_session_lock_restore 1 ;
            dispatch exec hyprlock ;
            keyword misc:allow_session_lock_restore 0
        '''
}

# execution ********************************************************************
case "$1" in
clients) getClientsByClass "$2" ;;
idle) getIdleInhibitStatus "$2" ;;
move) moveFloatingWindow $2 "$3" ;;
unlock) unlock ;;
esac
