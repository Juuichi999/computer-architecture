@echo off
setlocal
set targetDir=%1

if "%targetDir%"=="-h" (
    echo Usage: script4.bat [target directory]
    echo This script creates a non-hidden and a hidden folder in the target directory.
    exit /b 0
)

if not defined targetDir (
    echo No target directory specified.
    exit /b 1
)

mkdir %targetDir%

cd %targetDir%

if errorlevel 1 (
    echo Failed to change directory to %targetDir%.
    exit /b 2
)

mkdir not_hidden_folder
mkdir hidden_folder

attrib +h hidden_folder

if errorlevel 1 (
    echo Failed to set hidden attribute to hidden_folder.
    exit /b 3
)

endlocal
exit /b 0