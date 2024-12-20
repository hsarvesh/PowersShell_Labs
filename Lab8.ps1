<#
: Creating Functions
•	Create a function to calculate the area of a circle.
•	Create a function to check if a number is prime.
#>


function Calculate-CircleArea ($radius) {
    return [math]::PI * $radius * $radius
}
$area = Calculate-CircleArea 5
Write-Host "Area of circle: $area"

function Is-PrimeNumber ($number) {
    for ($i = 2; $i -le [math]::Sqrt($number); $i++) {
        if ($number % $i -eq 0) {
            return $false
        }
    }
    return $true
}
$number = 17
if (Is-PrimeNumber $number) {
    Write-Host "$number is a prime number"
} else {
    Write-Host "$number is not a prime number"
}
