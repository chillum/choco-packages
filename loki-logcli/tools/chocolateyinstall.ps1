$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'loki-logcli'
    Url64bit       = 'https://github.com/grafana/loki/releases/download/v2.4.1/logcli-windows-amd64.exe.zip'
    Checksum64     = 'F72DA773075020B78D53E4853D87DCC23739C9097DAB3621D3A1D1B0EC513B5F'
    ChecksumType64 = 'sha256'
    UnzipLocation  = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
Move-Item -Force $toolsDir\logcli-windows-amd64.exe $toolsDir\logcli.exe
