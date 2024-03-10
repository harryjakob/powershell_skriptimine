﻿$vaartus1 = Read-Host "Enter the first value"
$vaartus2 = Read-Host "Enter the second value"
if($vaartus1 -gt $vaartus2)
    {
        Write-Host "The higher number is : "$vaartus1
    }
else
    {
        Write-Host "The higher number is : "$vaartus2
    }