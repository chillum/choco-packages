$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/roboll/helmfile/releases/download/v0.132.3/helmfile_windows_386.exe'
    Checksum       = 'D4DB01A6147F6493F039469DEDD76D41D4F10604F7233FD5CA8DC3E707AFE680'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/roboll/helmfile/releases/download/v0.132.3/helmfile_windows_amd64.exe'
    Checksum64     = '51BBDED51BCC40CF2567697AB6562E8FAB565F150427640D07FEC5EEE529FA5F'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\helmfile.exe"
}

Get-ChocolateyWebFile @packageArgs
