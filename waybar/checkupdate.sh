#!/usr/bin/env bash

# Check if checkupdates command is available
if ! command -v checkupdates &> /dev/null; then
    echo "checkupdates command not found"
    exit 1
fi

# Count the number of available updates
UPDATES=$(checkupdates | wc -l)

# Regular expression to check if UPDATES is a number
re='^[0-9]+$'
if ! [[ $UPDATES =~ $re ]]; then
    echo "Failed to check updates"
    exit 1
fi

# Conditional output based on the number of updates
if (( UPDATES > 0 )); then
    echo "${UPDATES} updates available"
else
    echo "System is up to date"
fi

exit 0
