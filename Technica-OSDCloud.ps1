Write-Host "Starting TechnicaVivunt Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu ======================="
Write-Host "======================================================="
Write-Host "1: Zero-Touch Win11 24H2 | English | Enterprise"
Write-Host "1: Zero-Touch Win11 24H2 | English | Pro"
Write-Host "3: I'll select it myself"
Write-Host "4: Exit`n"
$input = Read-Host "Please make a selection"

Write-Host "Loading OSDCloud..."

Import-Module OSD -Force | Out-Null
Install-Module OSD -Force | Out-Null
$manufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
$model = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
$ipAddress = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias (Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -First 1).InterfaceAlias).IPAddress
$serial = (Get-CimInstance -ClassName Win32_BIOS).SerialNumber

Write-Host "$manufacturer"
Write-Host "$model"
Write-Host "$serial"
Write-Host "$ipAddress"


switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 24H2 x64' -OSEdition Enterprise -ZTI -Firmware} 
    '2' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 24H2 x64' -OSEdition Pro -ZTI -Firmware} 
    '3' { Start-OSDCloudGUI -Firmware} 
    '4' { Exit }
}
