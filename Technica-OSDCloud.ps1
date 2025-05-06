Write-Host "Starting TechnicaVivunt Custom OSDCloud ..."
cls
$manufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
$model = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
$serial = (Get-CimInstance -ClassName Win32_BIOS).SerialNumber
# Import-Module OSD -Force -ErrorAction SilentlyContinue -ProgressAction SilentlyContinue
# Install-Module OSD -Force -ErrorAction SilentlyContinue -ProgressAction SilentlyContinue
# Write-Host "===================== Main Menu ======================="
# Write-Host "======================================================="
# Write-Host "1: Zero-Touch Win11 24H2 | English | Enterprise"
# Write-Host "1: Zero-Touch Win11 24H2 | English | Pro"
# Write-Host "3: I'll select it myself"
# Write-Host "4: Exit`n"
# $input = Read-Host "Please make a selection"
Write-Host "Loading OSDCloud..."
$OSDModuleResource.StartOSDCloudGUI.BrandName = "Serial Number - $serial"
$OSDModuleResource.StartOSDCloudGUI.ComputerManufacturer = "$manufacturer"
$OSDModuleResource.StartOSDCloudGUI.ComputerModel = "$model"
$OSDModuleResource.StartOSDCloudGUI.updateFirmware = $true
Start-OSDCloudGUI

# switch ($input)
# {
#    '1' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 24H2 x64' -OSEdition Enterprise -ZTI -Firmware} 
#    '2' { Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 24H2 x64' -OSEdition Pro -ZTI -Firmware} 
#    '3' { Start-OSDCloudGUI } 
#    default { Exit }
# }
