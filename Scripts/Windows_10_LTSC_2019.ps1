# https://github.com/farag2/Sophia-Script-for-Windows/blob/master/sophia_script_versions.json
$Parameters = @{
	Uri = "https://raw.githubusercontent.com/farag2/Sophia-Script-for-Windows/master/sophia_script_versions.json"
}
$Latest_Release_Windows_10_LTSC2019 = (Invoke-RestMethod @Parameters).Sophia_Script_Windows_10_LTSC2019

Write-Verbose -Message "Sophia.Script.for.Windows.10.LTSC.2019.v$Latest_Release_Windows_10_LTSC2019.zip" -Verbose

New-Item -Path "Sophia_Script_for_Windows_10_LTSC_2019_v$Latest_Release_Windows_10_LTSC2019\Binaries" -ItemType Directory -Force

$Parameters = @{
	Path        = @("Scripts\LGPO.exe")
	Destination = "Sophia_Script_for_Windows_10_LTSC_2019_v$Latest_Release_Windows_10_LTSC2019\Binaries"
	Recurse     = $true
	Force       = $true
}
Copy-Item @Parameters

Get-ChildItem -Path "src\Sophia_Script_for_Windows_10_LTSC_2019" -Force | Copy-Item -Destination "Sophia_Script_for_Windows_10_LTSC_2019_v$Latest_Release_Windows_10_LTSC2019" -Recurse -Force

$Parameters = @{
	Path             = "Sophia_Script_for_Windows_10_LTSC_2019_v$Latest_Release_Windows_10_LTSC2019"
	DestinationPath  = "Sophia.Script.for.Windows.10.LTSC.2019.v$Latest_Release_Windows_10_LTSC2019.zip"
	CompressionLevel = "Fastest"
	Force            = $true
}
Compress-Archive @Parameters
