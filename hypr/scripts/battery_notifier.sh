#!/bin/bash

LOW_BATTERY_THRESHOLD=15
NOTIFIED=0  # Flag to avoid repeated notifications

while true; do
    # Get battery percentage
    BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT*/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT*/status)  # Charging / Discharging

    if [[ "$BATTERY_LEVEL" -le "$LOW_BATTERY_THRESHOLD" && "$STATUS" == "Discharging" ]]; then
        if [[ "$NOTIFIED" -eq 0 ]]; then
            notify-send -u critical -t 5000 -a "Battery Monitor" "🔋 Low Battery" "$BATTERY_LEVEL% remaining"
            NOTIFIED=1
        fi
    else
        NOTIFIED=0  # Reset flag if battery level rises above threshold or charging
    fi

    sleep 60
done
