while ((Get-Process -Name "Notepad" -ErrorAction SilentlyContinue).Count -gt 0) {
    Write-Host "Notepad is running"
    Start-Sleep -Seconds 2  
}

Write-Host "All instances of Notepad are closed"