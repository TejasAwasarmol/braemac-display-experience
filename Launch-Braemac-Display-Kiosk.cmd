@echo off
set "APP_FILE=%~dp0index.html"
where chrome.exe >nul 2>nul
if %errorlevel%==0 (
  start "Braemac Display Offering" chrome.exe --start-fullscreen --disable-pinch "file:///%APP_FILE:\=/%"
) else (
  start "Braemac Display Offering" "%APP_FILE%"
)

