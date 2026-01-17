@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
if not exist user_packages.txt exit /b
for /f "tokens=2 delims=:" %%P in (user_packages.txt) do (
  %ADB% shell pm uninstall --user 0 %%P >nul 2>&1
)
%ADB% reboot
