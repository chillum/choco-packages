$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.9.4/sops-v3.9.4.exe'
  Checksum64     = 'BEE270926FC55B5B89ED9CE87FB2569A36C74E99D63E6392090B3D0F0C2775EB'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
