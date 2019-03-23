# Install NuGet Package from DLL

This script locates all .DLL files from a folder location and downloads the corresponding package version from NuGet. The script creates an Excel spreadsheet that reports the version and name of each .DLL located for easy reference and cross validation. This tool is especially useful when the .DLL versions located on a production server differ from the versions referenced within a packages.config file.

## **Features**

- Finds version of .DLL files and downloads corresponding package from NuGet
- Creates an Excel spreadsheet of all .DLL file names and version information

## **Getting Started**

Clone all files from the GitHub repository. Download NuGet.exe to C:\. Run the script and enter the folder location of your .DLL such as C:\Windows\System32. The script will automatically download each package from NuGet to C:\Packages. If the version is not available in NuGet, an error will be written to the console. A spreadsheet of the results will be saved to User\Documents\Results.csv.

## **Compatibility**

The software has been tested on Windows 10 x64.

## **Upcoming Changes**
- Add "Status" column to Results.csv to record if package was successfully located in NuGet
- Add logic if exact package version does not exist in NuGet, download closest available version

## **Authors**

- **Jack Owens**  - _Initial work_ -

