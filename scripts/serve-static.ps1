param(
  [int]$Port = 8000
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $RepoRoot

Write-Host "Static preview: http://127.0.0.1:$Port/index.html"
Write-Host "Press Ctrl+C to stop."
python -m http.server $Port --bind 127.0.0.1
