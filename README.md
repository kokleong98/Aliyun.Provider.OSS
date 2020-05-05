# Aliyun.Provider.OSS
Aliyun OSS Powershell Core Provider (Unofficial)

Provide integrated Aliyun OSS functionality into Powershell navigation module.

![](https://raw.githubusercontent.com/kokleong98/Aliyun.Provider.OSS/master/win-pwsh-sample.png)

![](https://raw.githubusercontent.com/kokleong98/Aliyun.Provider.OSS/master/ubuntu-pwsh-sample.png)

# Quick Start
1. Download install.ps1 to your PC.
2. Launch Powershell Core command in Administrator mode.
3. Run the downloaded install.ps1.
4. Upon installation completion run the following command to import the module.
```
Import-Module Aliyun.Provider.OSS
```
5. Create PS Drive named 'OSSD' with the required parameters.
```
New-PSDrive -PSProvider OSS -Root "" -Name OSSD `
-Endpoint <your endpoint> `
-AccessKeyId <your access key> `
-AccessKeySecret <your access key secet> `
-BucketName <your bucket name>
```
6. Run any supported item commands. 
```
# Create new item in OSSD drive
# -Path <PSDriveName>:<Path> -SourcePath <your local file>
New-Item -Path 'OSSD:/newfolder/ket.yr' -SourcePath 'c:\test.path'
```
7. Remove PS Drive 'OSSD' once you done.
```
Remove-PSDrive OSSD
```

# Docker Image alternative
```
docker pull kokleong98/aliyun.provider.oss:latest
```
