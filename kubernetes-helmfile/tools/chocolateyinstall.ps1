$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.138.2/helmfile_windows_386.exe'
    Checksum       = '470239D2B46CAABDC5CDDD5DDE6DD87286C9CA7B104196927D8F9E88A9128B20'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.138.2/helmfile_windows_amd64.exe'
    Checksum64     = 'FCE08B942FDBF35AAF55D7263ADE28148F7E35E9B8B134503B4CF8508EC25CCD'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
