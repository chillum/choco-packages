$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.33.3/yq_windows_386.exe'
    Checksum       = '77236FF2F8F0C44FD3B0FA04CE052E585DE25F661D1E381C310B1221018BE59C'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.33.3/yq_windows_amd64.exe'
    Checksum64     = '4A7526E290EB00C417F4741D30D2BD83C891E462C4993148E9E7C400978DAB28'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
