Write-Host  -ForegroundColor DarkMagenta "Starting TechnicaVivunt Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor DarkMagenta
Write-Host "=======================================================" -ForegroundColor DarkMagenta
Write-Host "1: Zero-Touch Win10 21H1 | English | Enterprise"-ForegroundColor DarkMagenta
Write-Host "2: Zero-Touch Win11 22H2 | English | Enterprise" -ForegroundColor DarkMagenta
Write-Host "3: I'll select it myself"-ForegroundColor DarkMagenta
Write-Host "4: Exit`n"-ForegroundColor DarkMagenta
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor DarkMagenta "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 10 22H2 x64' -OSEdition Enterprise -ZTI } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 22H2 x64' -OSEdition Enterprise -ZTI } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot
