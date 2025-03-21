$Props = convertfrom-stringdata (get-content versions.properties | Select-String -pattern "^#" -NotMatch)
$LokiVersion = $Props.UPSTREAM_VERSION
"Building Upstream Version: $LokiVersion"
""

$ChecksumResponse = Invoke-WebRequest -Uri "https://github.com/grafana/loki/releases/download/v$LokiVersion/SHA256SUMS"
$LokiLogcliChecksum = (($ChecksumResponse.tostring() -split "[`r`n]" | Select-String "logcli-windows-amd64.exe.zip" | Select-Object -First 1) -split " ")[0].ToUpper()

"Discovered Checksum: $LokiLogcliChecksum"

if (Test-Path -LiteralPath .\target) {
    Remove-Item -LiteralPath .\target -Recurse
}
New-Item -ItemType Directory -Force -Path .\target\tools | Out-Null

(Get-Content .\src\tools\chocolateyinstall.template.ps1) -replace '%%VERSION%%', $LokiVersion -replace '%%CHECKSUM%%', $LokiLogcliChecksum | Out-File -Encoding utf8 ".\target\tools\chocolateyinstall.ps1"
(Get-Content .\src\loki-logcli.template.nuspec) -replace '%%VERSION%%', $LokiVersion -replace '%%CHECKSUM%%', $LokiLogcliChecksum | Out-File -Encoding utf8 ".\target\loki-logcli.nuspec"

