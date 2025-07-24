#!/bin/bash

# Keywords for apps and patterns to match
declare -A APPS=(
  ["WhatsApp"]="^\([0-9]+\)\ .*"
  ["Telegram"]=".*\([0-9]+\)$"
  ["Instagram"]="^\([0-9]+\)\ .*"
  ["Discord"]="^\([0-9]+\)\ .*"
)

LAST_TITLE=""

while true; do
  # Get currently active window title
  TITLE=$(hyprctl activewindow -j | jq -r '.title')

  # If title is different from last, check for notification patterns
  if [[ "$TITLE" != "$LAST_TITLE" ]]; then
    for APP in "${!APPS[@]}"; do
      PATTERN="${APPS[$APP]}"
      if [[ "$TITLE" == *"$APP"* && "$TITLE" =~ $PATTERN ]]; then
        # Extract number of unread messages
        MSG_COUNT=$(echo "$TITLE" | grep -oP '^\(\K[0-9]+')
        CONTACT_NAME=$(echo "$TITLE" | sed -E 's/^\([0-9]+\)\s+//')

        # Send a 5-second notification
        notify-send -u normal -t 5000 -a "$APP" "New message from $CONTACT_NAME" "$MSG_COUNT unread message(s)"
        LAST_TITLE="$TITLE"
        break
      fi
    done
  fi

  sleep 5
done
