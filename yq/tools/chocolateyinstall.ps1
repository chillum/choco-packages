$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.3.2/yq_windows_386.exe'
    Checksum       = 'A0EF29A7AEBFD818DE0EA20150DDED8D23847D7BF997061464843240A9E7C170'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.3.2/yq_windows_amd64.exe'
    Checksum64     = 'B3ADE9A5BCBF13C7C7013EECDBC54183D0392FD6360F2D19DBBE8C6141C75FD2'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
