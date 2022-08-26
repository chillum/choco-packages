$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'loki-logcli'
    Url64bit       = 'https://github.com/grafana/loki/releases/download/v2.6.1/logcli-windows-amd64.exe.zip'
    Checksum64     = '5CCA9C2C498C50F07C6A5F6E9A8AA22AB9CFB480263F90F3C586B711B9964E0D'
    ChecksumType64 = 'sha256'
    UnzipLocation  = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
Move-Item -Force $toolsDir\logcli-windows-amd64.exe $toolsDir\logcli.exe
