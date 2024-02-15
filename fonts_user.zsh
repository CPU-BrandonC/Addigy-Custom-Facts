#!/bin/zsh

currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

sudo ls "/Users/$currentUser/Library/Fonts"