@echo off
title Minecraft Multiplayer Fix
color 0A

echo ==========================================
echo    Minecraft Bedrock - Multiplayer Fix
echo ==========================================
echo.

echo [1/3] Closing Minecraft Bedrock...
taskkill /F /IM Minecraft.Windows.exe >nul 2>&1
if %errorlevel%==0 (
    echo       Minecraft closed successfully.
) else (
    echo       Minecraft was not running.
)
echo.

echo [2/3] Closing Xbox Game Services...
taskkill /F /IM gamingservices.exe >nul 2>&1
taskkill /F /IM gamingservicesnet.exe >nul 2>&1
net stop GamingServices >nul 2>&1
net stop GamingServicesNet >nul 2>&1
echo       Xbox services closed.
echo.

echo [3/3] Waiting 3 seconds and reopening Minecraft...
timeout /t 3 /nobreak >nul

echo       Restarting Xbox services...
net start GamingServices >nul 2>&1
net start GamingServicesNet >nul 2>&1
timeout /t 2 /nobreak >nul

echo       Opening Minecraft...
start minecraft:
echo.

echo ==========================================
echo    Done! Minecraft is opening.
echo    Have fun!
echo ==========================================
echo.
pause
