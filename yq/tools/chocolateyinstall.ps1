$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.2.1/yq_windows_386.exe'
    Checksum       = '513314579E6F147E49610E7C4D1E4C00406B499A34527DADC39CB034BB34D98C'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.2.1/yq_windows_amd64.exe'
    Checksum64     = '9B3466FF4E37C8A93D7530E3DC7A047314D0897DBFBFFB50B82235695E231FFF'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
