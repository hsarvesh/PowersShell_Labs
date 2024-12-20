<#
For Loops
•	Write a script to print numbers from 1 to 10.
•	Write a script to calculate the factorial of a number.

#>

for ($i = 1; $i -le 10; $i++) 
{
    Write-Host $i
}

$number = 5
$factorial = 1
for ($i = 1; $i -le $number; $i++) 
{
    $factorial *= $i
}
Write-Host "Factorial of $number : $factorial"
