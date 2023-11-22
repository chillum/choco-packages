$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'yq'
    Url            = 'https://github.com/mikefarah/yq/releases/download/v4.40.2/yq_windows_386.exe'
    Checksum       = 'F46904A628A5A622CD83CF00AE3CC231410585EABB552BBB7CB6794B456681F7'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/mikefarah/yq/releases/download/v4.40.2/yq_windows_amd64.exe'
    Checksum64     = '74A2B7E312056ADBE957CCD7DC62497F804E1EAA9A226D2D33D899354119F7F4'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\yq.exe"
}

Get-ChocolateyWebFile @packageArgs
