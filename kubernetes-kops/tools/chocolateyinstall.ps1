$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.24.3/kops-windows-amd64'
    Checksum64     = '556B41D938FB7CA5363CBB51A848ECE866B3D2E70D4FD56578E7C7BDC9F62793'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
