#!/bin/bash

echo "==============================================="
echo "Reminder: Your headset must be connected via USB-C"
echo "and USB debugging mode must be enabled."
echo "==============================================="
echo

echo "Pulling Mission Control data..."

adb pull /sdcard/Android/data/com.dakoure.missioncontrol/files/ ./moon-trip-data/

echo
echo "Done! Data saved in the moon-trip-data folder."
read -p "Press Enter to close..."