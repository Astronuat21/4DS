Welcome to the _Programs_ Folder!

This folder is dedicated to a little powershell script I made *(sorry linux users)*. Its a basic utility that takes the zip folder download provided by Mouser (Or anything else that uses SamacSys, really) and puts it in an easier format to import with Kicad. 

To use it, you just have to input the name of the zip folder **(WITHOUT THE LIB_ PREFIX!)** and the script does the rest. Its not a perfect script though:

1. It assums the folder is in "D:\Downloads". You'll have to modify the $Downloads value to fit your needs. Windows comes with a PowerShell IDE, so you can change it via Right Click -> Edit
2. My Powershell is borked somehow and dosent like to run the .ps1 files properly. Ive thus included a .bat file that will run it properly, _just keep them in the same folder, aight?_ 