#!/usr/bin/env bash

# Dependencies: wf-recorder, thunar, notify-send, xdg-utils

set -e

# Temp file to capture the user-chosen output path
TEMP_FILE=$(mktemp)

# Launch Thunar to select the save directory and name the file
thunar --chooser --save --title="Choose save location" "$TEMP_FILE" &

# Wait for user to close Thunar or select
while [ ! -f "$TEMP_FILE" ] || [ ! -s "$TEMP_FILE" ]; do
    sleep 1
done

# Read path from temp file
SAVE_PATH=$(cat "$TEMP_FILE")
rm "$TEMP_FILE"

# Ensure it ends with .mp4
if [[ "$SAVE_PATH" != *.mp4 ]]; then
    SAVE_PATH="${SAVE_PATH}.mp4"
fi

# Set resolution
RESOLUTION="1920x1080"

# Audio device detection (modify as needed)
AUDIO_DEVICE=$(pw-record --list-targets | grep 'Monitor of' | head -n1 | cut -d':' -f1 | xargs)

# Start recording with audio and video
notify-send "🎥 Screen Recording" "Recording started..."
echo "Recording... Press 'q' to stop."

# Start recording in background
wf-recorder -g "$(hyprctl monitors -j | jq -r '.[0].x')x$(hyprctl monitors -j | jq -r '.[0].y')+"$RESOLUTION \
    -a -f "$SAVE_PATH" &

REC_PID=$!

# Wait for user to press 'q'
while true; do
    read -rsn1 key
    if [[ "$key" == "q" ]]; then
        kill $REC_PID
        break
    fi
done

notify-send "🛑 Screen Recording" "Recording saved to: $SAVE_PATH"
echo "Recording stopped. Saved to $SAVE_PATH"
