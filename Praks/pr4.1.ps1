Write-Host "Vali riik" -ForegroundColor Yellow
Write-Host "1 : Eesti" -ForegroundColor Green
write-Host "2 : Soome" -ForegroundColor Green
Write-Host "3 : Läti" -ForegroundColor Green

$choice = Read-Host "Palun vali riik"

if($choice -eq "1")
    {
        Write-Host "Eesti pealinn on Tallinn" -ForegroundColor Red
    }
    elseif($choice -eq "2")
    {
        Write-Host "Soome pealinn on Helsingi" -ForegroundColor Red
    }
    elseif($choice -eq "3")
    {
        Write-Host "Läti pealinn on Riia" -ForegroundColor Red
    }
    else
    {
        Write-Host "Vale valik" -ForegroundColor DarkRed
    }