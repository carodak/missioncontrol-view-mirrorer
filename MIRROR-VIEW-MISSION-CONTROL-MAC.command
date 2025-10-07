#!/bin/bash

echo "Waiting for the Mission Control application to start..."

# Boucle jusqu'à ce que l'app tourne sur l'appareil Android
while true; do
    if adb shell pidof com.douglasresearch.missioncontrol >/dev/null 2>&1; then
        break
    fi
    sleep 1
done

echo "App started. Launching scrcpy..."
scrcpy --no-audio --max-fps=30 --max-size=1600 --no-control --render-driver=sdl
