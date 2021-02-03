$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.4.1/yq_windows_386.exe'
    Checksum       = '0C8F180B2B3A8E70177937E598BE9DF87B2C4FDFC22F71A4DE635C7CA31C3949'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.4.1/yq_windows_amd64.exe'
    Checksum64     = '2A4911F9690E9A5EC1EF4070B6071FE9853B0BA30C76C88E6FD50629ADCD1399'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
