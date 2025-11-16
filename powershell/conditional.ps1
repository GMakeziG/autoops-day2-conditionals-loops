#!/usr/bin/env pwsh
# Simple PowerShell condition checks

Write-Host "== PowerShell conditionals demo =="

# Check user
$user = $env:USERNAME
if ($user -eq "Administrator") {
    Write-Host "Running as Administrator."
} else {
    Write-Host "Running as standard user: $user"
}

# Check path
$path = "C:\Windows\System32"
if (Test-Path $path) {
    Write-Host "Path exists: $path"
} else {
    Write-Host "Path does not exist: $path"
}

# Check a service state (Windows)
$svcName = "Spooler"
$svc = Get-Service -Name $svcName -ErrorAction SilentlyContinue
if ($null -eq $svc) {
    Write-Host "Service '$svcName' not found."
} elseif ($svc.Status -eq 'Running') {
    Write-Host "Service '$svcName' is running."
} else {
    Write-Host "Service '$svcName' is $($svc.Status)."
}

