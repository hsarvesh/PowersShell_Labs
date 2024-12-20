
<#

Scripting with User Input
•	Write a script to ask the user for their name and age.
•	Display a personalized greeting message.
#>


$name = Read-Host "Enter your name:"
$age = Read-Host "Enter your age:"

Write-Host "Hello, $name! You are $age years old."
