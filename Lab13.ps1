<#
Reading and Writing Files
•	Write a script to read the contents of a text file.
•	Write a script to write a message to a text file.
#>

# Read a file
$content = Get-Content "myfile.txt"
Write-Host $content

# Write to a file
$message = "Hello, world!"
$message | Out-File "output.txt"
