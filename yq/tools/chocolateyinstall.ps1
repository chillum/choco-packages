$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.21.1/yq_windows_386.exe'
    Checksum       = '16B90F8BBAF1B7F8C31AF3944A33C6F364668978FE6155F07071457DE8BF4277'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.21.1/yq_windows_amd64.exe'
    Checksum64     = '01ED6F93943900E5FA282F9362271596DF77DB5E8B8319FC9CCE6947D80EBD83'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
