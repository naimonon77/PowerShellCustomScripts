Param(
    [String]$Branch
)

git fetch upstream $Branch
git switch upstream/$Branch --detach