Param(
    [String]$RemoteAlias,
    [String]$Branch
)

git fetch $RemoteAlias $Branch
git switch $Branch