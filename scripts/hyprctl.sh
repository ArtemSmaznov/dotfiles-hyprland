#!/usr/bin/env bash

# environment variables ________________________________________________________

# variables ====================================================================

# options ----------------------------------------------------------------------

# functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
getClientsByClass() {
    hyprctl clients -j |
        jq ".[] | select( .class | contains(\"$1\") )"
}

getIdleInhibitStatus() {
    hyprctl clients |
        grep -e inhibitingIdle |
        grep 1 &>/dev/null &&
        echo true ||
        echo false
}

# setup ________________________________________________________________________

# execution ********************************************************************
case "$1" in
clients) getClientsByClass "$2" ;;
idle) getIdleInhibitStatus "$2" ;;
esac
