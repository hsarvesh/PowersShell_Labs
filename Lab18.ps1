<#Working with PowerShell Objects
•	Get a list of running processes.
•	Sort the processes by CPU usage.
•	Select specific properties (ProcessName, CPU, and WorkingSet) of the top 5 processes.
#>

Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 5 -Property ProcessName, CPU, WorkingSet
