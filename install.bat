@echo off
REM DEEP Code Expander setup helper for Windows.
where AutoHotkey.exe >nul 2>nul
if %errorlevel%==0 (
    echo AutoHotkey detected. Launching DEEP...
    start "" "%~dp0DEEP.ahk"
    exit /b 0
)

echo AutoHotkey v2 was not found in PATH.
echo Install AutoHotkey v2 from https://www.autohotkey.com/
echo Then double-click DEEP.ahk.
pause
