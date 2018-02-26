# Automatic-SteamVR-Boot
Automatically starts Steam in offline/online mode based on network status then starts Steam vrmonitor.exe.

# Instructions
1. Clone this repo
2. Navigate to your steam/config folder.
3. Rename "loginuser.vdf" to "loginuser - online.vdf" (spaces and cap sensitive)
4. Copy in "loginuser.vdf" from the cloned repo to the same steam/config directory. 
5. Drag the .bat file from the clone repo into your windows start up folder.
6. Start up folder can be found using Winkey + R then typing "shell:Startup" then searching.

# How it works
* The replacement config makes the default start up behaviour of steam prefer online and skip the confirmation check to start steam offline. 
* At start up the .bat file pings the ip 8.8.8.8, if there is a response it swaps out the loginuser.vdf with "loginuser - online.vdf" by renaming. 
* After renaming it starts up steam and vrmonitor. **You may need to modify path of the start commands in the .bat file if your path to steam is different**. 
* After waiting for 20 seconds the configs are swapped back to their original names before the script was ran. 
