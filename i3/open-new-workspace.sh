#!/bin/bash
new_workspace=$(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))

if [[ $1 == "just-open" ]]; then
    i3-msg workspace $new_workspace
elif [[ $1 == "move-container" ]]; then
    i3-msg move container to workspace $new_workspace
elif [[ $1 == "move-container-and-switch" ]]; then
    i3-msg move container to workspace $new_workspace
    i3-msg workspace $new_workspace
fi
    