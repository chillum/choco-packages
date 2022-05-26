$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.22.4/kops-windows-amd64'
    Checksum64     = 'D02B7D1D174A4B27576C5F4B9C0FD863378308D4D1335AF87B5A7348DEDA4BE4'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
