<#Regular Expressions
•	Write a script to validate email addresses using regular expressions.
•	Write a script to extract phone numbers from a text string.
#>

$email = "alice@example.com"
$regex = "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+$"
if ($email -match $regex) {
    Write-Host "Valid email address"
} else {
    Write-Host "Invalid email address"
}
