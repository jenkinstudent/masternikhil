@echo off
echo Checking and installing/upgrading applications using Winget...
echo.

:: Function to check, upgrade, or install application
setlocal enabledelayedexpansion

set apps= ^
    "Adobe.Acrobat.Reader.64-bit" ^
    "Google.Chrome" ^
    "RARLab.WinRAR" ^
    "VideoLAN.VLC" ^
    "Fortinet.FortiClientVPN" ^
    "Oracle.JDK.8" ^
    "HP.SupportAssistant" ^
    "Microsoft.Teams" ^
    "Microsoft.Office"

for %%A in (%apps%) do (
    echo Checking %%A...
    winget list --id %%A > nul 2>&1
    if %errorlevel% == 0 (
        echo %%A is already installed. Checking for updates...
        winget upgrade --id %%A --silent --accept-package-agreements --accept-source-agreements
    ) else (
        echo %%A is not installed. Installing now...
        winget install --id %%A --silent --accept-package-agreements --accept-source-agreements
    )
    echo.
)

echo Process completed.
pause
