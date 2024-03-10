﻿function Translit {
    param(
        [string] $inputString
    )
        $Translit = @{
        [char]'ä' = "a"
        [char]'ö' = "o"
        [char]'ü' = "u"
        [char]'õ' = "o"
        }

    $outputString = ""
    foreach ($char in $inputchar = $inputString.ToCharArray())
    {
        if ($Translit[ $char] -cne $Null ){
            $outputString += $Translit[$char]
        } else {
            $outputString += $char
        }
    }
    Write-Output $outputString
}




$file = "C:\Users\Administrator\Documents\aduser.csv"
$users = Import-Csv $file -Encoding Default -Delimiter ";"

foreach ($user in $users) {
   
    $username = $user.FirstName + "." + $user.LastName
    $username = $username.ToLower()
    $username = Translit($username)
    $upname = $username + "@sv-kool.local"
    $displayname = $user.FirstName + " " + $user.LastName
   

     $existingUser = Get-ADUser -Filter { SamAccountName -eq $username } -ErrorAction SilentlyContinue
   
    if ($existingUser -eq $null) {
   
    New-ADUser -name $username `
            -DisplayName $displayname `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -Department $user.Department `
            -Title $user.Role `
            -UserPrincipalname $upname `
            -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -force) -Enable $true
       
            Write-Host "User $username created successfully."
        } else {
             Write-Host "User $username already exists."
        }

}