# Aliyun.Provider.OSS
Aliyun OSS Powershell Core Provider
[![](https://raw.githubusercontent.com/kokleong98/Aliyun.Provider.OSS/master/win-pwsh-sample.png)]

# Quick Start
1. Download install.ps1 to your PC.
2. Launch Powershell Core command to in Administrator mode.
3. Run the downloaded install.ps1.
4. Upon installation completion run the following command.
```
Import-Module Aliyun.Provider.OSS

# Create PS Drive 'OSSD'
New-PSDrive -PSProvider OSS -Root "" -Name OSSD `
-Endpoint <your endpoint> `
-AccessKeyId <your access key> `
-AccessKeySecret <your access key secet> `
-BucketName <your bucket name>

# Create new item in OSSD drive
# -Path <PSDriveName>:<Path> -SourcePath <your local file>
New-Item -Path 'OSSD:/newfolder/ket.yr' -SourcePath 'c:\test.path'

# Remove PS Drive 'OSSD'
Remove-PSDrive OSSD
```
