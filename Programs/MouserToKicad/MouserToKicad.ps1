$Value = Read-Host "Enter Value"

$Downloads = "D:\Downloads"
$LibFolder = "LIB_$Value"
$Root = Join-Path $Downloads $LibFolder
$PartFolder = Join-Path $Root $Value
$KiCadFolder = Join-Path $PartFolder "KiCad"

Expand-Archive -Path (Join-Path $Downloads "$LibFolder.zip") -DestinationPath (Join-Path $Downloads $LibFolder)

Move-Item -Path (Join-Path $PartFolder "3D") -Destination $Root

Remove-Item (Join-Path $KiCadFolder "$Value.dcm")
Remove-Item (Join-Path $KiCadFolder "$Value.mod")
Remove-Item (Join-Path $KiCadFolder "$Value.lib")

Rename-Item -Path (Join-Path $Root "3D") -NewName "$Value.3dshapes"

Move-Item -Path $KiCadFolder -Destination $Root

Remove-Item (Join-Path $Root "license.txt")
Remove-Item (Join-Path $Root "version.bin")

Remove-Item (Join-Path $Root $Value) -Recurse -Force

Rename-Item -Path (Join-Path $Root "KiCad") -NewName "$Value.pretty"

Move-Item -Path (Join-Path $Root "$Value.pretty\$Value.kicad_sym") -Destination $Root

Write-Host "Done!"

