<#
If-Else Statements
•	Write a script to check if a number is even or odd.
•	Write a script to check if a person is eligible to vote.

#>

$number = 25
$age = 18

if ($number % 2 -eq 0) {
    Write-Host "$number is even"
}
else {
    Write-Host "$number is odd"
}

if ($age -ge 18) {
    Write-Host "Eligible to vote"
}
else {
    Write-Host "Not eligible to vote"
}
