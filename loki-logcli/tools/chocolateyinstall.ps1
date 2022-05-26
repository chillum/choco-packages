$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'loki-logcli'
    Url64bit       = 'https://github.com/grafana/loki/releases/download/v2.4.2/logcli-windows-amd64.exe.zip'
    Checksum64     = '910538BE5FFAD6C9168B2948B1D1EEB229BDD6387C452F696AE57B659A3726F4'
    ChecksumType64 = 'sha256'
    UnzipLocation  = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
Move-Item -Force $toolsDir\logcli-windows-amd64.exe $toolsDir\logcli.exe
