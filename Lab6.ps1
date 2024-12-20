<#
While Loops
•	Write a script to print numbers from 1 to 10 using a while loop.
•	Write a script to guess a number using a while loop.
•	Write a script to brute force a 3 character password which might include 0-9, a-z, A-Z and characters using while loop.

#>

$i = 1
while ($i -le 10) {
    Write-Host $i
    $i++
}

$secretNumber = 42
$guess = 0
while ($guess -ne $secretNumber) {
    Write-Host "Guess a number between 1 and 100:"
    $guess = Read-Host
}
Write-Host "You guessed it!"
