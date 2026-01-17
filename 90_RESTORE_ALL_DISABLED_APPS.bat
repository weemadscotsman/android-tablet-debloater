@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
for /f "tokens=2 delims=:" %%P in ('%ADB% shell pm list packages -d') do (
  %ADB% shell cmd package install-existing --user 0 %%P >nul 2>&1
)
%ADB% reboot
