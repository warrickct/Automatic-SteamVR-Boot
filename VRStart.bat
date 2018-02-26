echo checking internet connection
ping 8.8.8.8 -n 1 -w 1000
cls
if errorlevel 1 (
	set internet=false
) else (
	set internet=true
)

echo internet connected: %internet%

cd C:\"Program Files (x86)\Steam\config"
if %internet%==false (
	ren "loginusers.vdf" "loginusers - online.vdf"
	ren "loginusers - offline.vdf" "loginusers.vdf"
)

start C:\"Program Files (x86)\Steam\Steam.exe"

timeout /t 20 /nobreak

if %internet%==false (
	ren "loginusers.vdf" "loginusers - offline.vdf"
	ren "loginusers - online.vdf" "loginusers.vdf"
)

REM start C:\"Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrstartup.exe"
start C:"\Program Files (x86)\Steam\steamapps\common\SteamVR\bin\win64\vrmonitor.exe"

pause
