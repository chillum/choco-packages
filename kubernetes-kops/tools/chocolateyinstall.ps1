$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-kops'
    Url64bit       = 'https://github.com/kubernetes/kops/releases/download/v1.25.4/kops-windows-amd64'
    Checksum64     = '222A97D1F5225AE33A48091EB7AB62EFDAE46427E803AA5175EB7BCC25BE4BFA'
    ChecksumType64 = 'sha256'
    FileFullPath   = "$toolsDir\kops.exe"
}

Get-ChocolateyWebFile @packageArgs
