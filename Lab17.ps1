<#Advanced Scripting Techniques
•	Write a script to automate file copying and renaming.
•	Write a script to generate a random password.
#>


Copy-Item "source.txt" "destination.txt"
Rename-Item "destination.txt" "new_file.txt"

$passwordLength = 12
$password = (Get-Random -Count $passwordLength -Minimum 33 -Maximum 126 | ForEach-Object { [char][int]$_ }) -join ''
Write-Host $password
