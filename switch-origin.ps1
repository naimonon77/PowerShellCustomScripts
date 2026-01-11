Param(
    [String]$Branch
)

git fetch origin $Branch
git switch $Branch