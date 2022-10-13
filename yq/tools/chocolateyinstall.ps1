$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.28.1/yq_windows_386.exe'
    Checksum       = '284C3B810B2E72FC335E7CFB6AFDB8B9B5E1AFDCFF3FDFF3AC78005A61745B9B'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.28.1/yq_windows_amd64.exe'
    Checksum64     = 'F1CAA91A3B889E130047846C204F0C9A9FE4ED519C1DF0E15C228526DAC0DC56'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
