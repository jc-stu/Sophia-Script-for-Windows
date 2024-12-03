@echo off

::
:: Check HASH
:: Remove Edge
:: Remove Extras
:: Remove APPX
::
::

net session >nul 2>&1 || (echo. & echo Run Script As Admin & echo. & pause & exit)
title Edge Remover - 10/31/2024
set "expected=4963532e63884a66ecee0386475ee423ae7f7af8a6c6d160cf1237d085adf05e"

:# Check
if exist "%~dp0setup.exe" (
    powershell -Command "$hash = (Get-FileHash '%~dp0setup.exe' -Algorithm SHA256).Hash.ToLower(); if ($hash -eq '%expected%') { exit 0 } else { exit 1 }"
    if %errorlevel% equ 1 (
        echo File hash does not match the expected value. & echo & pause & exit
    ) else (
        set SRC=%~dp0setup.exe
    )
) else (
    set "DL=1"
)

echo.

:# Edge
echo - Removing Edge
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\" (
for /f "delims=" %%a in ('dir /b "C:\Program Files (x86)\Microsoft\Edge\Application\"') do (
start /w "" "%SRC%" --uninstall --system-level --force-uninstall --delete-profile))

:# WebView
echo - Removing WebView
if exist "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\" (
for /f "delims=" %%a in ('dir /b "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\"') do (
start /w "" "%SRC%" --uninstall --msedgewebview --system-level --force-uninstall --delete-profile))
::Delete empty folders
for /f "delims=" %%d in ('dir /ad /b /s "C:\Program Files (x86)\Microsoft\EdgeWebView" 2^>nul ^| sort /r') do rd "%%d" 2>nul

:# Additional Files
echo - Removing Additional Junk

:: Shortcuts and user profiles
for /f "delims=" %%a in ('dir /b "C:\Users"') do (
del /S /Q "C:\Users\%%a\Desktop\edge.lnk" >nul 2>&1
del /S /Q "C:\Users\%%a\Desktop\Microsoft Edge.lnk" >nul 2>&1
rmdir /q /s "C:\Users\%%a\AppData\Local\Microsoft\Edge" > NUL 2>&1
rmdir /q /s "C:\Users\%%a\AppData\Local\Microsoft\EdgeWebView" > NUL 2>&1)

:: Folders
rmdir /q /s "C:\ProgramData\Microsoft\EdgeUpdate" > NUL 2>&1
rmdir /q /s "C:\Program Files (x86)\Microsoft\Temp" > NUL 2>&1

:: Files
del /S /Q "C:\Program Files (x86)\Microsoft\Edge\Edge.dat" > NUL 2>&1
del /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" > NUL 2>&1

:: Registry
reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{9459C573-B17A-45AE-9F64-1857B5D58CEE}\StubPath" /f >nul 2>&1
if not exist "C:\Program Files (x86)\Microsoft\Edge\Application\pwahelper.exe" (
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Edge" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msedge.exe" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeUpdate.exe" /f >nul 2>&1)

:: Tasks - Name
for /f "skip=1 tokens=1 delims=," %%a in ('schtasks /query /fo csv') do (
for %%b in (%%a) do (
if "%%b"=="MicrosoftEdge" schtasks /delete /tn "%%~a" /f >nul 2>&1))

:: Tasks - Files
for /r "C:\Windows\System32\Tasks" %%f in (*MicrosoftEdge*) do del "%%f" > NUL 2>&1

:: Update Services
set "service_names=edgeupdate edgeupdatem"
for %%n in (%service_names%) do (
 sc delete %%n >nul 2>&1
 reg delete "HKLM\SYSTEM\CurrentControlSet\Services\%%n" /f >nul 2>&1
)

:# APPX
echo - Removing APPX
setlocal enabledelayedexpansion
for /f "delims=" %%a in ('powershell "(New-Object System.Security.Principal.NTAccount($env:USERNAME)).Translate([System.Security.Principal.SecurityIdentifier]).Value"') do set "USER_SID=%%a"
for /f "delims=" %%a in ('powershell -NoProfile -Command "Get-AppxPackage -AllUsers | Where-Object { $_.PackageFullName -like '*microsoftedge*' } | Select-Object -ExpandProperty PackageFullName"') do (
    if not "%%a"=="" (
        set "APP=%%a"
        echo !APP! | findstr /i "MicrosoftEdgeDevTools" >nul
        if errorlevel 1 (
            reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\EndOfLife\!USER_SID!\!APP!" /f >nul 2>&1
            reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\EndOfLife\S-1-5-18\!APP!" /f >nul 2>&1
            reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\!APP!" /f >nul 2>&1
            powershell -Command "Remove-AppxPackage -Package '!APP!'" 2>nul
            powershell -Command "Remove-AppxPackage -Package '!APP!' -AllUsers" 2>nul
        ) else (
            echo Skip !APP!
        )
    )
)
