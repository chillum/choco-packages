$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.15.1/yq_windows_386.exe'
    Checksum       = 'B0A0EC811E291403CA7150AF873A87EBCA4960BE62FA97AC547099BB29872F91'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.15.1/yq_windows_amd64.exe'
    Checksum64     = 'D05D61F1915379231FB27466FD109F21BEE50D2AB19D6A100B9BA2A33F38E115'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
