@echo off
:: 1. Comprobar si tenemos permisos de Administrador
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Solicitando permisos de Administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 2. Entrar a la carpeta donde esta este archivo automaticamente
cd /d "%~dp0"

:: 3. Darle estilo a la consola (Letras verdes como un hacker)
title Xbox Game Pass Bot
color 0A

:: 4. Ejecutar el menu interactivo de tu bot
npm run audit

:: 5. Pausar si se cierra para que puedas leer los mensajes
pause