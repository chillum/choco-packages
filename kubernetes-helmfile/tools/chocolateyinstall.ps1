$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.145.4/helmfile_0.145.4_windows_386.tar.gz'
    Checksum       = '57769AD14507A21E7D79486735BBDA4BD9A8A3213D10326BE6E2D96E43F8F385'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.145.4/helmfile_0.145.4_windows_amd64.tar.gz'
    Checksum64     = '737074494A73DDD8DFCABE2CC6622F491FEE63CF8382A3857CE6CBBDA50FD213'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
rm $tarFile.FullName
