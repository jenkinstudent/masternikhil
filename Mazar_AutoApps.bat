@echo off
echo Installing applications using Winget...
pause

winget install --id Adobe.Acrobat.Reader.64-bit --silent --accept-package-agreements --accept-source-agreements
winget install --id Google.Chrome --silent --accept-package-agreements --accept-source-agreements
winget install --id RARLab.WinRAR --silent --accept-package-agreements --accept-source-agreements
winget install --id VideoLAN.VLC --silent --accept-package-agreements --accept-source-agreements
winget install --id Fortinet.FortiClientVPN --silent --accept-package-agreements --accept-source-agreements
winget install --id Oracle.JDK.8 --silent --accept-package-agreements --accept-source-agreements
winget install --id HP.SupportAssistant --silent --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Teams --silent --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Office --silent --accept-package-agreements --accept-source-agreements

echo Installation completed.
pause
