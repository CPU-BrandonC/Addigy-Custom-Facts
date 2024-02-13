#!/bin/zsh

# See https://scriptingosx.com/2020/08/running-a-command-as-another-user/

currentUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )

sudo -u $currentUser # type command here #