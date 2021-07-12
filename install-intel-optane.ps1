Import-Module -Name .\fetch-appx.psm1

#Manually Install VCLibs
#The VCLibs package in the app store doesn't install what is required so we need too first install something required which might change.
#Reference: https://docs.microsoft.com/en-us/troubleshoot/cpp/c-runtime-packages-desktop-bridge

#Download VClibs
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -UseBasicParsing -OutFile C:\Users\Administrator\Downloads\Microsoft.VCLibs.x64.14.00.Desktop.appx
get-AppxPackage "https://www.microsoft.com/en-us/p/intel-optane-memory-and-storage-management/9mzng5hzwz1t" "C:\Users\Administrator\Downloads"
Add-AppxPackage .\Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage .\Microsoft.NET.Native.Framework.2.0_2.0.27427.0_x64__8wekyb3d8bbwe.appx
Add-AppxPackage .\Microsoft.NET.Native.Runtime.2.0_2.0.25709.0_x64__8wekyb3d8bbwe.Appx
Add-AppxPackage .\AppUp.IntelOptaneMemoryandStorageManagement_18.1.1015.0_neutral_~_8j3eq9eme6ctt.appxbundle
