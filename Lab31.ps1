# Get all firewall rules 

$firewallRules = Get-NetFirewallRule 

  

  

  

$rulesDetails = $firewallRules | % { 

            '<tr>' + 

                '<td>'+ $($_.DisplayName) +'</td>' 

                '<td>'+ $($_.Enabled) +'</td>' 

                '<td>'+ $($_.Profiles -join ', ') +'</td>' 

                '<td>'+ $($_.Direction) +'</td>' 

                '<td>'+ $($_.Action) +'</td>' 

                '<td>'+ $($_.Description) +'</td>' 

                '<td>'+ $($_.Group) +'</td>' + 

            '</tr>' 

        } 

  

# Create an HTML template 

$htmlTemplate = @" 

<!DOCTYPE html> 

<html> 

<head> 

    <title>Windows Firewall Rules Report</title> 

    <style> 

        body { 

            font-family: Arial, sans-serif; 

            margin: 20px; 

        } 

        table { 

            border-collapse: collapse; 

            width: 100%; 

        } 

        th, td { 

            text-align: left; 

            padding: 8px; 

            border-bottom: 1px solid #ddd; 

        } 

        th { 

            background-color: #f2f2f2; 

        } 

    </style> 

</head> 

<body> 

    <h1>Windows Firewall Rules Report</h1> 

    <table> 

        <tr> 

            <th>DisplayName</th> 

            <th>Enabled</th> 

            <th>Profile</th> 

            <th>Direction</th> 

            <th>Action</th> 

            <th>Description</th> 

            <th>Group</th> 

        </tr> 

        $rulesDetails 

    </table> 

</body> 

</html> 

"@ 

  

# Replace placeholders with actual values 

$htmlContent = $htmlTemplate -replace '$firewallRules', $firewallRules 

  

# Write the HTML content to a file 

$outputFile = "firewall_rules_report.html" 

$htmlContent | Out-File $outputFile 

  

# Open the generated HTML file 

Start-Process $outputFile 

 