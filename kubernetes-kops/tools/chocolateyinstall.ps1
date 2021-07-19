$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.19.3/kops-windows-amd64'
    Checksum64     = 'FA18E04DC428E8212273CA2CBAF2A4EAABEC4DD97CD1609F2868FFDD32DC8C32'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
