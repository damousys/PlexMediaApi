. ./secrets.ps1
[string]$localPlexAddr    = "s04"
# [string]$plexRESTAddr   = "library/sections"

# [array]$data =  Invoke-WebRequest -Uri   "http://$($localPlexAddr):32400/$($plexRESTAddr)" -Method get -headers @{'X-Plex-Token'=$authToken}
# [xml]$apiContent = $data.Content
# $apiContent.MediaContainer.Directory
# foreach ($container in $apiContent.MediaContainer.Directory)
# {
#     Write-Host "-----------"
#     # $key = $container.key
#     $container
#     Write-Host "-----------"
# }
# $key

[string]$plexRESTAddr   = "library/sections/6/all"
[array]$data = Invoke-WebRequest -Uri   "http://$($localPlexAddr):32400/$($plexRESTAddr)" -Method get -headers @{'X-Plex-Token'=$authToken}
[xml]$apiContent = $data.Content
$apiContent.MediaContainer.Directory[0].role #.Video[0]