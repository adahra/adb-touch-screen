# ADB Touch Control
A Bash script for controlling Android devices via ADB with keyboard shortcuts, supporting taps, swipes, and screen control.

## Features

- **Tap Control**:
  - Center tap (G key)
  - Left tap (D key)
  
- **Swipe Gestures**:
  - Left swipe (Q key)
  - Right swipe (W key)
  - Up swipe (Z key)
  - Down swipe (X key)

- **Device Control**:
  - Toggle screen on/off (S key)
  
- **Utility**:
  - Clear terminal (C key)
  - Exit script (E key)

## Requirements

- Android Debug Bridge (ADB) installed
- USB debugging enabled on Android device
- Device connected via USB/Wi-Fi ADB

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/adb-touch-control.git
   cd adb-touch-control
   ```

2. Make the script executable:
   ```bash
   chmod +x adb-touch-control.sh
   ```

## Usage
1. Connect your Android device via ADB:
   ```bash
   adb devices
   ```

2. Run the script:
   ```bash
   ./adb-touch-control.sh
   ```

3. Use the following keyboard controls:
   ```
   Key	Action
   G	  Center tap (540,840)
   D	  Left tap (135,840)
   Q	  Swipe right-to-left
   W	  Swipe left-to-right
   Z	  Swipe bottom-to-top
   X	  Swipe top-to-bottom
   S	  Toggle screen on/off
   C	  Clear terminal screen
   E	  Exit script
   ```

## Customization

Edit the script to change:
- Tap coordinates
- Swipe start/end points
- Swipe duration (in milliseconds)
  ```bash
  SWIPE_DURATION=200  # Default swipe speed
  ```

## Troubleshooting

1. Device not recognized:
   - Verify ```adb devices``` shows your device
   - Check USB debugging is enabled
2. Permission denied:
   - Ensure you executed ```chmod +x``` on the script
3. ADB not found:
   - Install ADB via your package manager:
     ```bash
     # For Ubuntu/Debian
     sudo apt install adb
     ```
