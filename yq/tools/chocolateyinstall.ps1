$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.25.1/yq_windows_386.exe'
    Checksum       = '39546D622539F31306588F23B030989DE321EAEA27144492D2F7CD3A2A66195E'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.25.1/yq_windows_amd64.exe'
    Checksum64     = 'F26BF0F977163524FE181A597CB27E1798D326A4E85AFDD2BA176FFD4C3579B6'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
