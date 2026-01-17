@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
%ADB% shell pm list packages > all_packages.txt
%ADB% shell pm list packages -s > system_packages.txt
%ADB% shell pm list packages -3 > user_packages.txt
%ADB% shell pm list packages -d > disabled_packages.txt
echo Backup complete.
pause
