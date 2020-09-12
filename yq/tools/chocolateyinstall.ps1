$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.3.4/yq_windows_386.exe'
    Checksum       = '59AEC590C9099FBE68D2ECB7339347AB65307BBA52213997A2DF10DF7EE832EA'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.3.4/yq_windows_amd64.exe'
    Checksum64     = '413200BB97D0B6875EB2E0177D66F020210A2C42305EDFA397F435C32EBFFD5D'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
