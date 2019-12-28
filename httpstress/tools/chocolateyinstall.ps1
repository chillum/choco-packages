$packageArgs = @{
    PackageName   = 'httpstress'
    Url           = 'https://github.com/chillum/httpstress/releases/download/v6.5.1/win32.zip'
    Checksum      = '9BF7A207352B17C82AD036AD4CBBA5F0F9B1EC052FD0D0D91DCF3A910A9FF620'
    ChecksumType  = 'sha256'
    UnzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
