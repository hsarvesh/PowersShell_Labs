<#
Error Handling
•	Write a script to divide two numbers, handling potential division by zero errors.
•	Use a try-catch block to catch and handle exceptions.
#>


$num1 = 10
$num2 = 0

try {
    $result = $num1 / $num2
    Write-Host "Result: $result"
} catch {
    Write-Warning "Error: Division by zero"
}
