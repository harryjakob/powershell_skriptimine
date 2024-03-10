﻿function runstart
{
$start = Get-Service | ?{$_.Status -eq "Running"}
Write-Host "Töötavaid programme on" $start.count
}

runstart

function stop

{
$stop = Get-Service | ?{$_.Status -eq "Stopped"}
Write-host "Peatatud programmide arv on" $stop.count
}

stop

#YL 2
sleep 4


function autoread
{
     param
        (
         [string]$status
        )
        if ($status -eq "Running")
         {
             $start = Get-Service | ?{$_.Status -eq "Running"}
             Write-Host "Töötavaid programme on" $start.count
         }
        elseif ($status -eq "Stopped")        
         {
             $stop = Get-Service | ?{$_.Status -eq "Stopped"}
             Write-host "Peatatud programmide arv on" $stop.count
         }
}

autoread -status Running
autoread -status Stopped