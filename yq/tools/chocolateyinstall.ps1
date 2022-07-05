$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.25.3/yq_windows_386.exe'
    Checksum       = '25DB6F917BBFC54AE3B322D4919A15F8B3255A7D4163E0E16B6DEFBFDB01DF05'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.25.3/yq_windows_amd64.exe'
    Checksum64     = 'EB6D4A8B249FEAB20E738CB7BBED0DFABAAE1D44464A86149691B90529F047C0'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
