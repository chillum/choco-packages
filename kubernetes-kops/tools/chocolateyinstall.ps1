$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.15.2/kops-windows-amd64'
    Checksum64     = 'e1b74e32c9c2343a2f2e04623d4ebd7de0003d0aab80d051323f65a2ae8a3529'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
