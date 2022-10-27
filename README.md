# PowerShell-Create AD User
Cómo crear un usuario en Directorio Activo con PowerShell<br>
How to create an AD user by powershell

Este es un script básico para crear un usuario en AD.

# Lista de propiedades

A continuación listo las propiedades que podemos incluir en nuestro script (puedes consultarlo poniendo help New-ADUser en PS). En la lista podemos ver el nombre de la propiedad seguido del tipo de dato que acepta la propiedad: <br>

<pre><code>[-Name] &lt;String&gt;
[-AccountExpirationDate &lt;DateTime&gt;]
[-AccountNotDelegated &lt;Boolean&gt;]
[-AccountPassword &lt;SecureString&gt;]
[-AllowReversiblePasswordEncryption &lt;Boolean&gt;]
[-AuthenticationPolicy &lt;ADAuthenticationPolicy&gt;]
[-AuthenticationPolicySilo &lt;ADAuthenticationPolicySilo&gt;]
[-AuthType {Negotiate | Basic}]
[-CannotChangePassword &lt;Boolean&gt;]
[-Certificates &lt;X509Certificate[]&gt;]
[-ChangePasswordAtLogon &lt;Boolean&gt;]
[-City &lt;String&gt;]
[-Company &lt;String&gt;]
[-CompoundIdentitySupported &lt;Boolean&gt;]
[-Country &lt;String&gt;]
[-Credential &lt;PSCredential&gt;]
[-Department &lt;String&gt;]
[-Description &lt;String&gt;]
[-DisplayName &lt;String&gt;]
[-Division &lt;String&gt;]
[-EmailAddress &lt;String&gt;]
[-EmployeeID &lt;String&gt;]
[-EmployeeNumber &lt;String&gt;]
[-Enabled &lt;Boolean&gt;]
[-Fax &lt;String&gt;]
[-GivenName &lt;String&gt;]
[-HomeDirectory &lt;String&gt;]
[-HomeDrive &lt;String&gt;]
[-HomePage &lt;String&gt;]
[-HomePhone &lt;String&gt;]
[-Initials &lt;String&gt;]
[-Instance &lt;ADUser&gt;]
[-KerberosEncryptionType {None | DES | RC4 | AES128 | AES256}]
[-LogonWorkstations &lt;String&gt;]
[-Manager &lt;ADUser&gt;]
[-MobilePhone &lt;String&gt;]
[-Office &lt;String&gt;]
[-OfficePhone &lt;String&gt;]
[-Organization &lt;String&gt;]
[-OtherAttributes &lt;Hashtable&gt;]
[-OtherName &lt;String&gt;]
[-PassThru]
[-PasswordNeverExpires &lt;Boolean&gt;]
[-PasswordNotRequired &lt;Boolean&gt;]
[-Path &lt;String&gt;]
[-POBox &lt;String&gt;]
[-PostalCode &lt;String&gt;]
[-PrincipalsAllowedToDelegateToAccount &lt;ADPrincipal[]&gt;]
[-ProfilePath &lt;String&gt;]
[-SamAccountName &lt;String&gt;]
[-ScriptPath &lt;String&gt;]
[-Server &lt;String&gt;]
[-ServicePrincipalNames &lt;String[]&gt;]
[-SmartcardLogonRequired &lt;Boolean&gt;]
[-State &lt;String&gt;]
[-StreetAddress &lt;String&gt;]
[-Surname &lt;String&gt;]
[-Title &lt;String&gt;]
[-TrustedForDelegation &lt;Boolean&gt;]
[-Type &lt;String&gt;]
[-UserPrincipalName &lt;String&gt;]
[-Confirm]
[-WhatIf]
[&lt;CommonParameters&gt;]</code></pre>

Tomamos como ejemplo la primera propiedad y vemos:<br>
<pre><code>[-Name](propiedad) &lt;String&gt;(tipo de dato, en este caso String)</code></pre>

