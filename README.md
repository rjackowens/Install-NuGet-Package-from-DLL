# Install NuGet Package from DLL

This is a script that locates all .DLL files from a folder location and downloads the identical version from NuGet. The script creates an Excel sheet that reports the version and name of each .DLL file located to allow easy reference and cross validation. This tool is especially useful when the .DLL versions located on a production server differ from the versions referenced within the packages.config file.

## **Features**

- Creates an Excel spreadsheet of all .DLL file names and version information
- Downloads identical version of located .DLL files from NuGet

## **Getting Started**

Clone all files from the GitHub repository. Download NuGet.exe to C:\ . Run the script and enter the folder location of your .DLL such as C:\Windows\System32. The script will automatically download each package from NuGet to C:\Packages. If the version is not available in NuGet, an error will be written to the console. Additionally, an Excel spreadsheet of the results will be saved to User\Documents\Results.csv.

## **Compatibility**

The software has been tested on Windows 10 x64.

## **Upcoming Changes**
- Add "Status" column to Results.csv to record if package was located in NuGet
- If exact package version does not exist in Nuget, download closest available version

## **Authors**

- **Jack Owens**  - _Initial work_ -

