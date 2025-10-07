@echo off
echo Waiting for the Mission Control application to start...

:wait_for_app
adb shell pidof com.douglasresearch.missioncontrol >nul 2>&1
if errorlevel 1 (
    timeout /t 1 >nul
    goto wait_for_app
)

echo App started. Launching scrcpy...
scrcpy.exe --no-audio --max-fps=30 --max-size=1600 --no-control --render-driver=sdl
