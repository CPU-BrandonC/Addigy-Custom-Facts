#!/bin/zsh

currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

installed_fonts=$(sudo ls -I "/Users/$currentUser/Library/Fonts" | grep "STIHL")
if [[ -z $installed_fonts ]]; then
    echo "false"
else
    echo "true"
fi