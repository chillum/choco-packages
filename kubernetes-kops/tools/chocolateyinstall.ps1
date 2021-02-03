$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.19.0/kops-windows-amd64'
    Checksum64     = 'F62D7DE0718CA8944F09E7B7EC3C5F7CAF54E3F940E7882E3A7002F50F3E02B0'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
