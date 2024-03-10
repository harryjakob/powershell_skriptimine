$ct1 = 0

do {
    $ch = Get-Process | Where-Object { $_.Name -like "notepad" }

    if ($ch.Count -gt 0) {
        Write-Host "Notepad is running"
        $ct1++
    }

    Start-Sleep -Seconds 1
} while ($ch.Count -gt 0)


$ct1 