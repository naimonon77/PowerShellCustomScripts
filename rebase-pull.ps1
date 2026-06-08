Param(
    [String]$RemoteAlias,
    [String]$Branch
)

git pull --rebase $RemoteAlias $Branch
