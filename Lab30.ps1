# Get the current directory 

$currentDirectory = Get-Location 

  

# This line retrieves the current working directory where the script is being executed. 

# It stores the path to this directory in the $currentDirectory variable. 

  

# Get all subdirectories in the current directory 

$subdirectories = Get-ChildItem $currentDirectory -Directory 

  

# This line gets a list of all subdirectories within the current directory.  

# The `Get-ChildItem` cmdlet is used to list directory items, and the `-Directory` parameter  

# specifies that only directories should be retrieved. The result is stored in the  

# $subdirectories variable. 

  

# Loop through each subdirectory and calculate its size 

foreach ($subdirectory in $subdirectories) { 

    $subdirectorySize = (Get-ChildItem $subdirectory.FullName -Recurse | Measure-Object -Property Length -Sum).Sum 

    # This line calculates the total size of the current subdirectory and all its contents.  

    # `Get-ChildItem $subdirectory.FullName -Recurse` gets all files and subdirectories  

    # within the subdirectory recursively. `Measure-Object -Property Length -Sum` calculates  

    # the total size in bytes. The `.Sum` property extracts the total size from the measurement object.  

  

    $sizeInMB = $subdirectorySize / 1MB 

    $sizeInGB = $subdirectorySize / 1GB 

    # These lines convert the total size from bytes to megabytes and gigabytes.  

  

    $sizeInGB = "{0:N2}" -f $sizeInGB 

    $sizeInMB = "{0:N2}" -f $sizeInMB 

    # These lines format the size values to display with two decimal places.  

    # The `-f` format operator is used with the `N2` format specifier to achieve this. 

  

    Write-Host "$subdirectory.FullName $sizeInGB GB $sizeInMB MB)" 

    # This line displays the name of the current subdirectory, its size in gigabytes,  

    # and its size in megabytes in a formatted way. 

} 