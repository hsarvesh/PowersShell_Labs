<#
Recording PowerShell session

Using Start-Transcript to Record PowerShell Sessions
What is Start-Transcript?
Start-Transcript is a PowerShell cmdlet that initiates a recording of your PowerShell session. It logs all commands you type and their corresponding output to a specified file. This can be useful for:
•	Debugging: Reviewing past commands and their results.
•	Documentation: Creating a record of your work.
•	Training: Sharing your actions and explanations with others.
How to Use Start-Transcript:
1.	Start Recording:
PowerShell
Start-Transcript
2.	Perform Your Tasks: Execute the PowerShell commands you want to record.
3.	Stop Recording:
PowerShell
Stop-Transcript
Customizing the Transcript File:
By default, Start-Transcript creates a file named PowerShell_transcript.hostname.random.timestamp.txt in your Documents folder. You can customize this behavior using the -Path parameter:


#>

Start-Transcript -Path "C:\logs\powershell_session.log"

# Get a list of running processes
Get-Process

# Filter processes by name
Get-Process | Where-Object {$_.Name -eq "powershell"}

# Stop the transcript
Stop-Transcript
