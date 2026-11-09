# Disables a named startup entry via the StartupApproved binary pattern
# used by Task Manager > Startup apps. Does not uninstall the app.

param(
    [Parameter(Mandatory = $true)]
    [string]$NameContains
)

$ErrorActionPreference = 'Stop'
$roots = @(
    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run',
    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run32',
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run',
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run32'
)

# Disabled marker commonly used by Windows (12-byte value starting with 03)
$disabled = [byte[]](0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)
$found = $false

foreach ($root in $roots) {
    if (-not (Test-Path $root)) { continue }
    Get-Item -Path $root | Select-Object -ExpandProperty Property | ForEach-Object {
        if ($_ -like "*$NameContains*") {
            Set-ItemProperty -Path $root -Name $_ -Value $disabled
            Write-Host "Disabled startup entry: $_ ($root)"
            $found = $true
        }
    }
}

if (-not $found) {
    Write-Host "No StartupApproved entry matched '*$NameContains*'."
    Write-Host 'Also check Task Scheduler and the shell:startup folder.'
}
