@echo off
setlocal EnableDelayedExpansion

echo Please enter a directory path:
set /p directory=

if "%directory%"=="" (
    echo No directory path specified.
    set errorlevel=1
    goto end
)

set totalSize=0

if not exist "%directory%" (
    echo Directory "%directory%" does not exist.
    set errorlevel=1
    goto end
)

for /r "%directory%" %%f in (*) do (
    set "fileSize=%%~zf"
    set /a totalSize+=fileSize
)

echo Total size of files in directory "%directory%": %totalSize% bytes
set errorlevel=0

:end
if %errorlevel%==0 (
    echo Program successfully completed with code 0
) else (
    echo Program completed with code 1
)

pause
exit /b %errorlevel%
