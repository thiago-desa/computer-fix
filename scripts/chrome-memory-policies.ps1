# Requires elevation. Forces Chrome Memory Saver / high-efficiency mode,
# disables background mode, and optionally blocklists extension IDs.
# Fully quit Chrome after applying, then relaunch.

param(
    [string[]]$ExtensionBlocklist = @(),
    [switch]$DisableHardwareAcceleration
)

$ErrorActionPreference = 'Stop'
$path = 'HKLM:\SOFTWARE\Policies\Google\Chrome'

if (-not (Test-Path $path)) {
    New-Item -Path $path -Force | Out-Null
}

# Memory Saver / High Efficiency (policy name varies by Chrome channel/version)
New-ItemProperty -Path $path -Name 'MemorySaverEnabled' -PropertyType DWord -Value 1 -Force | Out-Null
New-ItemProperty -Path $path -Name 'HighEfficiencyModeEnabled' -PropertyType DWord -Value 1 -Force | Out-Null
New-ItemProperty -Path $path -Name 'BackgroundModeEnabled' -PropertyType DWord -Value 0 -Force | Out-Null

if ($DisableHardwareAcceleration) {
    New-ItemProperty -Path $path -Name 'HardwareAccelerationModeEnabled' -PropertyType DWord -Value 0 -Force | Out-Null
}

if ($ExtensionBlocklist.Count -gt 0) {
    New-ItemProperty -Path $path -Name 'ExtensionInstallBlocklist' -PropertyType MultiString -Value $ExtensionBlocklist -Force | Out-Null
}

Write-Host 'Chrome policies written under HKLM:\SOFTWARE\Policies\Google\Chrome'
Write-Host 'Quit Chrome completely (Ctrl+Shift+Q) and reopen for policies to apply.'
