
$packageName = './test.zip'
$gitURL = 'https://github.com/kokleong98/Aliyun.Provider.OSS/releases/download/0.1.0.3/Aliyun.Provider.OSS.0.1.0.3.zip'
$targetPath = ''

if($PSVersionTable.PSEdition -eq 'Desktop')
{
    if (Test-Path "$HOME\Documents\PowerShell\Modules")
    {
        $targetPath = "$HOME\Documents\PowerShell\Modules"
    }
    elseif (Test-Path "$PSHOME\Modules")
    {
        $targetPath = "$PSHOME\Modules"
    }
}
elseif($PSVersionTable.PSEdition -eq 'Core')
{
    if($PSVersionTable.Platform -eq 'Win32NT')
    {
        if (Test-Path "$HOME\Documents\PowerShell\Modules")
        {
            $targetPath = "$HOME\Documents\PowerShell\Modules"
        }
        elseif (Test-Path "$PSHOME\Modules")
        {
            $targetPath = "$PSHOME\Modules"
        }
    }
    else
    {
        $targetPath = "$HOME/.local/share/powershell/Modules"
    }
}
else
{
}
if((Test-Path "$targetPath/Aliyun.Provider.OSS") -eq $false)
{
    Write-Host "Downloading from $gitURL."
    Invoke-WebRequest $gitURL -OutFile $packageName
    Write-Host "Expanding $packageName to '$targetPath'."
    Expand-Archive $packageName -DestinationPath $targetPath
    Write-Host "Removing temp package."
    Remove-Item -Path $packageName
}
else
{
    Write-Host "Target path '$targetPath/Aliyun.Provider.OSS' existed."
}
