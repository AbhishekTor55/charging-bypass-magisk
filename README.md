# charging-bypass-magisk
Charging Bypass Magisk Module — Android 14–16 supported. Disables charging when screen is ON and re-enables when OFF. Useful for gaming/dev use. Kernel-level control. Tested on Miatoll (AOSP 16). Logs saved to /sdcard/charging_bypass.log


# Charging Bypass Magisk Module (v1.0)

![Android versions](https://img.shields.io/badge/Android-14%20%7C%2015%20%7C%2016-brightgreen)

Run your phone plugged in **without charging the battery** while the screen is ON. Charging automatically resumes when the screen turns OFF.

---

## ⚙️ Features
- 🔌 Disable charging when screen is ON  
- ⚡ Re-enable charging when screen is OFF  
- 🧾 Logs activity to `/sdcard/charging_bypass.log`  
- ✅ Designed for Miatoll and compatible ROMs  
- 📲 Supports Android 14, 15, 16

---

## 📦 Installation
1. Download `charging-bypass-v1.0.zip` from Releases  
2. Open Magisk Manager → Modules → Install from storage  
3. Reboot your device  
4. Plug in charger and monitor behavior

---

## 🧪 How To Test
- With charger connected, turn **screen ON** → battery % should stop increasing  
- Turn **screen OFF** → charging icon returns  
- Check kernel state via:
  ```bash
  cat /sys/class/power_supply/battery/charging_enabled
# 🥳😜 Support This Project

If you like this project and want to support future development:

-📲 UPI: "kabhishek2972@ybl"

Every small contribution helps!

