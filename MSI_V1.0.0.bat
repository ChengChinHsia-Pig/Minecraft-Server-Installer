@echo off
title Minecraft Server Installer
CLS
COLOR 0a
MODE con: COLS=77 LINES=36
echo Which server type do you want?
ECHO.
ECHO =============================================================================
ECHO                                Server Type                           
ECHO    #+++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++++++#
ECHO    # 01 Spigot/Bukkit                                                    #
ECHO    # 02 BunngeCord(In Dev)                                               #
ECHO    # 03 Vanllia(In Dev)                                                  #
ECHO    # 04 Fabric(In Dev)                                                   #
ECHO    #+++++++++++++++++++++++++++++++++#+++++++++++++++++++++++++++++++++++#
ECHO                             BY:ChengChinHsia
ECHO =============================================================================
set /p "v=>"
if %v%==01 goto spigot
if %v%==02 goto bunngecord
if %v%==03 goto fail
if %v%==04 goto fabric
:spigot
echo Please enter your server version.
set/p "a=>"
echo Please enter the max memory of you server you want(Megabyte).
set/p "b=>"
md Server
cd ./Server
powershell (new-object System.Net.WebClient).DownloadFile('https://download.getbukkit.org/spigot/spigot-%a%.jar','spigot-%a%.jar')
goto end
:end
ren *.jar server.jar 
echo java -Xmx%b%M -Xms128M -jar server.jar nogui> C:\Users\legoh\Desktop\Server\StartServer.bat
echo eula=True> C:\Users\legoh\Desktop\Server\eula.txt
:bye
echo Finished!
pause
exit
:fail
echo Install failed
pause
exit