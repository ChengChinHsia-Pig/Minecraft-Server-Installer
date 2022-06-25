@echo off
title Minecraft Server Installer Basic Code
CLS
COLOR 0a
MODE con: COLS=77 LINES=36
::Ask user what server type
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
::Check User's Answer
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
powershell (new-object System.Net.WebClient).DownloadFile('www.yourlink.link','your.filename')
goto end
:end
::rename the file to server.jar
ren *.jar server.jar 
::Add a batch file to run minecraft server
echo java -Xmx%b%M -Xms128M -jar server.jar nogui> C:\Users\legoh\Desktop\Server\StartServer.bat
::Add eula file
echo eula=True> C:\Users\legoh\Desktop\Server\eula.txt
:bye
echo Finished!
pause
exit
:fail
echo Install failed
pause
exit