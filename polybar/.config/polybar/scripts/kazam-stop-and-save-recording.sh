#!/bin/bash

# Check if Kazam is currently recording
if pgrep -x "kazam" > /dev/null; then
    base_path="$HOME/Videos"
    file_name=$(ls -t $base_path | head -n 1)
    extension="${file_name##*.}"
    xdotool key super+ctrl+f
    while [[ "$extension" != "mp4" ]]; do
      file_name=$(ls -t $base_path | head -n 1)
      extension="${file_name##*.}"
      sleep 0.1
    done
    full_path="$base_path/$file_name"

    notify-send "Kazam" "Recording saved successfully at $full_path"
fi
