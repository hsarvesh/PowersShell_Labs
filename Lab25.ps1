<#
Find the changes in process ID for MS Word

We are going to find the changes in process ID for MS Word
Script will pause and request to restart the process
In case we wanted to see if this process is getting restarted or not, we can skip to find no changes but in case we successfully restart the ms word, it should report the different process ID for the said process. 

#>

# Get the current process list
$currentProcesses = Get-Process -Name WINWORD

# Wait for some time (adjust as needed)
Start-Sleep -Seconds 10
write-host "Time to restart MS Word"
pause

# Get the process list again
$newProcesses = Get-Process -Name WINWORD
# Compare the process IDs
$diff = Compare-Object $currentProcesses.Id $newProcesses.Id -PassThru
if ($diff) {
    Write-Warning "Process IDs have changed:"
    $diff
} else {
    Write-Host "No changes detected in winword.exe processes."
} 
