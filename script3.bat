@echo off
setlocal
set targetDir=%1
set targetDate=%2

if "%targetDir%"=="-h" (
    echo Usage: script3.bat [target directory] [target date]
    echo This script changes the creation time of all files in the target directory to the target date or '2021-01-01 11:11:11' if no target date is specified.
    exit /b 0
)

if not defined targetDir (
    echo No target directory specified.
    exit /b 1
)

if not defined targetDate (
    set targetDate=2021-01-01 11:11:11
)

powershell -Command "& {Get-ChildItem '%targetDir%' -Recurse ^| ForEach-Object { $_.CreationTime = '%targetDate%'}}"

if errorlevel 1 (
    echo Failed to change creation time of files in %targetDir%.
    exit /b 2
)

endlocal
exit /b 0