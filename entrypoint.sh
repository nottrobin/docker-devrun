#!/bin/sh

if [ -x "/devrun/commands/${1}" ]; then
    /devrun/commands/$1
else
    /devrun/commands/help
    exit 1
fi

