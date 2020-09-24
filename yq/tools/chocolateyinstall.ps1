$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.4.0/yq_windows_386.exe'
    Checksum       = 'A87DD1703CB13D19A5F550DDC3FFF738FA463E7097F277386A964DB5B3064397'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.4.0/yq_windows_amd64.exe'
    Checksum64     = '298484971D58F4966B10B223F66B329D88BB20E8194E903ED2A847AE887BCDAD'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
