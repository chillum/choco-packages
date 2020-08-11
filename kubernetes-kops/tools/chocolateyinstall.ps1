$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.17.1/kops-windows-amd64'
    Checksum64     = '65d5db86e40888f2470d906e8cf7614123160cc0c79d387c7bd243f4a73275fa'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
