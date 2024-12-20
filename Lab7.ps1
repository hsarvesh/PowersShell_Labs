<#
Switch Statements
•	Write a script to determine the day of the week based on a number (1-7).
•	Write a script to check the grade of a student based on their marks.


#>

$dayNumber = 3

switch ($dayNumber) {
    1 { Write-Host "Monday" }
    2 { Write-Host "Tuesday" }
    3 { Write-Host "Wednesday" }
    4 { Write-Host "Thursday" }
    5 { Write-Host "Friday" }
    6 { Write-Host "Saturday" }
    7 { Write-Host "Sunday" }
    default { Write-Host "Invalid day number" }
}

$marks = Read-Host "Enter the marks to check the grade : "

switch ($marks) {
    { $_ -ge 90 } { Write-Host "A+"; break }
    { $_ -ge 80 } { Write-Host "A"; break }
    { $_ -ge 70 } { Write-Host "B"; break }
    { $_ -ge 60 } { Write-Host "C"; break }
    default { Write-Host "F" }
}