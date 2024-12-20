# Get the current directory 

$currentDirectory = Get-Location 

  

# Get all zip files in the current directory 

$zipFiles = Get-ChildItem -Path $currentDirectory -Filter "*.zip" 

  

# Iterate through each zip file 

foreach ($zipFile in $zipFiles) { 

    # Extract the file name without the extension 

    $fileName = $zipFile.BaseName 

  

    # Create a new folder with the same name as the file 

    New-Item -ItemType Directory -Path $currentDirectory -Name $fileName 

  

    # Extract the zip file to the newly created folder 

    Expand-Archive -Path $zipFile.FullName -DestinationPath $currentDirectory\$fileName 

} 