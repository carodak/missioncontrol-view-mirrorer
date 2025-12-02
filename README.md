# Mission Control Scrcpy Mirrorer

This project uses [scrcpy](https://github.com/Genymobile/scrcpy) (developed by Genymobile).  
We added custom scripts to make it easier to **mirror the [Mission Control VR application](https://github.com/CRISPGroup/Mission-Control-MRI-VR)** and to **retrieve the moon trip data** recorded during the VR simulation.

---

## Features

- One-click launcher for `scrcpy`
- Automatically waits until the Mission Control app starts in VR
- Mirrors the VR screen to your PC automatically
- Retrieves moon trip data recorded during the session
- No manual ADB commands required

---

## Usage on Windows

1. Connect your VR headset to your computer using a **USB-C cable**.  
2. Accept the **USB debugging** prompt on your headset.  
3. In the missioncontrol-view-mirrorer folder, right-click on **`MIRROR-VIEW-MISSION-CONTROL_WINDOWS.bat`**, select **“Create shortcut”** and place it on your desktop.  
4. You can **Double-click** the shortcut **before or after launching Mission Control in VR**.  
5. Your VR screen will automatically be mirrored to your computer.

**Retrieve data after the session:**  
Double-click **`GET_MOON_TRIP_DATA_WINDOWS.bat`** and follow the on-screen instructions to pull the recorded moon trip data.

---

## Usage on macOS

Before using the scripts, you must install the required tools (`scrcpy` and `adb`) using Homebrew:

### Install dependencies

If you don’t have Homebrew installed, run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install the required tools:

```bash
brew install scrcpy
brew install android-platform-tools
```

### Run the custom scripts

Once scrcpy installed, the process is similar to Windows, with one extra step:

1. Connect your VR headset via **USB-C** and enable **USB debugging**.  
2. Before running the scripts, **grant execution permissions**:

```bash
chmod +x MIRROR-VIEW-MISSION-CONTROL_MAC.command
chmod +x GET_MOON_TRIP_DATA_MAC.command
```
3. In the missioncontrol-view-mirrorer folder, double-click MIRROR-VIEW-MISSION-CONTROL_MAC.command before launching Mission Control in VR to start screen mirroring.
4. After the session, double-click GET_MOON_TRIP_DATA_MAC.command to retrieve the moon trip data.

Reminder: Your headset must be connected via USB-C and USB debugging mode must be enabled for both mirroring and data retrieval scripts to work.