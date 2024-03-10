$ees = read-host "Sisesta oma eesnimi: "

$pere = read-host "Sisesta oma perekonnanimi: "

$kas = $ees.ToLower()
$su = $pere.Tolower()
$kasutaja = "$kas.$su"
Write-Host "Loodav kasutaja on $kasutaja"


$olemasolev = Get-LocalUser -Name "$kasutaja" -ErrorAction SilentlyContinue

$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

if (-not $olemasolev) {
   New-LocalUser "$kasutaja" -Password $KasutajaParool -FullName "$ees $pere" -Description "local account - $ees $pere"
     Write-Host "Kasutaja: $kasutaja"
     Write-Host "Nimi: $ees $pere"
    }
else {
     
      Write-Host "Kasutaja loomisega on tekkinud probleem"
      Write-Host "Kasutaja juba eksisteerib"
    exit
}