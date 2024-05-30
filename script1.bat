@echo off
setlocal
set targetDir=%1

if "%targetDir%"=="-h" (
    echo Usage: script1.bat [target directory]
    echo This script changes the current directory to the target directory and copies a help file from a non-hidden folder to a hidden folder.
    exit /b 0
)

if not defined targetDir (
    echo No target directory specified.
    exit /b 1
)

cd %targetDir%

if errorlevel 1 (
    echo Failed to change directory to %targetDir%.
    exit /b 2
)

xcopy /? > "not_hidden_folder\copyhelp.txt"
xcopy "not_hidden_folder\copyhelp.txt" "hidden_folder\copied_copyhelp.txt"

if errorlevel 1 (
    echo Failed to copy files.
    exit /b 3
)

endlocal
exit /b 0


laboratory\group\Voitenko_Evgen\batch