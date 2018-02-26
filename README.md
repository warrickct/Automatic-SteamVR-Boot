# Automatic-SteamVR-Boot
Automatically starts Steam in offline/online mode based on network status then starts Steam vrmonitor.exe. Initially created for the HP Z Backpack PC to omit some occasional set up steps requiring keyboard/mouse/monitor but should work with any steam VR hardware.

## Set Up Instructions
1. Clone this repo
2. Navigate to your steam/config folder.
3. Copy in "loginuser - offline.vdf" from the cloned repo to the same steam/config directory. 
4. Drag the .bat file from the clone repo into your windows start up folder.
5. Start up folder can be found using Winkey + R then typing "shell:Startup" then searching.
6. Start up steam while connected and in Steam>Settings>Account make sure that it is set to remember credentials or you won't be able to log in. 

## How it works
* The replacement config contains settings to log into steam offline and without confirmation check therefore not requiring keyboard or mouse input. 
* At start up the .bat file pings the ip 8.8.8.8, if there is a response the config file "loginuser.vdf" is replaced with "loginuser - offline.vdf" by renaming. 
* After renaming it starts up steam and vrmonitor. **You may need to modify path of the start commands in the .bat file if your path to steam is different**. 
* After waiting for 20 seconds the configs are swapped back to their original names before the script was ran. 
