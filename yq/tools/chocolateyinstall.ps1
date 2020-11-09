$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/3.4.1/yq_windows_386.exe'
    Checksum       = '6292E14B0C199F2BD33E18A8BFE67F100084837163E1E2BC4934BCD7990A5087'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/3.4.1/yq_windows_amd64.exe'
    Checksum64     = '987D31D3A9B75F9CB0F202173AAB033D333D2406BA2CAA7DBA9D16A5204C2167'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
