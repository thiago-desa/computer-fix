# Read-only snapshot for a weekly baseline comparison.
# Prints a few lines of machine state. No changes.

$ErrorActionPreference = 'Continue'
$os = Get-CimInstance Win32_OperatingSystem
$cs = Get-CimInstance Win32_ComputerSystem
$gpu = Get-CimInstance Win32_VideoController | Select-Object -First 1
$freeGb = [math]::Round($os.FreePhysicalMemory / 1MB, 2)
$totalGb = [math]::Round($cs.TotalPhysicalMemory / 1GB, 2)
$uptime = (Get-Date) - $os.LastBootUpTime

Write-Host "OS: $($os.Caption) build $($os.BuildNumber)"
Write-Host "RAM free/total GB: $freeGb / $totalGb"
Write-Host "GPU: $($gpu.Name)"
Write-Host "Uptime hours: $([math]::Round($uptime.TotalHours, 1))"
Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    if ($_.Used -ne $null) {
        $free = [math]::Round($_.Free / 1GB, 1)
        Write-Host ("Drive {0}: {1} GB free" -f $_.Name, $free)
    }
}

Write-Host '--- Top processes by WorkingSet ---'
Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 8 Name, Id, @{n='MB';e={[math]::Round($_.WorkingSet64/1MB)}} | Format-Table -AutoSize

Write-Host '--- Recent BugCheck / Kernel-Power (7 days) ---'
$since = (Get-Date).AddDays(-7)
Get-WinEvent -FilterHashtable @{LogName='System'; Id=1001,41; StartTime=$since} -ErrorAction SilentlyContinue |
    Select-Object -First 5 TimeCreated, Id, ProviderName | Format-Table -AutoSize
