$packageArgs = @{
    PackageName   = 'httpstress'
    Url           = 'https://github.com/chillum/httpstress/releases/download/v6.5/win32.zip'
    Checksum      = '96B7C6CE72775CE314A2B5339D83DF29A19E95B2ECB0C26AE483670E6D21BD9B'
    ChecksumType  = 'sha256'
    UnzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
