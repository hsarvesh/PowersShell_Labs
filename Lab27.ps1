#Generate 20 characters random password using PowerShell

# Function to generate a random 20-character password
function Generate-RandomPassword {
    # Define an array of characters to choose from
    $characters = 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '!', '@', '#', '$', '%', '^', '&', '*'

    # Initialize an empty string to store the generated password
    $password = ''

    # Generate 20 random characters from the character array
    for ($i = 0; $i -lt 20; $i++) {
        # Select a random character from the array
        $randomChar = $characters | Get-Random
        # Append the random character to the password string
        $password += $randomChar
    }

    # Return the generated password
    return $password
}

# Generate a random password and display it
$randomPassword = Generate-RandomPassword
Write-Host "Random Password: $randomPassword" 
