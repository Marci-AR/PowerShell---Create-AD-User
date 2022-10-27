# Basic Script to create AD Users massively
# 2022 Marci Arévalo

<# Propiedades del Objeto
[-Name] <String>
[-AccountExpirationDate <DateTime>]
[-AccountNotDelegated <Boolean>]
[-AccountPassword <SecureString>]
[-AllowReversiblePasswordEncryption <Boolean>]
[-AuthenticationPolicy <ADAuthenticationPolicy>]
[-AuthenticationPolicySilo <ADAuthenticationPolicySilo>]
[-AuthType {Negotiate | Basic}]
[-CannotChangePassword <Boolean>]
[-Certificates <X509Certificate[]>]
[-ChangePasswordAtLogon <Boolean>]
[-City <String>]
[-Company <String>]
[-CompoundIdentitySupported <Boolean>]
[-Country <String>]
[-Credential <PSCredential>]
[-Department <String>]
[-Description <String>]
[-DisplayName <String>]
[-Division <String>]
[-EmailAddress <String>]
[-EmployeeID <String>]
[-EmployeeNumber <String>]
[-Enabled <Boolean>]
[-Fax <String>]
[-GivenName <String>]
[-HomeDirectory <String>]
[-HomeDrive <String>]
[-HomePage <String>]
[-HomePhone <String>]
[-Initials <String>]
[-Instance <ADUser>]
[-KerberosEncryptionType {None | DES | RC4 | AES128 | AES256}]
[-LogonWorkstations <String>]
[-Manager <ADUser>]
[-MobilePhone <String>]
[-Office <String>]
[-OfficePhone <String>]
[-Organization <String>]
[-OtherAttributes <Hashtable>]
[-OtherName <String>]
[-PassThru]
[-PasswordNeverExpires <Boolean>]
[-PasswordNotRequired <Boolean>]
[-Path <String>]
[-POBox <String>]
[-PostalCode <String>]
[-PrincipalsAllowedToDelegateToAccount <ADPrincipal[]>]
[-ProfilePath <String>]
[-SamAccountName <String>]
[-ScriptPath <String>]
[-Server <String>]
[-ServicePrincipalNames <String[]>]
[-SmartcardLogonRequired <Boolean>]
[-State <String>]
[-StreetAddress <String>]
[-Surname <String>]
[-Title <String>]
[-TrustedForDelegation <Boolean>]
[-Type <String>]
[-UserPrincipalName <String>]
[-Confirm]
[-WhatIf]
[<CommonParameters>] #>

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
-ScriptPath "login.bat" `
-Path $_.OU `
-AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -force)
write-host $uname
}

#Info in console: the script has finished
write-host Usuarios Creados!!! -ForegroundColor Green
