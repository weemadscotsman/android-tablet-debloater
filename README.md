# Android Tablet Debloater (ADB)

A practical collection of **ADB-based batch scripts** to debloat Android tablets, mass-uninstall user apps, apply safe performance tweaks, and **restore everything if needed**.

Designed with **Samsung tablets** in mind, but works on most Android 6+ devices.

**No root required.**

---

## ⚠️ Disclaimer

These scripts disable or uninstall apps **for the current user only** using ADB.
No system partitions are modified.

- Factory reset restores everything
- You use this at your own risk
- Read what each script does before running it

---

## 📦 What’s Included

Scripts are numbered in **recommended execution order**:

### `00_ADB_DEVICE_CHECK.bat`
- Verifies ADB is installed
- Confirms device is connected and authorised

### `10_BACKUP_PACKAGE_LISTS.bat`
- Dumps:
  - all packages
  - system packages
  - user packages
  - disabled packages  
**Run this first if you want a safety net.**

### `20_REMOVE_VENDOR_BLOAT_KEEP_PLAY_SCLOUD.bat`
- Removes Samsung / Google vendor bloat
- **Keeps Google Play**
- **Keeps Samsung Cloud**
- Safe “recommended” tier

### `30_MASS_UNINSTALL_USER_APPS_FROM_LIST.bat`
- Mass uninstalls all user apps listed in `user_packages.txt`
- No UI interaction
- Reboots automatically

### `40_FINAL_PERFORMANCE_TWEAKS.bat`
- Disables animations
- Reduces background process pressure
- Improves perceived performance
- Reboots

### `90_RESTORE_ALL_DISABLED_APPS.bat`
- Restores all apps disabled for user 0
- Emergency recovery script
- Reboots

---

## 🧠 How It Works

These scripts use standard ADB commands such as:
- `pm uninstall --user 0`
- `pm disable-user`
- `cmd package install-existing`

Nothing here requires root access.

---

## 🖥️ Requirements

- Windows
- ADB installed (`platform-tools`)
- USB debugging enabled on the device
- Device authorised for ADB

---

## 🧯 Recovery

If something goes wrong:
- Run `90_RESTORE_ALL_DISABLED_APPS.bat`
- Or perform a factory reset from recovery

---

## 📜 License

MIT License. Do what you want, no warranty.
