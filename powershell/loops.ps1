#!/usr/bin/env pwsh
# PowerShell loops over files and numbers

Write-Host "== PowerShell loops demo =="

$logDir = "C:\Windows\Logs"  # adjust as needed

if (Test-Path $logDir) {
    Get-ChildItem -Path $logDir -Filter *.log -ErrorAction SilentlyContinue |
        ForEach-Object {
            $count = (Get-Content $_.FullName).Count
            Write-Host "$($_.Name): $count lines"
        }
} else {
    Write-Host "Log directory not found: $logDir"
}

Write-Host ""
Write-Host "Simple for loop counter:"
for ($i = 1; $i -le 5; $i++) {
    Write-Host "Iteration $i"
}

