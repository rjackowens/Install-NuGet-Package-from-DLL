$DLL_Folder = Read-Host "Enter folder location of .DLL files" 
$CSV_Folder = "C:\Users\" + $env:username + "\Documents\Results.csv"

# Adds \ to End of Folder
if ($DLL_Folder.EndsWith("\") -eq $false){
    $DLL_Folder = $DLL_Folder + "\"
    }

$All_Objects = @()

$DLL_Objects = Get-ChildItem -Path $DLL_Folder -Filter *.dll | Select-Object Name

# Building Array of Objects to Export
$DLL_Objects | ForEach-Object {

    $DLL_Location = $DLL_Folder + $_.Name
    $DLL_Version = (Get-Item -Path $DLL_Location).VersionInfo.ProductVersion
    
    $All_Objects += [PSCustomObject] @{
        Version = $DLL_Version
        Name = $_.Name.trim(".dll")
    }
}

$All_Objects | Export-Csv -Path $CSV_Folder -NoTypeInformation

$CSV_Results = Import-Csv -Path  $CSV_Folder

# Adding Name and Version Parameters to Nuget.exe
function Nuget-Install {

    Param ([string]$Name, [string]$Version)

    $Folder_Path = "C:\"
    $Nuget = $Folder_Path + "nuget.exe install "
    $Package_Name = $Name
    $Package_Version = $Version

    # Package Save Location
    Set-Location "c:\Packages"

    $Full_Command = $Nuget + $Package_Name + " -version " + $Package_Version

    Invoke-Expression $Full_Command

    }

$CSV_Results | ForEach-Object {

    Nuget-Install -Name $_.Name -Version $_.Version

    }
