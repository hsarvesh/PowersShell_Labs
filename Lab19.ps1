<#
Formatting Output
•	Get a list of services.
•	Format the output as a table, displaying the Status, Name, and DisplayName properties.
•	Customize the table's appearance using Format-Table parameters.
#>

Get-Service | Format-Table -AutoSize -Property Status, Name, DisplayName -Autosize