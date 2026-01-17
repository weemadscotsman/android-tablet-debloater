@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
if not exist "%ADB%" (
  echo adb not found at %ADB%
  exit /b 1
)
%ADB% devices
pause
