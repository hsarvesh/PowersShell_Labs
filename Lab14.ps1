<#
Working with Arrays
•	Create an array of numbers.
•	Iterate over the array and print each element.
•	Calculate the sum of all elements in the array.
#>

$numbers = 1, 2, 3, 4, 5

foreach ($number in $numbers) {
    Write-Host $number
}

$sum = 0
foreach ($number in $numbers) {
    $sum += $number
}
Write-Host "Sum: $sum"
