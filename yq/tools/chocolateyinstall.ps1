$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.6.1/yq_windows_386.exe'
    Checksum       = '9868BDCDABDFB4C89D0C2724CF2DF859604545056D946E3E350980C120035390'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.6.1/yq_windows_amd64.exe'
    Checksum64     = 'B48326190C1072B7B7F6243E8610314836E7C13C92A1486B759D7F352C50A0D4'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
