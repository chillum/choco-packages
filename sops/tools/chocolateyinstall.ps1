$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName    = 'sops'
  Url64bit       = 'https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.exe'
  Checksum64     = 'A514BD0ADE6D955A73F9C8B9DDE6C33ECA006430B0E72289467D2152C5321767'
  ChecksumType64 = 'sha256'
  FileFullPath   = "$toolsDir\sops.exe"
}

Get-ChocolateyWebFile @packageArgs
