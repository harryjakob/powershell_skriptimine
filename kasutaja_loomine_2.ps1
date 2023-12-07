$Fail = "C:\Users\SkriptimineHJL\Documents\kasutajad.csv"
$Kasutajad = Import-Csv $Fail -Encoding Defaul -Delimiter ";"
foreach ($Kasutaja in $Kasutajad)
{
    $Kasutajanimi = $kasutaja.Kasutajanimi
    $Taisnimi = $kasutaja.Taisnimi
    $KontoKirjeldus = $kasutaja.KontoKirjeldus
    $parool = $kasutaja.Parool | ConvertTo-SecureString -AsPlainText -Force
    New-LocalUser -Name $Kasutajanimi -Password $parool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}