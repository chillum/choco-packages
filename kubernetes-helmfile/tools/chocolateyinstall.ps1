$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.145.2/helmfile_0.145.2_windows_386.tar.gz'
    Checksum       = '6785ED78608122B608C14C81598BA352906C93FC38566B47CC93AB37482D8186'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.145.2/helmfile_0.145.2_windows_amd64.tar.gz'
    Checksum64     = 'ED025A18C8A8B3AB6FAC18D8A080B3F3F7DBDB090D99EA8B0854043BD27B3E7D'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
rm $tarFile.FullName
