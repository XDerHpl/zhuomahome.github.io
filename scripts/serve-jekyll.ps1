param(
  [int]$Port = 4000,
  [string]$HostName = "127.0.0.1"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$RubyBin = "C:\Ruby33-x64\bin"

if (Test-Path $RubyBin) {
  $env:Path = "$RubyBin;$env:Path"
}

Set-Location $RepoRoot

Write-Host "Jekyll preview: http://$HostName`:$Port/"
Write-Host "Press Ctrl+C to stop."
bundle exec jekyll serve --host $HostName --port $Port --livereload
