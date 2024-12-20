<#Write a script to generate 100 random mac addresses#>

# Function to generate a random MAC address
function GenerateRandomMACAddress {
    $mac = ""
    # Loop 6 times to generate a MAC address
    for ($i = 0; $i -lt 6; $i++) {
        # Generate a random hexadecimal value between 0 and 255 (inclusive)
        # and format it as a 2-digit hexadecimal string (e.g. "01", "FF", etc.)
        $mac += "{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255)
        
        # If we're not on the last iteration (i.e. $i is less than 5),
        # append a colon (:) to the MAC address string
        if ($i -lt 5) {
            $mac += ":"
        }
    }
    return $mac
}

# Generate 100 random MAC addresses
for ($i = 1; $i -le 100; $i++) {
    Write-Host (GenerateRandomMACAddress)
}

# Above code can be converted into a single line as below

# 1..100 | ForEach-Object { "{0:X2}:{1:X2}:{2:X2}:{3:X2}:{4:X2}:{5:X2}" -f (0..5 | ForEach-Object { Get-Random -Min 0 -Max 255 }) }