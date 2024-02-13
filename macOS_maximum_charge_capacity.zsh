#!/bin/zsh

ioreg -l | grep -i AppleRawMaxCapacity | cut -d'=' -f2