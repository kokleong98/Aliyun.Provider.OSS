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

# Docker Container Image alternative
Pull image command
```
docker pull kokleong98/aliyun.provider.oss
```
Run container image command
```
docker run -it kokleong98/aliyun.provider.oss
```
Run container image with environment variable
```
# Multlple lines docker command
docker run -it \
-e Endpoint=<your endpoint> \
-e AccessKeyId=<your access key> \
-e AccessKeySecret=<your access key secret> \
-e BucketName=<your bucket name> \
kokleong98/aliyun.provider.oss
```

# Commands List
1. Get-ChildItem (Partial support) - List item under 'OSSD' PS Drive.
```
Get-ChildItem OSSD:/
```
2. cd - Change directory in 'OSSD' PS Drive.
```
cd OSSD:/
```
3. New-Item - Create an object in OSS
```
# Create new item in OSSD drive using local source path
# -Path <PSDriveName>:<Path> -SourcePath <your local file>
New-Item -Path 'OSSD:/newfolder/oss.dat' -SourcePath 'c:\oss.dat'

# Create new item in OSSD drive using bytes array
# -Path <PSDriveName>:<Path> -Blob <your bytes array variable>
New-Item -Path 'OSSD:/newfolder/oss.dat' -Blob $blob
```
4. Set-Item - Update an object in OSS
```
# Update item in OSSD drive using local source path
# -Path <PSDriveName>:<Path> -SourcePath <your local file>
Set-Item -Path 'OSSD:/newfolder/oss.dat' -SourcePath 'c:\oss.dat'
```
5. Get-Item - Get OSS object metadata
```
Get-Item -Path 'OSSD:/newfolder/oss.dat'
```
6. Get-Content (Partial support) - Download OSS object content
```
# Download OSS object content in OSSD drive using local source path
# -Path <PSDriveName>:<Path> -OutputPath <your local file>
Get-Content -Path 'OSSD:/newfolder/oss.dat' -OutputPath '/root/oss.dat'
```
7. Remove-Item - Remove an object in OSS
```
# Remove item in OSSD drive using local source path
# -Path <PSDriveName>:<Path>
Remove-Item -Path 'OSSD:/newfolder/oss.dat'
```
8. Copy-Item (Partial support) - Copy an object in OSS
```
# Copy item in within OSSD drive 
# <PSDriveName>:<Path>
Copy-Item 'OSSD:/newfolder/oss.dat' 'OSSD:/newfolder/oss2.dat'
```



