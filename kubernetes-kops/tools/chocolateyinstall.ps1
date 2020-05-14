$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.15.3/kops-windows-amd64'
    Checksum64     = 'f4f313373e2b7099dc08b0683714cbdc1a5ad3cedee5e375f9203656ac047730'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
