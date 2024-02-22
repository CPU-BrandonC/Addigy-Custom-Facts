#!/bin/zsh

currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

installed_fonts=$(sudo ls -I "/Users/$currentUser/Library/Fonts")
if [[ -z $installed_fonts ]]; then
    echo "N/A"
else
    echo "$installed_fonts"
fi