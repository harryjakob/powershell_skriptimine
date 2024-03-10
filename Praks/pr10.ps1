$ct1 = 0
$ct2 = 0

do {
    $ch = Get-Process | Where-Object { $_.Name -like "note*" }

    if ($ch.Count -gt 0) {
        Write-Host "Notepad is running"
        Start-Sleep -Seconds 1
        $ct1++
        $ct2 = 2
    } else {
        $ct2 = 1
    }
} until ($ct2 -eq 1)

$ct1