if($args.Count -ne 3 ){
    echo '.\Skriptinimi kasutajanimi "Ees Perenimi" "Konto kirjeldus"'
} else {
    $Kasutajanimi = $args[0]
    $TaisNimi = $args[1]
    $KontoKirjeldus = $args[2]

    $KasutajaParool = ConvertTo-SecureString "qwerty" -AsPlainText -Force
    New-LocalUser "$Kasutajanimi" -Password $KasutajaParool -FullName "$Taisnimi" -Description "$KontoKirjeldus"
}