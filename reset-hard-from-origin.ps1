$currentBranch = (& git rev-parse --abbrev-ref HEAD).Trim()

if (-not $currentBranch) {
  Write-Error "Could not determine current branch."
  exit 1
}

# fetch the remote branch and reset local to it
git fetch origin $currentBranch
git reset --hard origin/$currentBranch