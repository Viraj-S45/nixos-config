#!/usr/bin/env bash
set -euo pipefail

# Parse --update flag
UPDATE_CACHE=false
ARGS=()
for arg in "$@"; do
  if [[ "$arg" == "--update" ]]; then
    UPDATE_CACHE=true
  else
    ARGS+=("$arg")
  fi
done

# Use the filtered arguments
TYPE="${ARGS[0]:-}"
MODE="${ARGS[1]:-add}"

if [[ "$TYPE" != "home" && "$TYPE" != "system" ]]; then
  echo "Usage: $0 [--update] [home|system] [add|remove]"
  exit 1
fi

# Paths
CONFIG_DIR="$HOME/nixos-config"
SYSTEM_FILE="$CONFIG_DIR/nixos/modules/syspkgs.nix"
HOME_FILE="$CONFIG_DIR/home/modules/programs.nix"
FILE="$([ "$TYPE" = "system" ] && echo "$SYSTEM_FILE" || echo "$HOME_FILE")"
MARKER="$([ "$TYPE" = "system" ] && echo "environment.systemPackages = with pkgs; [" || echo "home.packages = with pkgs; [")"
MARKER_ESCAPED=$(printf '%s\n' "$MARKER" | sed 's/[][\.^$*]/\\&/g')
FLAKE_COMMAND="sudo nixos-rebuild switch --flake .#virajs"

cd "$CONFIG_DIR"

if [[ "$MODE" == "remove" ]]; then
  echo "Select packages to remove from $TYPE:"
  grep -A1000 "$MARKER_ESCAPED" "$FILE" | sed -n '/\[/,/\]/p' \
    | grep -v '\[' | grep -v '\]' | sed 's/^[[:space:]]*//' \
    | fzf --multi --prompt="Remove package(s): " > /tmp/remove_pkgs.txt

  if [[ ! -s /tmp/remove_pkgs.txt ]]; then
    echo "No packages selected."
    exit 1
  fi

  while read -r pkg; do
    sed -i "\|^\s*${pkg}\s*$|d" "$FILE"
    echo "-- Removed: $pkg"
  done < /tmp/remove_pkgs.txt
  rm /tmp/remove_pkgs.txt

else
  read -rp "Search package: " query
  [[ -z "$query" ]] && { echo "Empty search."; exit 1; }

  # Refresh cache if --update flag is set or cache is older than 7 days
  if [[ "$UPDATE_CACHE" == true ]]; then
    echo "Updating package cache (forced)..."
    nps --refresh --quiet
  elif [[ ! -d ~/.nix-package-search ]] || [[ $(find ~/.nix-package-search -name "*.json" -mtime +7 2>/dev/null | head -1) ]]; then
    echo "Package cache is older than a week. Use --update to refresh now, or continuing with cached results..."
    sleep 1
  fi

  # Extract list of currently added packages
  EXISTING=$(grep -A1000 "$MARKER_ESCAPED" "$FILE" | sed -n '/\[/,/\]/p' | grep -v '\[' | grep -v '\]' | sed 's/^[[:space:]]*//')

  # Search using nps, show attr path and description
  SELECTED_PKGS=$(nps "$query" \
    | awk '{ sub(/^nixos\./, "", $1); print $1 "\t" substr($0, index($0,$3)) }' \
    | fzf --multi --with-nth=1,2 --delimiter='\t' --nth=1 --prompt="Add package(s): " \
    | cut -f1)

  if [[ -z "$SELECTED_PKGS" ]]; then
    echo "No packages selected."
    exit 1
  fi

  echo "Selected:"
  echo "$SELECTED_PKGS"

  while read -r pkg; do
    if grep -q -x -E "[[:space:]]*$pkg" <<< "$EXISTING"; then
      echo "-- Already present: $pkg"
    else
      sed -i "/$MARKER_ESCAPED/a\  $pkg" "$FILE"
      echo ">> Added: $pkg"
    fi
  done <<< "$SELECTED_PKGS"
fi

echo "Rebuilding system..."
eval "$FLAKE_COMMAND"