$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.40.1/yq_windows_386.exe'
    Checksum       = 'C2E83075334636595A4097BA9399B6E072488362F6B26257755C24C555F0C53A'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.40.1/yq_windows_amd64.exe'
    Checksum64     = 'C2E83075334636595A4097BA9399B6E072488362F6B26257755C24C555F0C53A'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
