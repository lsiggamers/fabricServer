@echo off

if "%~1"=="" (
    echo Usage: %~nx0 destination-folder
    exit /b 1
)

set DEST=%~1

if not exist "%DEST%" (
    mkdir "%DEST%"
)

move "*.jar" "%DEST%" >nul

echo All .jar files moved to: %DEST%