@echo off
set ADB=C:\android-tools\platform-tools\adb.exe
for %%P in (
com.samsung.android.app.spage
com.samsung.android.bixby.agent
com.samsung.android.bixby.wakeup
com.samsung.android.game.gamehome
com.samsung.android.game.gametools
com.samsung.android.game.gos
com.samsung.android.kidsinstaller
com.samsung.android.goodlock
com.samsung.android.tvplus
com.samsung.android.smartsuggestions
com.samsung.android.storyservice
com.samsung.android.rubin.app
com.samsung.android.dqagent
com.samsung.android.da.daagent
com.google.android.apps.magazines
com.google.android.apps.tachyon
com.google.android.feedback
) do (
  %ADB% shell pm disable-user --user 0 %%P >nul 2>&1
)
%ADB% reboot
