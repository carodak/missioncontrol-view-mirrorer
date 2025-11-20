#!/bin/bash

echo "Waiting for the Mission Control application to start..."

# Boucle jusqu'à ce que l'app tourne sur l'appareil Android
while true; do
    if adb shell pidof com.dakoure.missioncontrol >/dev/null 2>&1; then
        break
    fi
    sleep 1
done

echo "App started. Launching scrcpy..."
scrcpy --no-audio --crop=1600:900:2017:510 -b 8M --max-fps 30
