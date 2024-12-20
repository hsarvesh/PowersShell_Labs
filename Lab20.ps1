<#Pipelines and Cmdlets
•	Get a list of files in a directory.
•	Filter the files by extension (e.g., .txt).
•	Sort the filtered files by last modified date.
•	Rename the filtered files by adding a prefix.
#>

Get-ChildItem -Path C:\temp -Filter *.txt | Sort-Object LastWriteTime -Descending | Rename-Item -NewName { $_.Name -replace '\.txt$', '_modified.txt' }