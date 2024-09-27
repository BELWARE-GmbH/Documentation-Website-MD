param (
    [string]$ClientId,
    [string]$ClientSecret,
    [string]$TenantId,
    [string]$GitHubPat
)
$WebsiteLanguages = @('de-de','en-us')

# Get Auth Token
$Scope = "https://storage.azure.com/.default"
$TokenEndpoint = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"
$Body = @{
    client_id     = "$ClientId"
    scope         = "$Scope"
    grant_type    = "client_credentials"
    client_secret = "$ClientSecret"
}
$Response = Invoke-WebRequest -Method Post -Uri $TokenEndpoint -ContentType "application/x-www-form-urlencoded" -Body $Body
$AccessToken = $Response.Content | ConvertFrom-Json | Select-Object access_token -ExpandProperty access_token

$Headers = @{
    "Authorization" = "Bearer $AccessToken"
    "x-ms-version" = "2020-04-08"
    "Accept" = "application/json;odata=nometadata"
}

# Check if new BC Versions were added within last 24h
$CurrentTimestamp = (Get-Date).ToUniversalTime().AddDays(-1)
$FormattedTimestamp = $CurrentTimestamp.ToString("yyyy-MM-ddTHH:mm:ssZ")
$TableFilter = "Timestamp%20gt%20datetime'$FormattedTimestamp'"
$ContainerUrl = "https://belwareapps.table.core.windows.net/AppVersions()?`$filter=$TableFilter"
$Response = Invoke-WebRequest -Uri $ContainerUrl -Method Get -Headers $Headers 
$ResponseContent = $Response.content | ConvertFrom-Json

if ($ResponseContent.value.Count -eq 0){
    Write-Host("No new App Version within the last 24h found")
    exit
}


# Get all BC Versions and sort them by Version No.
$ContainerUrl = "https://belwareapps.table.core.windows.net/BCVersions"
$Response = Invoke-WebRequest -Uri $ContainerUrl -Method Get -Headers $Headers
$Response = $Response.content | ConvertFrom-Json
$BcVersionList = $Response.value
$BcVersions = @()
foreach ($BcVersion in $BcVersionList){
    $BcVersions += $BcVersion.PartitionKey
}
$SortedVersions = $BcVersions | ForEach-Object { [System.Version]$_ } | Sort-Object -Descending | ForEach-Object {$_.ToString()}

# Build the Page Content for all Apps and BC Versions
$DownloadPageContent = @"
---
title: "Downloads"
date: $FormattedTimestamp
description: 
draft: true
collapsible: false
weight: 5
---

"@

foreach ($Version in $sortedVersions){
    $DownloadPageContent += "#### $Version`n"
    $ContainerUrl = "https://belwareapps.table.core.windows.net/AppVersions()?`$filter=RowKey%20eq%20'$Version'"
    $Response = Invoke-WebRequest -Uri $ContainerUrl -Method Get -Headers $Headers
    $AppVersions = $Response.content | ConvertFrom-Json
    $AppVersions = $AppVersions.value | ConvertTo-Json
    $AppVersions = $AppVersions | ConvertFrom-Json

    foreach($AppVersion in $AppVersions) {
        $Count += 1
        $FormattedAppName = $($AppVersion.PartitionKey.Replace(' ','%20'))
        $BcVersionNumber = $($AppVersion.RowKey)
        $DownloadPageContent += "[$($AppVersion.RowKey)_$($AppVersion.PartitionKey)_$($AppVersion.AppVersion)_RT.app](https://belwareapps.blob.core.windows.net/apps/$BcVersionNumber/$FormattedAppName/${BcVersionNumber}_${FormattedAppName}_$($AppVersion.AppVersion)_RT.app)`n"
    }
    
}
# Get the sha of the last Commit
$Response = Invoke-WebRequest -Uri "https://api.github.com/repos/$env:GITHUB_REPOSITORY/git/ref/heads/main" -Method Get -Headers @{"Authorization"= "Bearer $GitHubPat"}
$Response = $Response.content | ConvertFrom-Json
$latestCommitSha = $Response.object.sha

# Build the Tree with both files 
$tree = @()
foreach ($WebsiteLanguage in $WebsiteLanguages){
    $tree += @{
        path    = "content/$WebsiteLanguage/Apps/Downloads/_index.md"
        mode    = "100644"
        type    = "blob"
        content = $DownloadPageContent
    }
}

$treeBody = @{
    base_tree = $latestCommitSha
    tree      = $tree
}

$treeUrl = "https://api.github.com/repos/$env:GITHUB_REPOSITORY/git/trees"
$response = Invoke-WebRequest -Uri $treeUrl -Method POST -Headers @{"Authorization"= "Bearer $GitHubPat"} -Body ($treeBody | ConvertTo-Json -Depth 10)
$Response = $Response.content | ConvertFrom-Json
$response.Content.sha
$newTreeSha = $response.sha
Write-Output "New Tree SHA: $newTreeSha"

# Create the Commit
$commitMessage = "Update Download Page"

$commitBody = @{
    message = $commitMessage
    tree    = $newTreeSha
    parents = @($latestCommitSha)
}

$commitUrl = "https://api.github.com/repos/$env:GITHUB_REPOSITORY/git/commits"
$response = Invoke-WebRequest -Uri $commitUrl -Method POST -Headers @{"Authorization"= "Bearer $GitHubPat"} -Body ($commitBody | ConvertTo-Json)
$Response = $Response.content | ConvertFrom-Json
$newCommitSha = $response.sha
Write-Output "New Commit SHA: $newCommitSha"

# Push the Commit
$refUpdateBody = @{
    sha = $newCommitSha
}
$refUpdateUrl = "https://api.github.com/repos/$env:GITHUB_REPOSITORY/git/refs/heads/main"
$response = Invoke-WebRequest -Uri $refUpdateUrl -Method PATCH -Headers  @{"Authorization"= "Bearer $GitHubPat"} -Body ($refUpdateBody | ConvertTo-Json)
Write-Output "Branch updated to new commit: $newCommitSha"
