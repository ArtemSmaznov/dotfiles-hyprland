#!/usr/bin/env bash
# options ----------------------------------------------------------------------
submap="$1"

# execution ********************************************************************
hyprctl binds -j |
    jq ".[] |
        select(.submap==\"$submap\") |
        select(.has_description) |
        .modmask = (
          if   .modmask == 0 then \"\"
          elif .modmask == 1 then \"S\"
          elif .modmask == 64 then \"M\"
          elif .modmask == 3 then \"A\"
          else .modmask
          end
        ) |
        .key = (
          if   .key == \"minus\"     then \"-\"
          elif .key == \"equal\"     then \"=\"
          elif .key == \"slash\"     then \"/\"
          elif .key == \"backslash\" then \"\\\\\"
          elif .key == \"semicolon\" then \";\"
          elif .key == \"colon\"     then \":\"
          elif .key == \"period\"    then \".\"
          elif .key == \"comma\"     then \",\"
          elif .key == \"backspace\" then \"←\"
          else .key
          end
        ) " |
    jq --slurp --compact-output 'sort_by(.key, .modmask)'
