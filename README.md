# NYUAD-Campus-Map
# Code Folder 

This folder contains several classes (.m and .h), a video (.m4v) and a bunch of supporting files and .xcassets folder that contains the images used. To run the code, simply open the NYUAD Campus copy.xcodeproj in XCode. A devide simulator should be enabled (go to Window > Devices > iPhone 7-11). The deployment target for this app was set at iOS 11.2. The app was built in XCode 9.0.

# .plist error
Sometimes, depending on the XCode version, .plist file is not found, although it is contained in the folder. To fix this error, follow the next steps.
1. Go to Target > Identity and Choose the NYUAD Campusmap-Info.plist from the folder.
2. Go to Target>Build Settings>Packaging>Info.plist File and edit the path.
3. Go to Target>Build Settings>Packaging>Info.plist Preprocessor Prefix File and edit the path for NYUAD Campusmap-Prefix.pch.

# Warnings
Depening on the XCode version, a number of Deprecation Warning may appear, targeting the video controller. These are to be ignored.

# Further Work
The app is to be further developped. Future features include:
1. A table view controller for the employees in each building
2. An employees database, formatted in a .json file that could be accessed by the EmployeeStore.m class.

# How to run the project in MacOS
1. Download or clone all the files
2. Open NYUAD Campus copy.xcodeproj file in Xcode

For more details, check out the report and the screen video.
