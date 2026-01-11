Param(
    $force
)

Write-Host $force
$option = ($force -eq "--force" ? "-D" : "-d")
Write-Host $option
git branch | ? {$_.StartsWith('*') -eq $False}| % {git branch $option $_.Trim()}