$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.7.3/sops-v3.7.3.exe'
  Checksum64     = '0CCDA78BC7F7DBF3F07167221F2A42CAB2B10D02DE7C26FE8E707EFAACAF3BD2'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
