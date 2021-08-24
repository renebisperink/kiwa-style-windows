Write-Host "Please run this script with Administrator Rights"
Invoke-WebRequest -Uri https://github.com/fireeye/commando-vm/archive/refs/heads/master.zip -OutFile ./master.zip
unzip.exe master.zip 
cd .\commando-vm-master

.\install.ps1 -nochecks $true -profile_file .\Profiles\full.json

cd ..

Start-Process -Wait Set-WallPaper -Image “.\kiwa-commandovm.png”