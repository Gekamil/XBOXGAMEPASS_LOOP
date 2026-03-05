@echo off
title INSTALADOR TOTAL - XBOX AUTO BOT
color 0B

:: Peticion de administrador indestructible (VBScript)
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando permisos de administrador...
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /b
)

:: Forzar al CMD a trabajar en la carpeta correcta
cd /d "%~dp0"

echo =======================================================
echo   PREPARANDO ENTORNO Y LIBRERIAS (INCLUYENDO TELEGRAM)
echo =======================================================
echo.
echo [1/3] Instalando librerias base y Telegram API...
call npm install node-telegram-bot-api
call npm install
echo.
echo [2/3] Descargando motor de navegacion fantasma...
call npx patchright install chromium
echo.
echo [3/3] Configurando energia de Windows para Wake-On-LAN...
powercfg /SETACVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 1
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v DevicePasswordLessBuildVersion /t REG_DWORD /d 0 /f >nul 2>&1
powercfg /SETACVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT SUB_NONE CONSOLELOCK 0
echo.
echo ✅ INSTALACION COMPLETADA CON EXITO.
pause