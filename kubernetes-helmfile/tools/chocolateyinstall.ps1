$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
    PackageName    = 'kubernetes-helmfile'
    Url            = 'https://github.com/helmfile/helmfile/releases/download/v0.153.1/helmfile_0.153.1_windows_386.tar.gz'
    Checksum       = '12D043ADBA7BD9F497AF9FD442E324EA289715350DA01183AD7A343E5BA7ADFB'
    ChecksumType   = 'sha256'
    Url64bit       = 'https://github.com/helmfile/helmfile/releases/download/v0.153.1/helmfile_0.153.1_windows_amd64.tar.gz'
    Checksum64     = 'FF7BE1410BE3695A6CFC0D750B75F9202862558D4B3C78C58E6CB59EEF3B8159'
    ChecksumType64 = 'sha256'
    UnzipLocation = "$toolsDir"
}

Install-ChocolateyZipPackage @packageArgs
$tarFile = Get-ChildItem -File -Path $toolsDir -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $tarFile.FullName -destination $toolsDir
Remove-Item $tarFile.FullName
