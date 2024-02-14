#!/bin/zsh

application_name="NeoFinder.app"
currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

if [[ -d "/Applications/$application_name" ]] || [[ -d /Users/$currentUser/Applications/$application_name ]]; then
    echo "true"
else
    echo "false"
fi