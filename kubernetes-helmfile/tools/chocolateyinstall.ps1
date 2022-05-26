$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.144.0/helmfile_windows_386.exe'
    Checksum       = '3B30897FB08B49E023B134119AAFD9D9777CCD5586B3B565805EC8FBD8CBEDF8'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.144.0/helmfile_windows_amd64.exe'
    Checksum64     = '97F0E617977C5518CC92D9982C894ECCAEB4C64FA9AE9577E606D2780E66F10B'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
