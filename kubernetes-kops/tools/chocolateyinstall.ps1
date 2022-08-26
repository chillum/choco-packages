$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.23.3/kops-windows-amd64'
    Checksum64     = '9F451BC22440544D49F632F58DA2FB4CF652CE7C908FE6D9DE15533FE109E053'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
