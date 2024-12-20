<#

Working with Hashtables
•	Create a hashtable to store information about a person (name, age, city).
•	Access and modify the values in the hashtable.
#>

$person = @{
    Name = "Alice"
    Age = 30
    City = "New York"
}

Write-Host "Name: $($person.Name)"
Write-Host "Age: $($person.Age)"
Write-Host "City: $($person.City)"

$person.Age = 31
Write-Host "Updated age: $($person.Age)"
