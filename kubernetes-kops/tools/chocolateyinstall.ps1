$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.23.4/kops-windows-amd64'
    Checksum64     = 'E4AB51179F901A45892CCEE8538E06F2859D1B031D1D4CCADC2DDB30D6BA0E18'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
