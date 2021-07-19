$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.11.0/yq_windows_386.exe'
    Checksum       = 'D6BE26053BE7F348DCC527912685B14309D0729605FEACB63D63FCF163B6F77E'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.11.0/yq_windows_amd64.exe'
    Checksum64     = '2A93285DA8E5A68E5F6A49446315F64E2013FC6140FE5A149F9902CA71D3BEF3'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
