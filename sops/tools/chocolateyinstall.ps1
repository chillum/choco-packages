$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.8.1/sops-v3.8.1.exe'
  Checksum64     = 'FE1F6299294B47CEDA565E1091E843EE3F3DB58764901D4298EB00558189E25F'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
