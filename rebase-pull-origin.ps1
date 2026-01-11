Param(
    [String]$Branch
)

git pull --rebase origin $Branch
