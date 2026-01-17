@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
%ADB% shell settings put global window_animation_scale 0
%ADB% shell settings put global transition_animation_scale 0
%ADB% shell settings put global animator_duration_scale 0
%ADB% shell settings put global background_process_limit 2
%ADB% reboot
