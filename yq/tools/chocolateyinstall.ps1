$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.27.2/yq_windows_386.exe'
    Checksum       = '4C579726542BA633838D4DC1089B01B35EB37DCE382D9005938564B781003D21'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.27.2/yq_windows_amd64.exe'
    Checksum64     = '6E453280707E545D56B8AAE796BBEA6BA0E4188C5F31B826EF74CF980D0B9E48'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
