#!/bin/zsh

currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

sudo -u $currentUser ls ~/Library/Fonts