Write-Host "Palun sisestage vajalikud andmed konto kustutamiseks!"
$ees = read-host "Sisesta eesnimi: "
$pere = read-host "Sisesta perekonnanimi: "

$kas = $ees.ToLower()
$su = $pere.Tolower()
$kasutaja = "$kas.$su"
Write-Host "Kustutav konto on $kasutaja"


$olemasolev = Get-LocalUser -Name "$kasutaja" -ErrorAction SilentlyContinue

if ($olemasolev) {
    Remove-LocalUser -Name $kasutaja -Verbose
    Write-Host "Kasutaja $kasutaja on kustutatud"
}
else {
    Write-Host "Kasutaja kustutamisel tekkis viga"

}