$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.7.1/yq_windows_386.exe'
    Checksum       = 'AC3341EBE35A7F4A1860FF79BB443853A903154964AD0AB4AE072851E057D42C'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.7.1/yq_windows_amd64.exe'
    Checksum64     = '74C5DFEB0CD8EB3F22DBA8861A2FD3BA49B85F93D47022A8B9890ECA8C3763C4'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
