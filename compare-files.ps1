Param(
  [String]$CurPath,
  [String]$CompareTargetPath
)

git add --all
# git commit -m "🩹"
$curLocation = Get-Location
# return

# $filePaths = (git diff upstream/main...HEAD --name-only -- *.md).Replace("\n", $curLocation.Path + " ")
$filePaths = (git diff upstream/main... --name-only -- *.md)
# $filePaths = (git diff upstream/main... --name-only -- *.md)
# Write-Host $filePaths
foreach ($filePath in $filePaths) {
  $curFullPath = $curLocation.Path + "/" + $filePath
  $compareTargetFullPath = $curFullPath.Replace($CurPath, $CompareTargetPath)
  Write-Host $compareTargetFullPath 
  # compare-object (get-content $curFullPath) (get-content $compareTargetFullPath )
  cp $compareTargetFullPath $curFullPath
  # fc.exe  $curFullPath $compareTargetFullPath
}
  git diff -R > .diff
  git restore .
