$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.149.0/helmfile_0.149.0_windows_386.tar.gz'
    Checksum       = 'C57A221D74F1B1E9149CF192553A9709F1A0994A99D49A35110BC1D877D8C5A5'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.149.0/helmfile_0.149.0_windows_amd64.tar.gz'
    Checksum64     = '10FF21F56402E523C20230C5990CA2C6F61EC81EFCBB5C13BB93C4A88B5CE117'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
Remove-Item $tarFile.FullName
