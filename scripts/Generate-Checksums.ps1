Param(
  [string]$Reports = "reports",
  [string]$Evidence = "evidence",
  [string]$OutFile = "checksums\CHECKSUMS_SHA256.csv"
)

New-Item -ItemType Directory -Force -Path (Split-Path $OutFile) | Out-Null
"filename,sha256" | Set-Content -Encoding UTF8 $OutFile

Get-ChildItem -Recurse -File -Path $Reports,$Evidence |
  ForEach-Object {
    $hash = Get-FileHash -Algorithm SHA256 -Path $_.FullName
    $rel  = (Resolve-Path -LiteralPath $_.FullName -Relative) -replace '\\','/'
    "$rel,$($hash.Hash.ToLower())"
  } | Add-Content -Encoding UTF8 $OutFile

Write-Host "Wrote $OutFile"
