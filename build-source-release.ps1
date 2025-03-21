$Props = convertfrom-stringdata (get-content versions.properties | Select-String -pattern "^#" -NotMatch)
$LokiVersion = $Props.UPSTREAM_VERSION

if (Test-Path -LiteralPath .\archive) {
    Remove-Item -LiteralPath .\archive -Recurse
}
New-Item -ItemType Directory -Force -Path .\archive | Out-Null
Copy-Item -Path "target\*" -Destination .\archive -Recurse
Remove-Item 'archive\*' -Recurse -Include *.nupkg
Remove-Item 'archive\*' -Recurse -Include *.zip
Compress-Archive -Path .\archive\* -DestinationPath target\choco-loki-logcli-$LokiVersion.zip