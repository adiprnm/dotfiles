#!/bin/bash

# Check if the Kazam process is running
if pgrep -x "kazam" > /dev/null
then
    echo " Recording..." # You can customize this text and emoji
else
    echo "" # Output nothing if Kazam is not running
fi
