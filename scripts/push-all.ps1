param(
  [string]$Message = "Update project"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$branch = (git branch --show-current).Trim()

if (-not $branch) {
  throw "Unable to detect the current git branch."
}

git add -A

git diff --cached --quiet
$hasStagedChanges = $LASTEXITCODE -ne 0

if ($hasStagedChanges) {
  git commit -m $Message
} else {
  Write-Host "No new changes to commit."
}

git push origin $branch
