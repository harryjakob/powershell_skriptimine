$n1 = Read-Host "Sisesta esimene number"
$n2 = Read-Host "Sisesta teine number"

Write-Host "Kalkulaator" -ForegroundColor Green
Write-Host "1: +" -ForegroundColor Yellow
Write-Host "2: -" -ForegroundColor Yellow
Write-Host "3: /" -ForegroundColor Yellow
Write-Host "4: *" -ForegroundColor Yellow

$ch = Read-Host "Sisesta oma valik"

switch ($ch) {
    1 {
        $s = $n1 + $n2
        Write-Host "Summa on: $s"
    }
    2 {
        $s = $n1 - $n2
        Write-Host "Lahus on: $s"
    }
    3 {
        if ($n2 -eq 0) {
            Write-Host "Nulliga ei saa jagada" -ForegroundColor Red
        } else {
            $s = $n1 / $n2
            Write-Host "Jagatis on: $s"
        }
    }
    4 {
        $s = $n1 * $n2
        Write-Host "Korrutis on: $s"
    }
    default {
        Write-Host "Valisite vale valiku." -ForegroundColor Red
    }
}