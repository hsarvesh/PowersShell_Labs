<#
Write a script to find ping results for 20 websites in shortest time.

o	Create a collection variable for 100 websites
o	Using test-connection find the response time for each website in the website collection variable
o	See what best techniques you can use to reduce time to perform this action 

Here is the list of 20 websites
chat.openai.com
www.openai.com
midjourney.com
deepart.io
www.synthesia.io
www.aiva.ai
jasper.ai
copy.ai
www.grammarly.com
huggingface.co
www.tensorflow.org
www.ibm.com
cloud.google.com
azure.microsoft.com
beta.openai.com
Sarvesh.website
otter.ai
wit.ai

monkeylearn.com
yash.com

#>

$websites = @(
    "chat.openai.com",
    "www.openai.com",
    "midjourney.com",
    "deepart.io",
    "www.synthesia.io",
    "www.aiva.ai",
    "jasper.ai",
    "copy.ai",
    "www.grammarly.com",
    "huggingface.co",
    "www.tensorflow.org",
    "www.ibm.com",
    "cloud.google.com",
    "azure.microsoft.com",
    "beta.openai.com",
    "Sarvesh.website",
    "otter.ai",
    "wit.ai",
    "monkeylearn.com",
    "yash.com"
)

$results = foreach ($website in $websites) {
    $response = Test-Connection -ComputerName $website -Count 1 -ErrorAction SilentlyContinue
    if ($response) {
        [PSCustomObject]@{
            Website = $website
            ResponseTime = $response.ResponseTime
        }
    }
    else {
        Write-Warning "Failed to ping $website"
    }
}

$results | Sort-Object -Property ResponseTime | Format-Table

# Below methood uses jobs in powershell to run ping test simultaniously. 

# Test-Connection $websites -AsJob -Count 1| Wait-Job | Receive-Job 