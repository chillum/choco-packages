$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'loki-logcli'
    Url64bit       = 'https://github.com/grafana/loki/releases/download/v%%VERSION%%/logcli-windows-amd64.exe.zip'
    Checksum64     = '%%CHECKSUM%%'
    ChecksumType64 = 'sha256'
    UnzipLocation  = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
Move-Item -Force $toolsDir\logcli-windows-amd64.exe $toolsDir\logcli.exe
