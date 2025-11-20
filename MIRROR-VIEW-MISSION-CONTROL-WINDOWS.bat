@echo off
echo Waiting for the Mission Control application to start...

:wait_for_app
adb shell pidof com.dakoure.missioncontrol >nul 2>&1
if errorlevel 1 (
    timeout /t 1 >nul
    goto wait_for_app
)

echo App started. Launching scrcpy...
scrcpy.exe --no-audio --crop=1600:900:2017:510 -b 8M --max-fps 30