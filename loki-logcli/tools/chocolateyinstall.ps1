$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'loki-logcli'
    Url64bit       = 'https://github.com/grafana/loki/releases/download/v2.8.6/logcli-windows-amd64.exe.zip'
    Checksum64     = '3C10F6F77B93F17A69B424E4C2E84AD7C42BC1372A6221861AA78CC8D94F224D'
    ChecksumType64 = 'sha256'
    UnzipLocation  = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
Move-Item -Force $toolsDir\logcli-windows-amd64.exe $toolsDir\logcli.exe
