#Analyzing Array Values for average, max, min

# Create a sample array
$numbers = @(10, 25, 5, 30, 15, 20)

# Calculate the average
$average = ($numbers | Measure-Object -Average).Average
Write-Host "Average value: $average"

# Find the maximum value
$max = ($numbers | Measure-Object -Maximum).Maximum
Write-Host "Maximum value: $max"

# Find the minimum value
$min = ($numbers | Measure-Object -Minimum).Minimum
Write-Host "Minimum value: $min"
