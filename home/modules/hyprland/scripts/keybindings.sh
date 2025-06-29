#!/usr/bin/env bash
config_file="$HOME/.config/hypr/conf/keybinding.conf"

echo "Reading from: $config_file"

keybinds=$(gawk -F'[=#]' '
    $1 ~ /^bind/ {
        gsub(/\$mainMod/, "SUPER", $0)
        gsub(/^bind[[:space:]]*=+[[:space:]]*/, "", $0)
        split($1, kbarr, ",")
        print kbarr[1] "  + " kbarr[2] "  →  " $2
        # print kbarr[1] "  + " kbarr[2] "\r" $2
    }
' "$config_file")

echo "KEYBINDS CONTENT:"
echo "$keybinds"

sleep 0.2
wofi --dmenu --conf ~/.config/wofi/keybinds.ini --insensitive --allow-markup --prompt "Keybinds" <<< "$keybinds"
