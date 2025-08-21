# Mission Control Scrcpy Mirrorer

This project uses [scrcpy](https://github.com/Genymobile/scrcpy) (developed by Genymobile).  
We only added a Windows `.bat` script to make it easier to start and mirror the **Mission Control VR application** (https://github.com/J-Scan/MRIExperience).

---

## Features
- One-click launcher for scrcpy  
- Waits until the Mission Control app starts in VR  
- Automatically mirrors the VR screen to your PC  
- No manual ADB commands needed  

---

## How to Use

1. Connect your VR headset to the computer using a USB-C cable.  
2. Accept USB debugging on the VR headset.  
3. Right click on "MIRROR-VIEW-MISSION-CONTROL(scrcpy).bat" and create a shortcut on your desktop.
4. Double-click the shortcut before starting Mission Control in VR.  
5. The terminal will display:  
Waiting for Mission Control to start...
6. Start Mission Control in VR.  
7. Your VR screen should now be mirrored to your computer.  