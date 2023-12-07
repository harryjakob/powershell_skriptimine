$KasutajaParool = ConvertTo-SecureString "qwerty" -AsPlainText -force

New-LocalUser "kasutaja1" -Password $KasutajaParool -FullName "Esimene Kasutaja" -Description "Local Account - kasutaja1"
