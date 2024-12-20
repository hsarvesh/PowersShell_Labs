<#
Parameterized Functions
•	Create a function to calculate the area of a rectangle, taking length and width as parameters.
•	Create a function to greet a person, taking the person's name as a parameter.

#>

function Calculate-RectangleArea ($length, $width) {
    return $length * $width
}

$area = Calculate-RectangleArea 5 10
Write-Host "Area of rectangle: $area"

function Greet-Person ($name) {
    Write-Host "Hello, $name!"
}
Greet-Person "Amit"
