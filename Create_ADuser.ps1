# Basic Script to create AD Users massively
# 2022 Marci Arévalo

# Import AD Module
Import-Module ActiveDirectory

# Path and file name origin
$directorio_origen = $PSScriptRoot
$archivo_origen = $directorio_origen+"\users.csv"

# Info in console: the script starts
write-host Creando usuarios... -ForegroundColor Yellow

# Import csv file and start the loop
Import-Csv $archivo_origen | ForEach-Object {
$upn = $_.SamAccountName + “@tudominio.es”
$uname = $_.FirstName
$descript = "Description"
New-ADUser -Name $uname `
-DisplayName $uname `
-GivenName $_.FirstName `
-UserPrincipalName $upn `
-SamAccountName $_.samAccountName `
-Enabled $true `
-Description $descript `
-Path $_.OU `
-AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -force)
write-host $uname Creado
}

#Info in console: the script has finished
write-host Usuarios Creados!!! -ForegroundColor Green
