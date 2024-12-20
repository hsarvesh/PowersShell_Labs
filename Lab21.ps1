<#
Brute-force 3 character password
•	Write a script to brute force a 3 character password which might include 0-9, a-z, A-Z and characters using while loop.

#>

# Define the character set for the password
$charset = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

# Initialize a counter for the number of attempts
$attempts = 0

# Start the brute-force attack
while ($true) {
    # Generate the next password combination
    for ($i = 0; $i -lt $charset.Length; $i++) {
        for ($j = 0; $j -lt $charset.Length; $j++) {
            for ($k = 0; $k -lt $charset.Length; $k++) {
                $attempts++
                $guess = $charset[$i] + $charset[$j] + $charset[$k]

                Write-Host "Attempt $attempts : $guess"

                # Replace this with your actual password verification logic
                if ($guess -eq "013") {
                    Write-Host "Password cracked: $guess"
                    return
                }
            }
        }
    }
}
